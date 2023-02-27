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
      orderId: json['orderId'] as int,
      spendedTimeSeconds: json['spendedTimeSeconds'] as int,
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      description: json['description'] as String?,
      finishedAt: json['finishedAt'] == null
          ? null
          : DateTime.parse(json['finishedAt'] as String),
    );

Map<String, dynamic> _$KanbanModelToJson(KanbanModel instance) =>
    <String, dynamic>{
      'createAt': instance.createAt.toIso8601String(),
      'dueDate': instance.dueDate?.toIso8601String(),
      'description': instance.description,
      'finishedAt': instance.finishedAt?.toIso8601String(),
      'orderId': instance.orderId,
      'name': instance.name,
      'key': instance.key,
      'status': _$KanbanStatusEnumMap[instance.status]!,
      'spendedTimeSeconds': instance.spendedTimeSeconds,
    };

const _$KanbanStatusEnumMap = {
  KanbanStatus.todo: 'todo',
  KanbanStatus.inProgress: 'inProgress',
  KanbanStatus.review: 'review',
  KanbanStatus.done: 'done',
};
