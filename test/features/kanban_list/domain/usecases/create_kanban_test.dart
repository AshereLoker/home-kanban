import 'package:either_dart/either.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/create_kanban.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../test_kanban_constants.dart';
import '../repository/crud_kanban_mock.mocks.dart';

void main() {
  late final CreateKanban usecase;
  late final MockCrudKanbanRepository mockKanbanEntityRepository;

  setUp(() {
    mockKanbanEntityRepository = MockCrudKanbanRepository();
    usecase = CreateKanban(mockKanbanEntityRepository);
  });

  test(
    'should create kanban in repository',
    () async {
      // arrange.
      when(mockKanbanEntityRepository.createKanban(any))
          .thenAnswer((_) async => Right(tKanbanFullfilList));
      // act.
      final result = await usecase(tCreateKanbanParams);
      // assert.
      expect(result, Right<Failure, IList<Kanban>>(tKanbanFullfilList));
      verify(mockKanbanEntityRepository.createKanban(tCreateKanbanParams));
      verifyNoMoreInteractions(mockKanbanEntityRepository);
    },
  );
}
