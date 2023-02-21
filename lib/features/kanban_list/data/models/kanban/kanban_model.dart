import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
// Just bug of analyzer. Freezed annotation added to DEV dependency.
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
    required int order,
    DateTime? dueDate,
    String? description,
  }) : super(
          createAt: createAt,
          dueDate: dueDate,
          name: name,
          order: order,
          key: key,
          status: status,
          description: description,
        );


  factory KanbanModel.fromJson(Map<String, dynamic> json) =>
      _$KanbanModelFromJson(json);

  Map<String, dynamic> toJson() => _$KanbanModelToJson(this);
}
