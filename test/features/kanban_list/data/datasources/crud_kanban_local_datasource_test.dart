import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/core/error/exceptions.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/datasources/crud_kanban_local_datasource.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/datasources/crud_kanban_local_datasource_impl.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:mockito/mockito.dart';

import '../../../../core/database/mock/mock_kanban_database.mocks.dart';
import '../../kanban_test_constantst.dart';

void main() {
  late CrudKanbanLocalDatasource dataSource;
  late MockKanbanDatabase mockDatabase;

  setUp(() {
    mockDatabase = MockKanbanDatabase();
    dataSource = CrudKanbanLocalDatasourceImpl(localDatabase: mockDatabase);
  });

  group('createKanban', () {
    test(
      'should return List<Kanban> from database when it successfuly created in database',
      () async {
        // arrange.
        when(mockDatabase.createKanban(any))
            .thenAnswer((_) async => tKanbanModelFullfilList);
        // act.
        final result = await dataSource.createKanban(tCreateKanbanParams);
        // assert.
        expect(result, equals(tKanbanModelFullfilList));
        verify(mockDatabase.createKanban(tCreateKanbanParams));
        verifyNoMoreInteractions(mockDatabase);
      },
    );

    test(
      'should throw an Expection when creating in database unsuccessful',
      () async {
        // arrange.
        when(mockDatabase.createKanban(any))
            .thenThrow(LocalDatabaseException());
        // act.
        final call = dataSource.createKanban;
        // assert.
        expect(
          () => call(tCreateKanbanParams),
          throwsA(const TypeMatcher<LocalDatabaseException>()),
        );
        verify(mockDatabase.createKanban(tCreateKanbanParams));
        verifyNoMoreInteractions(mockDatabase);
      },
    );
  });

  group('deleteKanban', () {
    test(
      'should return List<Kanban> from database when deleting in database is successful',
      () async {
        // arrange.
        when(mockDatabase.deleteKanban(any))
            .thenAnswer((_) async => tKanbanModelFullfilList);
        // act.
        final result = await dataSource.deleteKanban(tKey);
        // assert.
        expect(result, tKanbanModelFullfilList);
        verify(mockDatabase.deleteKanban(tKey));
        verifyNoMoreInteractions(mockDatabase);
      },
    );

    test(
      'should throw an Expection when deleting in database is unsuccessful',
      () async {
        // arrange.
        when(mockDatabase.deleteKanban(any))
            .thenThrow(LocalDatabaseException());
        // act.
        final call = mockDatabase.deleteKanban;
        // assert.
        expect(
          () => call(tKey),
          throwsA(const TypeMatcher<LocalDatabaseException>()),
        );
        verify(mockDatabase.deleteKanban(tKey));
        verifyNoMoreInteractions(mockDatabase);
      },
    );
  });

  group('readAllKanbans', () {
    const tKanbanEmptyList = IListConst<KanbanModel>([]);

    test(
      'should return empty kanbans list when read all in local database is successful and find nothing',
      () async {
        // arrange.
        when(mockDatabase.readAllKanbans())
            .thenAnswer((_) async => tKanbanEmptyList);
        // act.
        final result = await dataSource.readAllKanbans();
        // assert.
        expect(result, equals(tKanbanEmptyList));
        verify(mockDatabase.readAllKanbans());
        verifyNoMoreInteractions(mockDatabase);
      },
    );

    test(
      'should return fullfil kanbans list when read all in database is succesful and kanbans is found',
      () async {
        // arrange.
        when(mockDatabase.readAllKanbans())
            .thenAnswer((_) async => tKanbanModelFullfilList);
        // act.
        final result = await dataSource.readAllKanbans();
        // assert.
        expect(result, equals(tKanbanModelFullfilList));
        verify(mockDatabase.readAllKanbans());
        verifyNoMoreInteractions(mockDatabase);
      },
    );

    test(
      'should throw an Exception when read all in database is unsuccessful',
      () async {
        // arrange.
        when(mockDatabase.readAllKanbans()).thenThrow(LocalDatabaseException());
        // act.
        final call = mockDatabase.readAllKanbans;
        // assert.
        expect(
          () => call(),
          throwsA(const TypeMatcher<LocalDatabaseException>()),
        );
        verify(mockDatabase.readAllKanbans());
        verifyNoMoreInteractions(mockDatabase);
      },
    );
  });

  group('updateKanban', () {
    test(
      'should return kanban from database when updating in database is successful',
      () async {
        // arrange.
        when(mockDatabase.updateKanban(any))
            .thenAnswer((_) async => tKanbanModelFullfilList);
        // act.
        final result = await dataSource.updateKanban(tUpdateKanbanParams);
        // assert.
        expect(result, equals(tKanbanModelFullfilList));
        verify(mockDatabase.updateKanban(tUpdateKanbanParams));
        verifyNoMoreInteractions(mockDatabase);
      },
    );

    test(
      'should throw an Expection when updating in database is unsuccessful',
      () async {
        // arrange.
        when(mockDatabase.updateKanban(any))
            .thenThrow(LocalDatabaseException());
        // act.
        final call = mockDatabase.updateKanban;
        // assert.
        expect(
          () => call(tUpdateKanbanParams),
          throwsA(const TypeMatcher<LocalDatabaseException>()),
        );
        verify(mockDatabase.updateKanban(tUpdateKanbanParams));
        verifyNoMoreInteractions(mockDatabase);
      },
    );
  });
}
