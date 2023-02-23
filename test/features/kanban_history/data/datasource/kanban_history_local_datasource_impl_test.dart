import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/core/error/exceptions.dart';
import 'package:home_challenge_kanban/features/kanban_history/data/datasources/kanban_history_local_datasource.dart';
import 'package:mockito/mockito.dart';

import '../../../../core/database/mock/mock_kanban_database.mocks.dart';
import '../../test_kanban_history_constants.dart';

void main() {
  late KanbanHistoryLocalDatasource datasource;
  late MockKanbanDatabase mockDatabase;

  setUp(() {
    mockDatabase = MockKanbanDatabase();
    datasource = KanbanHistoryLocalDatasourceImpl(database: mockDatabase);
  });

  group('readAllFinished', () {
    test(
      'should retun IList<KanbanModel> from database when is successfuly readed in database',
      () async {
        // arrange.
        when(mockDatabase.readAllKanbans())
            .thenAnswer((_) async => tKanbanModelHistoryFullfilList);
        // act.
        final result = await datasource.readAllFinished();
        // assert.
        expect(result, equals(tKanbanModelHistoryFullfilList));
        verify(mockDatabase.readAllKanbans());
        verifyNoMoreInteractions(mockDatabase);
      },
    );

    test(
      'should throw an Exception from database when readed in database is unsuccessful',
      () async {
        // arrange.
        when(mockDatabase.readAllKanbans())
            .thenThrow(LocalKanbanDatasourceException());
        // act.
        final call = datasource.readAllFinished;
        // assert.
        expect(
          () => call(),
          throwsA(const TypeMatcher<LocalKanbanDatasourceException>()),
        );
        verify(mockDatabase.readAllKanbans());
        verifyNoMoreInteractions(mockDatabase);
      },
    );
  });

  group('readTimeRangeFinisher', () {
    test(
      'should retun IList<KanbanModel> from database when is successfuly readed in database',
      () async {
        // arrange.
        when(mockDatabase.readAllKanbans())
            .thenAnswer((_) async => tKanbanModelHistoryFullfilList);
        // act.
        final result = await datasource
            .readTimeRangeFinished(tKanbanHistoryTimeRangeParams);
        // assert.
        expect(result, equals(tKanbanModelHistoryFullfilList));
        verify(mockDatabase.readAllKanbans());
        verifyNoMoreInteractions(mockDatabase);
      },
    );

    test(
      'should throw an Exception from database when readed in database is unsuccessful',
      () async {
        // arrange.
        when(mockDatabase.readAllKanbans())
            .thenThrow(LocalKanbanDatasourceException());
        // act.
        final call = datasource.readTimeRangeFinished;
        // assert.
        expect(
          () => call(tKanbanHistoryTimeRangeParams),
          throwsA(const TypeMatcher<LocalKanbanDatasourceException>()),
        );
        verify(mockDatabase.readAllKanbans());
        verifyNoMoreInteractions(mockDatabase);
      },
    );
  });
}
