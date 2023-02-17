import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
// Just bug of analyzer. Freezed annotation added to DEV dependency.
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kanban_model.g.dart';

@JsonSerializable(createToJson: true)
class KanbanModel extends Kanban {
  const KanbanModel({
    required String key,
    required String name,
    String? description,
  }) : super(key: key, name: name, description: description);

  factory KanbanModel.fromJson(Map<String, dynamic> json) =>
      _$KanbanModelFromJson(json);

  Map<String, dynamic> toJson() => _$KanbanModelToJson(this);
}
