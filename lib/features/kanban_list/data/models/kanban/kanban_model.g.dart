// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kanban_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KanbanModel _$KanbanModelFromJson(Map<String, dynamic> json) => KanbanModel(
      createAt: DateTime.parse(json['createAt'] as String),
      status: $enumDecode(_$KanbanStatusEnumMap, json['status']),
      key: json['key'] as String,
      name: json['name'] as String,
      order: json['order'] as int,
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$KanbanModelToJson(KanbanModel instance) =>
    <String, dynamic>{
      'createAt': instance.createAt.toIso8601String(),
      'dueDate': instance.dueDate?.toIso8601String(),
      'description': instance.description,
      'order': instance.order,
      'name': instance.name,
      'key': instance.key,
      'status': _$KanbanStatusEnumMap[instance.status]!,
    };

const _$KanbanStatusEnumMap = {
  KanbanStatus.todo: 'todo',
  KanbanStatus.inProgress: 'inProgress',
  KanbanStatus.review: 'review',
  KanbanStatus.done: 'done',
};
