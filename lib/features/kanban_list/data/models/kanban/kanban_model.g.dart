// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kanban_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KanbanModel _$KanbanModelFromJson(Map<String, dynamic> json) => KanbanModel(
      key: json['key'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$KanbanModelToJson(KanbanModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'key': instance.key,
    };
