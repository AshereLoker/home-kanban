// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_kanban_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExportKanbanModel _$ExportKanbanModelFromJson(Map<String, dynamic> json) =>
    ExportKanbanModel(
      orderId: json['orderId'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      status: json['status'] as String,
      createAt: json['createAt'] as String,
      dueDate: json['dueDate'] as String,
      finishedAt: json['finishedAt'] as String,
      timeSpend: json['timeSpend'] as String,
    );

Map<String, dynamic> _$ExportKanbanModelToJson(ExportKanbanModel instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'name': instance.name,
      'description': instance.description,
      'status': instance.status,
      'createAt': instance.createAt,
      'dueDate': instance.dueDate,
      'finishedAt': instance.finishedAt,
      'timeSpend': instance.timeSpend,
    };
