part of 'kanban_history_bloc.dart';

abstract class KanbanHistoryState extends Equatable {
  const KanbanHistoryState();  

  @override
  List<Object> get props => [];
}
class KanbanHistoryInitial extends KanbanHistoryState {}
