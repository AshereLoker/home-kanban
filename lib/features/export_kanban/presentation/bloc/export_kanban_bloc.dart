import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_challenge_kanban/features/export_kanban/domain/usecases/export_kanban_usecases.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';

part 'export_kanban_bloc.freezed.dart';
part 'export_kanban_event.dart';
part 'export_kanban_state.dart';

typedef _Emit = Emitter<ExportKanbanState>;

class ExportKanbanBloc extends Bloc<ExportKanbanEvent, ExportKanbanState> {
  final ExportSingleKanban exportSingleKanban;
  final ExportMultipleKanbans exportMultipleKanbans;
  ExportKanbanBloc({
    required this.exportSingleKanban,
    required this.exportMultipleKanbans,
  }) : super(const ExportKanbanState.noErrors()) {
    on<_ExportKanban>(_onExportKanban);
  }

  Future<void> _onExportKanban(_ExportKanban event, _Emit emit) async {
    await exportSingleKanban.call(
      ExportSingleKanbanParams(kanbanKey: event.kanbanKey),
    );
  }
}
