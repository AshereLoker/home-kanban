import 'package:either_dart/either.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/core/error/exceptions.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/features/kanban_history/data/repositories/kanban_history_repository_impl.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:mockito/mockito.dart';

import '../../test_kanban_history_constants.dart';
import '../datasource/mock/mock_kanban_history_local_datasource.mocks.dart';

void main() {
  late KanbanHistoryRepositoryImpl repository;
  late MockKanbanHistoryLocalDatasource mockLocalDatasource;

  setUp(() {
    mockLocalDatasource = MockKanbanHistoryLocalDatasource();
    repository = KanbanHistoryRepositoryImpl(datasource: mockLocalDatasource);
  });

  group('local kanban history datasource:', () {
    test(
      'should return local data when read without criteria in local datasource is successful',
      () async {
        // arrange.
        when(mockLocalDatasource.readAllFinished())
            .thenAnswer((_) async => tKanbanHistoryFullfilList);
        // act.
        final result = await repository.readAllFinished();
        // assert.
        expect(
          result,
          equals(
            Right<Failure, IList<Kanban>>(tKanbanHistoryFullfilList),
          ),
        );
        verify(mockLocalDatasource.readAllFinished());
        verifyNoMoreInteractions(mockLocalDatasource);
      },
    );

    test(
      'should return local data when read with criteria in local datasource is successful',
      () async {
        // arrange.
        when(mockLocalDatasource.readTimeRangeFinished(any))
            .thenAnswer((_) async => tKanbanHistoryFullfilList);
        // act.
        final result = await repository
            .readTimeRangeFinished(tKanbanHistoryTimeRangeParams);
        // assert.
        expect(
          result,
          equals(
            Right<Failure, IList<Kanban>>(tKanbanHistoryFullfilList),
          ),
        );
        verify(mockLocalDatasource.readTimeRangeFinished(
          tKanbanHistoryTimeRangeParams,
        ));
        verifyNoMoreInteractions(mockLocalDatasource);
      },
    );

    test(
      'should return local database failure when read without criteria in local datasource is unsuccessful',
      () async {
        // arrange.
        when(mockLocalDatasource.readAllFinished())
            .thenThrow(LocalKanbanDatasourceException());
        // act.
        final result = await repository.readAllFinished();
        // assert.
        expect(
          result,
          equals(Left<Failure, Kanban>(LocalKanbanDatasourceFailure())),
        );
        verify(mockLocalDatasource.readAllFinished());
        verifyNoMoreInteractions(mockLocalDatasource);
      },
    );

    test(
      'should return local database failure when read with criteria in local datasource is unsuccessful',
      () async {
        // arrange.
        when(mockLocalDatasource.readTimeRangeFinished(any))
            .thenThrow(LocalKanbanDatasourceException());
        // act.
        final result = await repository
            .readTimeRangeFinished(tKanbanHistoryTimeRangeParams);
        // assert.
        expect(
          result,
          equals(Left<Failure, Kanban>(LocalKanbanDatasourceFailure())),
        );
        verify(mockLocalDatasource.readTimeRangeFinished(
          tKanbanHistoryTimeRangeParams,
        ));
        verifyNoMoreInteractions(mockLocalDatasource);
      },
    );
  });
}
