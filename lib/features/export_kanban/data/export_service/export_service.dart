import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/features/export_kanban/domain/entities/export_kanban.dart';

abstract class ExportService {
  Future<void> exportSingleKanban(ExportKanban kanban);
  Future<void> exportMultipleKanbans(IList<ExportKanban> kanbans);
}
