import 'dart:io';

import 'package:csv/csv.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/features/export_kanban/data/export_service/export_service.dart';
import 'package:home_challenge_kanban/features/export_kanban/domain/entities/export_kanban.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

class CsvExportServiceImpl implements ExportService {
  @override
  Future<void> exportSingleKanban(ExportKanban kanban) async {
    final exportKanban = _prepareToCsvConvert([_csvHeader, kanban]);

    final csv = const ListToCsvConverter().convert(exportKanban);

    _writeCsv(csv, "no_${kanban.orderId}_${kanban.name}");
  }

  @override
  Future<void> exportMultipleKanbans(IList<ExportKanban> kanbans) async {
    final exportKanbans = _prepareToCsvConvert([_csvHeader, ...kanbans.unlock]);

    final csv = const ListToCsvConverter().convert(exportKanbans);

    _writeCsv(csv, 'kanbans-group');
  }

  Future<void> _writeCsv(String csv, [String? fileName]) async {
    final externalStorage = await getExternalStorageDirectory();

    File(p.join(externalStorage!.path, 'kanban-$fileName.csv'))
        .writeAsString(csv);
  }

  static const _csvHeader = ExportKanban(
    orderId: 'No.',
    name: 'Kanban Name',
    description: 'Description',
    status: 'Progress Status',
    createAt: 'Created at Date',
    dueDate: 'Expired at Date',
    finishedAt: 'Finished at Date',
    timeSpend: 'All time spend - HH:MM:SS',
  );

  List<List<String>> _prepareToCsvConvert(List<ExportKanban> kanbans) {
    final exportRows = <List<String>>[];

    for (final exportKanban in kanbans) {
      exportRows.add([
        exportKanban.orderId,
        exportKanban.name,
        exportKanban.description,
        exportKanban.status,
        exportKanban.createAt,
        exportKanban.dueDate,
        exportKanban.finishedAt,
        exportKanban.timeSpend,
      ]);
    }

    return exportRows;
  }
}
