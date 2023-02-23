import 'package:equatable/equatable.dart';

class ExportKanban extends Equatable {
  final String orderId;
  final String name;
  final String description;
  final String status;
  final String createAt;
  final String dueDate;
  final String finishedAt;
  final String timeSpend;

  const ExportKanban({
    required this.orderId,
    required this.name,
    required this.description,
    required this.status,
    required this.createAt,
    required this.dueDate,
    required this.finishedAt,
    required this.timeSpend,
  });

  @override
  List<Object?> get props => [
        orderId,
        name,
        description,
        status,
        createAt,
        dueDate,
        finishedAt,
        timeSpend,
      ];
}
