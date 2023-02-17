import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/core/error/exceptions.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/datasources/crud_kanban_local_datasource.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:mockito/mockito.dart';

import '../database/mock_kanban_database.mocks.dart';

void main() {
  late CrudKanbanLocalDataSourceImpl dataSource;
  late MockKanbanDatabase mockDatabase;

  setUp(() {
    mockDatabase = MockKanbanDatabase();
    dataSource = CrudKanbanLocalDataSourceImpl(database: mockDatabase);
  });

  const tSuccessCode = 200;
  const tName = 'test';
  const tDescr = 'test';
  const tKey = 'tKey';
  const tKanbanModel = KanbanModel(
    name: tName,
    description: tDescr,
    key: tKey,
  );

  group('createKanban', () {
    test(
      'should return kanban from database when it successfuly created in database',
      () async {
        // arrange.
        when(mockDatabase.createKanban(any, any))
            .thenAnswer((_) async => tKanbanModel);
        // act.
        final result = await dataSource.createKanban(tName, tKey);
        // assert.
        expect(result, equals(tKanbanModel));
      },
    );

    test(
      'should throw an Expection when creating in database unsuccessful',
      () async {
        // arrange.
        when(mockDatabase.createKanban(any, any))
            .thenThrow(LocalDatabaseException());
        // act.
        final call = dataSource.createKanban;
        // assert.
        expect(
          () => call(tName, tDescr),
          throwsA(const TypeMatcher<LocalDatabaseException>()),
        );
      },
    );
  });

  group('deleteKanban', () {
    test(
      'should return code 200 from database when deleting in database is successful',
      () async {
        // arrange.
        when(mockDatabase.deleteKanban(any))
            .thenAnswer((_) async => tSuccessCode);
        // act.
        final result = await dataSource.deleteKanban(tKey);
        // assert.
        expect(result, tSuccessCode);
      },
    );

    test(
      'should throw an Expection when deleting in database is unsuccessful',
      () async {
        // arrange.
        when(mockDatabase.deleteKanban(any))
            .thenThrow(LocalDatabaseException());
        // act.
        final call = dataSource.deleteKanban;
        // assert.
        expect(
          () => call(tKey),
          throwsA(const TypeMatcher<LocalDatabaseException>()),
        );
      },
    );
  });

  group('readKanban', () {
    test(
      'should return kanban from database when read in local database is successful',
      () async {
        // arrange.
        when(mockDatabase.readKanbanByKey(any))
            .thenAnswer((_) async => tKanbanModel);
        // act.
        final result = await dataSource.readKanban(tKey);
        // assert.
        expect(result, equals(tKanbanModel));
      },
    );

    test(
      'should throw an Expection when read in local database is unsuccessful',
      () async {
        // arrange.
        when(mockDatabase.readKanbanByKey(any))
            .thenThrow(LocalDatabaseException());
        // act.
        final call = dataSource.readKanban;
        // assert.
        expect(
          () => call(tKey),
          throwsA(const TypeMatcher<LocalDatabaseException>()),
        );
      },
    );
  });

  group('updateKanban', () {
    test(
      'should return kanban from database when updating in database is successful',
      () async {
        // arrange.
        when(mockDatabase.updateKanban(any))
            .thenAnswer((_) async => tKanbanModel);
        // act.
        final result = await dataSource.updateKanban(tKanbanModel);
        // assert.
        expect(result, equals(tKanbanModel));
      },
    );

    test(
      'should throw an Expection when updating in database is unsuccessful',
      () async {
        // arrange.
        when(mockDatabase.updateKanban(any))
            .thenThrow(LocalDatabaseException());
        // act.
        final call = dataSource.updateKanban;
        // assert.
        expect(
          () => call(tKanbanModel),
          throwsA(const TypeMatcher<LocalDatabaseException>()),
        );
      },
    );
  });
}
