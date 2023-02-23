import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/core/database/kanban_database.dart';
import 'package:home_challenge_kanban/core/error/exceptions.dart';
import 'package:home_challenge_kanban/features/export_kanban/data/export_service/export_service.dart';
import 'package:home_challenge_kanban/features/export_kanban/data/mapping/kanban_to_export_mapper.dart';
import 'package:home_challenge_kanban/features/export_kanban/domain/usecases/export_single_kanban.dart';
import 'package:home_challenge_kanban/features/export_kanban/domain/usecases/export_multiple_kanbans.dart';
import 'package:home_challenge_kanban/features/export_kanban/data/datasources/export_kanban_local_datasource.dart';

class ExportKanbanLocalDatasourceImpl implements ExportKanbanLocalDatasource {
  final ExportService exportService;
  final KanbanDatabase database;

  ExportKanbanLocalDatasourceImpl({
    required this.exportService,
    required this.database,
  });

  @override
  Future<void> exportSingleKabnan(ExportSingleKanbanParams params) async {
    try {
      final export = await database.readByUniqueKey(params.kanbanKey);

      await exportService.exportSingleKanban(export.toExportModel());
    } on LocalDatabaseException {
      rethrow;
    } on LocalExportServiceException {
      rethrow;
    }
  }

  @override
  Future<void> exportMultipleKabnans(ExportMultipleKanbansParams params) async {
    try {
      final kanbanModels = await database.readAllKanbans();

      final sortedModels = kanbanModels.unlock
          .where((obj) => params.requestKanbans.contains(obj.status))
          .toList()
        ..sort((obj1, obj2) {
          final last = obj1.status.compareObjectTo(obj2.status);
          if (last == 0) return obj1.status.compareObjectTo(obj2.status);

          return last;
        })
        ..map((obj) => obj.toExportModel());

      final toExport = sortedModels.map((obj) => obj.toExportModel()).toIList();

      await exportService.exportMultipleKanbans(toExport);
    } on LocalDatabaseException {
      rethrow;
    } on LocalExportServiceException {
      rethrow;
    }
  }
}
