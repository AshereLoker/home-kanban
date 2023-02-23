import 'package:either_dart/either.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/features/kanban_history/domain/usecases/kanban_history_usecases.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:mockito/mockito.dart';

import '../../test_kanban_history_constants.dart';
import '../repositories/mock/mock_kanban_history_repository.mocks.dart';

void main() {
  late final ReadTimeRangeFinished usecase;
  late final MockKanbanHistoryRepository mockKanbanHistoryRepository;

  setUp(() {
    mockKanbanHistoryRepository = MockKanbanHistoryRepository();
    usecase = ReadTimeRangeFinished(mockKanbanHistoryRepository);
  });

  test(
    'should return all finished with criteria kanbans in repository',
    () async {
      // arrange.
      when(mockKanbanHistoryRepository.readTimeRangeFinished(any)).thenAnswer(
        (_) async => Right(tKanbanHistoryFullfilList),
      );
      // act.
      final result = await usecase(tKanbanHistoryTimeRangeParams);
      // assert.
      expect(result, Right<Failure, IList<Kanban>>(tKanbanHistoryFullfilList));
      verify(mockKanbanHistoryRepository
          .readTimeRangeFinished(tKanbanHistoryTimeRangeParams));
      verifyNoMoreInteractions(mockKanbanHistoryRepository);
    },
  );
}
