import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_challenge_kanban/features/export_kanban/domain/entities/export_kanban.dart';

part 'export_kanban_model.g.dart';

@JsonSerializable(createToJson: true)
class ExportKanbanModel extends ExportKanban {
  const ExportKanbanModel({
    required String orderId,
    required String name,
    required String description,
    required String status,
    required String createAt,
    required String dueDate,
    required String finishedAt,
    required String timeSpend,
  }) : super(
          orderId: orderId,
          name: name,
          description: description,
          status: status,
          createAt: createAt,
          dueDate: dueDate,
          finishedAt: finishedAt,
          timeSpend: timeSpend,
        );

  factory ExportKanbanModel.fromJson(Map<String, dynamic> json) =>
      _$ExportKanbanModelFromJson(json);

  Map<String, dynamic> toJson() => _$ExportKanbanModelToJson(this);
}
