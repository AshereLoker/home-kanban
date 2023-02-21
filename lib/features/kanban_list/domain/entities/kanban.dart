import 'package:equatable/equatable.dart';

enum KanbanStatus { todo, inProgress, review, done }

class Kanban extends Equatable {
  final DateTime createAt;
  final DateTime? dueDate;
  final String? description;
  final int order;
  final String name;
  final String key;
  final KanbanStatus status;

  const Kanban({
    required this.createAt,
    required this.name,
    required this.key,
    required this.status,
    required this.order,
    this.description,
    this.dueDate,
  });

  Kanban copyWith({
    DateTime? createAt,
    DateTime? dueDate,
    String? description,
    int? order,
    String? name,
    String? key,
    KanbanStatus? status,
  }) =>
      Kanban(
        createAt: createAt ?? this.createAt,
        dueDate: dueDate ?? this.dueDate,
        description: description ?? this.description,
        name: name ?? this.name,
        key: key ?? this.key,
        status: status ?? this.status,
        order: order ?? this.order,
      );

  @override
  List<Object?> get props => [
        createAt,
        description,
        dueDate,
        name,
        order,
        key,
        status,
      ];

  @override
  bool? get stringify => true;
}
