import 'package:either_dart/either.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/core/error/exceptions.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/repositories/crud_kanban_repository_impl.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:mockito/mockito.dart';

import '../../../test_kanban_constants.dart';
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
      // Successful group test starts from here.
      test(
        'should return local data when create in local data source is successful',
        () async {
          // arrange.
          when(mockLocalDatasource.createKanban(any))
              .thenAnswer((_) async => tKanbanModelFullfilList);
          // act.
          final result = await repository.createKanban(tCreateKanbanParams);
          // assert.
          expect(
            result,
            equals(Right<Failure, IList<Kanban>>(tKanbanFullfilList)),
          );
          verify(mockLocalDatasource.createKanban(tCreateKanbanParams));
          verifyNoMoreInteractions(mockLocalDatasource);
        },
      );

      test(
        'should return success code when delete in local data source is successful',
        () async {
          // arrange.
          when(mockLocalDatasource.deleteKanban(any))
              .thenAnswer((_) async => tKanbanModelFullfilList);
          // act.
          final result = await repository.deleteKanban(tKey);
          // assert.
          expect(
            result,
            equals(Right<Failure, IList<Kanban>>(tKanbanFullfilList)),
          );
          verify(mockLocalDatasource.deleteKanban(tKey));
          verifyNoMoreInteractions(mockLocalDatasource);
        },
      );

      test(
        'should return list of local data when read all in local data source is successful',
        () async {
          // arrange.
          when(mockLocalDatasource.readAllKanbans())
              .thenAnswer((_) async => tKanbanModelFullfilList);
          // act.
          final result = await repository.readAllKanbans();
          // assert.
          expect(result, Right<Failure, IList<Kanban>>(tKanbanFullfilList));
          verify(mockLocalDatasource.readAllKanbans());
          verifyNoMoreInteractions(mockLocalDatasource);
        },
      );

      test(
        'should return local data when update in local data source is succesful',
        () async {
          // arrange.
          when(mockLocalDatasource.updateKanban(any))
              .thenAnswer((_) async => tKanbanModelFullfilList);
          // act.
          final result = await repository.updateKanban(tUpdateKanbanParams);
          // assert.
          expect(
            result,
            equals(Right<Failure, IList<Kanban>>(tKanbanFullfilList)),
          );
          verify(mockLocalDatasource.updateKanban(tUpdateKanbanParams));
          verifyNoMoreInteractions(mockLocalDatasource);
        },
      );

      // Unsuccessful starts from here.
      test(
        'should return local database failure when create in local data source is unsuccessful',
        () async {
          // arrange.
          when(mockLocalDatasource.createKanban(any))
              .thenThrow(LocalDatabaseException());
          // act.
          final result = await repository.createKanban(tCreateKanbanParams);
          // assert.
          expect(result, equals(Left<Failure, Kanban>(LocalDatabaseFailure())));
          verify(mockLocalDatasource.createKanban(tCreateKanbanParams));
          verifyNoMoreInteractions(mockLocalDatasource);
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
          expect(result, equals(Left<Failure, Kanban>(LocalDatabaseFailure())));
          verify(mockLocalDatasource.deleteKanban(tKey));
          verifyNoMoreInteractions(mockLocalDatasource);
        },
      );

      test(
        'should return local database failure when read all in local data source is unsuccessful',
        () async {
          // arrange.
          when(mockLocalDatasource.readAllKanbans())
              .thenThrow(LocalDatabaseException());
          // act.
          final result = await repository.readAllKanbans();
          // assert.
          expect(result, equals(Left<Failure, Kanban>(LocalDatabaseFailure())));
          verify(mockLocalDatasource.readAllKanbans());
          verifyNoMoreInteractions(mockLocalDatasource);
        },
      );

      test(
        'should return local database failure when update in local data source is unsuccessful',
        () async {
          // arrange.
          when(mockLocalDatasource.updateKanban(any))
              .thenThrow(LocalDatabaseException());
          // act.
          final result = await repository.updateKanban(tUpdateKanbanParams);
          // assert.
          expect(result, equals(Left<Failure, Kanban>(LocalDatabaseFailure())));
          verify(mockLocalDatasource.updateKanban(tUpdateKanbanParams));
          verifyNoMoreInteractions(mockLocalDatasource);
        },
      );
    },
  );
}
