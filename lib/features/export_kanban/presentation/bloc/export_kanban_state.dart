part of 'export_kanban_bloc.dart';

@freezed
class ExportKanbanState with _$ExportKanbanState {
  const factory ExportKanbanState.hasError({String? error}) = _HasError;
  const factory ExportKanbanState.noErrors() = _NoErrors;
}
