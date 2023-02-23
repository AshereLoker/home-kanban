import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final List<dynamic> properties;

  const Failure([this.properties = const <dynamic>[]]);

  @override
  List<Object?> get props => [properties];
}

// General failures.
class LocalKanbanDatasourceFailure extends Failure {}

class LocalTimerFailure extends Failure {}

class LocalExportServiceFailure extends Failure {}
