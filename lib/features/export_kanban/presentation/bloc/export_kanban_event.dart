part of 'export_kanban_bloc.dart';

@freezed
class ExportKanbanEvent with _$ExportKanbanEvent {
  const factory ExportKanbanEvent.exportKanban(String kanbanKey) = _ExportKanban;
  const factory ExportKanbanEvent.exportGroup(IList<KanbanStatus> gropus) =
      _ExportGroup;
}
