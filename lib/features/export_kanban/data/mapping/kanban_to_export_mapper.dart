import 'package:home_challenge_kanban/core/utils/time_milliseconds_converter.dart';
import 'package:home_challenge_kanban/core/utils/ui_time_converter.dart';
import 'package:home_challenge_kanban/features/export_kanban/data/models/export_kanban_model.dart';

import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:intl/intl.dart';

extension KanbanExportMapper on KanbanModel {
  ExportKanbanModel toExportModel() => ExportKanbanModel(
        orderId: orderId.toString(),
        name: name,
        description: description ?? '-',
        status: status.name.toString(),
        createAt: DateFormat.yMd('en_US').format(createAt),
        dueDate:
            dueDate != null ? DateFormat.yMd('en_Us').format(dueDate!) : '-',
        finishedAt: finishedAt != null
            ? DateFormat.yMd('en_Us').add_jms().format(finishedAt!)
            : '-',
        timeSpend: spendedTimeSeconds != null
            ? UiTimeConverter.getDisplayTime(
                TimeMillisecondsConverter.getMilliseconsFromSeconds(
                  spendedTimeSeconds!,
                ),
              )
            : '-',
      );
}
