import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/core/network/responses.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const tKanbanModel = KanbanModel(
    key: 'MakeKanbanGreatAgain',
    name: 'Make Kanban Challenge',
    description: 'Build simple TODO app, First',
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

    test(
      'should return a code 200 response when Kanban was successful deleted',
      () async {
        // arrange.
        final jsonMap = json.decode(fixture('success_response.json'))
            as Map<String, dynamic>;
        // act.
        final result = NetworkResponse.fromJson(jsonMap);
        // assert.
        expect(result.code, equals(200));
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
        "name": "Make Kanban Challenge",
        "description": "Build simple TODO app, First",
        "key": "MakeKanbanGreatAgain",
      };
      expect(result, expectedMap);
    },
  );
}
