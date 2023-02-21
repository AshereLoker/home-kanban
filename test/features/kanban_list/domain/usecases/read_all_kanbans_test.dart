import 'package:either_dart/either.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/core/usecases/usecase.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/read_all_kanbans.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

import '../repository/crud_kanban_mock.mocks.dart';

void main() {
  late final ReadAllKanbans usecase;
  late final MockCrudKanbanRepository mockCrudKanbanRepository;

  setUp(() {
    mockCrudKanbanRepository = MockCrudKanbanRepository();
    usecase = ReadAllKanbans(mockCrudKanbanRepository);
  });

  const tEmptyKanbansList = IListConst<Kanban>([]);

  test(
    'should read all kanbans in repository',
    () async {
      // arrange.
      when(mockCrudKanbanRepository.readAllKanbans())
          .thenAnswer((_) async => const Right(tEmptyKanbansList));
      // act.
      final result = await usecase(NoParams());
      // assert.
      expect(result, const Right<Failure, IList<Kanban>>(tEmptyKanbansList));
      verify(mockCrudKanbanRepository.readAllKanbans());
      verifyNoMoreInteractions(mockCrudKanbanRepository);
    },
  );
}
