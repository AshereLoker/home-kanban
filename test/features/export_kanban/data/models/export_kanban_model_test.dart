import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/core/database/drift/drift_database_impl.dart';
import 'package:home_challenge_kanban/features/export_kanban/data/models/export_kanban_model.dart';
import 'package:home_challenge_kanban/features/export_kanban/domain/entities/export_kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/export_kanban/data/mapping/kanban_to_export_mapper.dart';

import '../../../../fixtures/fixture_reader.dart';
import '../../test_export_kanban_constants.dart';

void main() {
  test(
    'should ExportKanbanModel be a subclass of ExportModel',
    () async {
      // assert.
      expect(tExportKanbanModel, isA<ExportKanban>());
    },
  );

  test(
    'should return a valid model when JSON decode is succesful',
    () async {
      // arrange.
      final jsonMap =
          jsonDecode(fixture('export_kanban.json')) as Map<String, dynamic>;
      // act.
      final result = ExportKanbanModel.fromJson(jsonMap);
      // assert.
      expect(result, equals(tExportKanbanModel));
    },
  );

  test(
    'should retun a JSON map containing the proper data',
    () async {
      // act.
      final result = tExportKanbanModel.toJson();
      // assert.
      final expectedMap = {
        "orderId": "0",
        "name": "Moon landing",
        "description":
            "That's one small step for man, one giant leap for mankind. (c)",
        "status": "done",
        "createAt": "2/21/1969",
        "dueDate": "7/22/1969",
        "finishedAt": "7/20/1969 8:17:00 PM",
        "timeSpend": "195:18:00",
      };
      expect(result, expectedMap);
    },
  );

  test(
    'should return a valid ExportKanbanModel when KanbanModel convert is successful',
    () async {
      // arrange.
      final kanbanModel = KanbanModel(
        createAt: DateTime(1969, 2, 21),
        dueDate: DateTime(1969, 7, 22),
        finishedAt: moonLanding,
        status: KanbanStatus.done,
        // ((Days * HoursPerDay + Hours) * 60 + Minutes) * 60 + Secons
        spendedTimeSecons: ((8 * 24 + 3) * 60 + 18) * 60 + 3,
        key: tKey,
        name: 'Moon landing',
        description:
            "That's one small step for man, one giant leap for mankind. (c)",
        orderId: 0,
      );
      // act.
      final result = kanbanModel.toExportModel();
      // assert.
      expect(result, tExportKanbanModel);
    },
  );
}
