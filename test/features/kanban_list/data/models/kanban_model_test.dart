import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/core/database/drift/drift_database_impl.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tKanbanModel = KanbanModel(
    orderId: 0,
    createAt: moonLanding,
    key: 'MakeKanbanGreatAgain',
    name: 'Make Kanban Challenge',
    description: 'Build simple TODO app, First',
    status: KanbanStatus.todo,
    spendedTimeSeconds: 0,
  );

  test('should KanbanModel be a subclass of Kanban', () {
    // assert.
    expect(tKanbanModel, isA<Kanban>());
  });

  test(
    'should return a valid model when JSON decode is successful',
    () async {
      // arrange.
      final jsonMap =
          json.decode(fixture('kanban.json')) as Map<String, dynamic>;
      // act.
      final result = KanbanModel.fromJson(jsonMap);
      // assert.
      expect(result, equals(tKanbanModel));
    },
  );

  test(
    'should return a JSON map containing the proper data',
    () async {
      // act.
      final result = tKanbanModel.toJson();
      // assert.
      final expectedMap = {
        "orderId": 0,
        "spendedTimeSeconds": 0,
        "createAt": "1969-07-20T20:17:00.000Z",
        "dueDate": null,
        "finishedAt": null,
        "name": "Make Kanban Challenge",
        "description": "Build simple TODO app, First",
        "key": "MakeKanbanGreatAgain",
        "status": "todo",
      };
      expect(result, expectedMap);
    },
  );
}
