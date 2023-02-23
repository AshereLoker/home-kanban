import 'package:home_challenge_kanban/features/export_kanban/domain/usecases/export_kanban_usecases.dart';

abstract class ExportKanbanLocalDatasource {
  Future<void> exportSingleKabnan(ExportSingleKanbanParams params);
  Future<void> exportMultipleKabnans(ExportMultipleKanbansParams params);
}
