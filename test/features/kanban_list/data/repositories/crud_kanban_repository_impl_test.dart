import 'package:either_dart/either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/core/error/exceptions.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/repositories/crud_kanban_repository_impl.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:mockito/mockito.dart';

import '../datasources/mock_datasources.mocks.dart';

void main() {
  late CrudKanbanRepositoryImpl repository;
  late MockCrudKanbanLocalDatasource mockLocalDatasource;

  setUp(
    () {
      mockLocalDatasource = MockCrudKanbanLocalDatasource();
      repository = CrudKanbanRepositoryImpl(
        localDatasource: mockLocalDatasource,
      );
    },
  );

  group(
    'local datasource',
    () {
      // SetUp constants for future test in group.
      const tSuccessCode = 200;
      const tName = 'test';
      const tDesc = 'test';
      const tKey = 'tKey';
      const tKanbanModel = KanbanModel(
        key: tKey,
        name: tName,
        description: tDesc,
      );
      const Kanban tKanban = tKanbanModel;

      // Successful group test starts from here.
      test(
        'should return local data when create in local data source is successful',
        () async {
          // arrange.
          when(mockLocalDatasource.createKanban(any, any))
              .thenAnswer((_) async => tKanbanModel);
          // act.
          final result = await repository.createKanban(tName, tDesc);
          // assert.
          verify(mockLocalDatasource.createKanban(tName, tDesc));
          expect(result, equals(const Right<Failure, Kanban>(tKanban)));
        },
      );

      test(
        'should return success code when delete in local data source is successful',
        () async {
          // arrange.
          when(mockLocalDatasource.deleteKanban(any))
              .thenAnswer((_) async => tSuccessCode);
          // act.
          final result = await repository.deleteKanban(tKey);
          // assert.
          verify(mockLocalDatasource.deleteKanban(tKey));
          expect(
            result,
            equals(const Right<Failure, int>(tSuccessCode)),
          );
        },
      );

      test(
        'should return local data when read in local data source is successful',
        () async {
          // arrange.
          when(mockLocalDatasource.readKanban(any))
              .thenAnswer((_) async => tKanbanModel);
          // act.
          final result = await repository.readKanban(tKey);
          // assert.
          verify(mockLocalDatasource.readKanban(tKey));
          expect(result, equals(const Right<Failure, Kanban>(tKanban)));
        },
      );

      test(
        'should return local data when update in local data source is succesful',
        () async {
          // arrange.
          when(mockLocalDatasource.updateKanban(any))
              .thenAnswer((_) async => tKanbanModel);
          // act.
          final result = await repository.updateKanban(tKanbanModel);
          // assert.
          verify(mockLocalDatasource.updateKanban(tKanbanModel));
          expect(result, equals(const Right<Failure, Kanban>(tKanban)));
        },
      );

      // Unsuccessful starts from here.
      test(
        'should return local database failure when create in local data source is unsuccessful',
        () async {
          // arrange.
          when(mockLocalDatasource.createKanban(any, any))
              .thenThrow(LocalDatabaseException());
          // act.
          final result = await repository.createKanban(tName, tDesc);
          // assert.
          verify(mockLocalDatasource.createKanban(tName, tDesc));
          expect(result, equals(Left<Failure, Kanban>(LocalDatabaseFailure())));
        },
      );

      test(
        'should return local database failure when delete in local data source is unsuccessful',
        () async {
          // arrange.
          when(mockLocalDatasource.deleteKanban(any))
              .thenThrow(LocalDatabaseException());
          // act.
          final result = await repository.deleteKanban(tKey);
          // assert.
          verify(mockLocalDatasource.deleteKanban(tKey));
          expect(result, equals(Left<Failure, Kanban>(LocalDatabaseFailure())));
        },
      );

      test(
        'should return local database failure when read in local data source is unsuccessful',
        () async {
          // arrange.
          when(mockLocalDatasource.readKanban(any))
              .thenThrow(LocalDatabaseException());
          // act.
          final result = await repository.readKanban(tKey);
          // assert.
          verify(mockLocalDatasource.readKanban(tKey));
          expect(result, equals(Left<Failure, Kanban>(LocalDatabaseFailure())));
        },
      );

      test(
        'should return local database failure when update in local data source is unsuccessful',
        () async {
          // arrange.
          when(mockLocalDatasource.updateKanban(any))
              .thenThrow(LocalDatabaseException());
          // act.
          final result = await repository.updateKanban(tKanbanModel);
          // assert.
          verify(mockLocalDatasource.updateKanban(tKanbanModel));
          expect(result, equals(Left<Failure, Kanban>(LocalDatabaseFailure())));
        },
      );
    },
  );
}
