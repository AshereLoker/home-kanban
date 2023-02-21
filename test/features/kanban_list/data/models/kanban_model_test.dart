import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/database/drift_database_impl.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tKanbanModel = KanbanModel(
    order: 0,
    createAt: moonLanding,
    key: 'MakeKanbanGreatAgain',
    name: 'Make Kanban Challenge',
    description: 'Build simple TODO app, First',
    status: KanbanStatus.todo,
  );

  test('should KanbanModel be a subclass of Kanban', () {
    // assert.
    expect(tKanbanModel, isA<Kanban>());
  });

  group('fromJson', () {
    test(
      'should return a valid model then JSON is readed, created or updated successful',
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
  });

  test(
    'should return a JSON map containing the proper data',
    () async {
      // act.
      final result = tKanbanModel.toJson();
      // assert.
      final expectedMap = {
        "order": 0,
        "createAt": "1969-07-20T20:17:39.000",
        "dueDate": null,
        "name": "Make Kanban Challenge",
        "description": "Build simple TODO app, First",
        "key": "MakeKanbanGreatAgain",
        "status": "todo",
      };
      expect(result, expectedMap);
    },
  );
}
