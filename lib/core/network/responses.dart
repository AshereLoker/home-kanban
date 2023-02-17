import 'package:equatable/equatable.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'responses.g.dart';

abstract class Response extends Equatable {
  final int code;
  final String? message;

  const Response(this.code, this.message);
}

@JsonSerializable()
class NetworkResponse extends Response {
  const NetworkResponse(super.code, super.message);

  @override
  List<Object?> get props => [code, message];

  factory NetworkResponse.fromJson(Map<String, dynamic> json) =>
      _$NetworkResponseFromJson(json);
}
