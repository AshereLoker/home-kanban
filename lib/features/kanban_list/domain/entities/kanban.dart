import 'package:equatable/equatable.dart';

enum KanbanStatus { todo, inProgress, review, done }

class Kanban extends Equatable {
  final DateTime createAt;
  final DateTime? dueDate;
  final String? description;
  final DateTime? finishedAt;
  final int orderId;
  final String name;
  final String key;
  final KanbanStatus status;
  final int spendedTimeSeconds;

  const Kanban({
    required this.createAt,
    required this.name,
    required this.key,
    required this.status,
    required this.orderId,
    this.description,
    this.dueDate,
    this.finishedAt,
    this.spendedTimeSeconds = 0,
  });

  Kanban copyWith({
    DateTime? createAt,
    DateTime? dueDate,
    DateTime? finishedAt,
    String? description,
    int? spendedTimeSeconds,
    int? orderId,
    String? name,
    String? key,
    KanbanStatus? status,
  }) =>
      Kanban(
        createAt: createAt ?? this.createAt,
        dueDate: dueDate ?? this.dueDate,
        description: description ?? this.description,
        finishedAt: finishedAt ?? this.finishedAt,
        name: name ?? this.name,
        orderId: orderId ?? this.orderId,
        key: key ?? this.key,
        status: status ?? this.status,
        spendedTimeSeconds: spendedTimeSeconds ?? this.spendedTimeSeconds,
      );

  @override
  List<Object?> get props => [
        createAt,
        description,
        dueDate,
        name,
        orderId,
        key,
        status,
        spendedTimeSeconds,
      ];

  @override
  bool? get stringify => true;
}
