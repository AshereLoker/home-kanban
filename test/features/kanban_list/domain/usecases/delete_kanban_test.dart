import 'package:either_dart/either.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/delete_kanban.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

import 'crud_kanban_mock.mocks.dart';

void main() {
  late DeleteKanbanEntity usecase;
  late MockCrudKanbanRepository mockKanbanEntityRepository;

  setUp(() {
    mockKanbanEntityRepository = MockCrudKanbanRepository();
    usecase = DeleteKanbanEntity(mockKanbanEntityRepository);
  });

  const tKey = 'tKey';
  const successCode = 200;

  test(
    'should delete kanban in repository',
    () async {
      // arrange.
      when(mockKanbanEntityRepository.deleteKanban(any))
          .thenAnswer((_) async => const Right(successCode));
      // act.
      final result = await usecase(tKey);
      // assert.
      expect(result, const Right<Failure, int>(successCode));
      verify(mockKanbanEntityRepository.deleteKanban(tKey));
      verifyNoMoreInteractions(mockKanbanEntityRepository);
    },
  );
}
