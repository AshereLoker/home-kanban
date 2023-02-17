import 'package:either_dart/either.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/create_kanban.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

import 'crud_kanban_mock.mocks.dart';

void main() {
  late CreateKanban usecase;
  late MockCrudKanbanRepository mockKanbanEntityRepository;

  setUp(() {
    mockKanbanEntityRepository = MockCrudKanbanRepository();
    usecase = CreateKanban(mockKanbanEntityRepository);
  });

  const tName = 'test';
  const tDescr = 'test';
  const tKanban = Kanban(
    name: tName,
    description: tDescr,
    key: 'tKey',
  );

  test(
    'should create kanban in repository',
    () async {
      // arrange.
      when(mockKanbanEntityRepository.createKanban(any, any))
          .thenAnswer((_) async => const Right(tKanban));
      // act.
      final result = await usecase(
        const CreateKanbanParams(name: tName, description: tDescr),
      );
      // assert.
      expect(result, const Right<Failure, Kanban>(tKanban));
      verify(mockKanbanEntityRepository.createKanban(tName, tDescr));
      verifyNoMoreInteractions(mockKanbanEntityRepository);
    },
  );
}
