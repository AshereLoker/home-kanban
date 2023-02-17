// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkResponse _$NetworkResponseFromJson(Map<String, dynamic> json) =>
    NetworkResponse(
      json['code'] as int,
      json['message'] as String?,
    );

Map<String, dynamic> _$NetworkResponseToJson(NetworkResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
