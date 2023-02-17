import 'package:equatable/equatable.dart';

enum KanbanStatus { todo, inProgress, review, done, reOpened }

class Kanban extends Equatable {
  final String name;
  final String? description;
  final String key;

  const Kanban({
    required this.name,
    required this.key,
    this.description,
  });

  @override
  List<Object?> get props => [name, description, key];

  @override
  bool? get stringify => true;
}
