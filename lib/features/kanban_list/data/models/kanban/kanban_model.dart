import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
// Just bug of analyzer. Freezed annotation added to Dev Dependency.
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kanban_model.g.dart';

@JsonSerializable(createToJson: true)
class KanbanModel extends Kanban {
  const KanbanModel({
    required DateTime createAt,
    required KanbanStatus status,
    required String key,
    required String name,
    required int orderId,
    required int spendedTimeSeconds,
    DateTime? dueDate,
    String? description,
    DateTime? finishedAt,
  }) : super(
          createAt: createAt,
          dueDate: dueDate,
          description: description,
          finishedAt: finishedAt,
          name: name,
          orderId: orderId,
          key: key,
          spendedTimeSeconds: spendedTimeSeconds,
          status: status,
        );

  factory KanbanModel.fromJson(Map<String, dynamic> json) =>
      _$KanbanModelFromJson(json);

  Map<String, dynamic> toJson() => _$KanbanModelToJson(this);
}
