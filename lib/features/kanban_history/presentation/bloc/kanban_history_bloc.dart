import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'kanban_history_event.dart';
part 'kanban_history_state.dart';

class KanbanHistoryBloc extends Bloc<KanbanHistoryEvent, KanbanHistoryState> {
  KanbanHistoryBloc() : super(KanbanHistoryInitial()) {
    on<KanbanHistoryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
