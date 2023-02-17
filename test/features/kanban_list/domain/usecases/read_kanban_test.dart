import 'package:either_dart/either.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';

import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/read_kanban.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

import 'crud_kanban_mock.mocks.dart';

void main() {
  late ReadKanban usecase;
  late MockCrudKanbanRepository mockKanbanEntityRepository;

  setUp(() {
    mockKanbanEntityRepository = MockCrudKanbanRepository();
    usecase = ReadKanban(mockKanbanEntityRepository);
  });

  const tKey = 'tKey';
  const tKanban = Kanban(
    name: 'test',
    description: 'test',
    key: tKey,
  );

  test(
    'should read kanban in repository',
    () async {
      // arrange.
      when(mockKanbanEntityRepository.readKanban(any))
          .thenAnswer((_) async => const Right(tKanban));
      // act.
      final result = await usecase(tKey);
      // assert.
      expect(result, const Right<Failure, Kanban>(tKanban));
      verify(mockKanbanEntityRepository.readKanban(tKey));
      verifyNoMoreInteractions(mockKanbanEntityRepository);
    },
  );
}
