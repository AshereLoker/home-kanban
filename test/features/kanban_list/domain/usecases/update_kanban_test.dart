import 'package:either_dart/either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/update_kanban.dart';
import 'package:mockito/mockito.dart';

import 'crud_kanban_mock.mocks.dart';

void main() {
  late UpdateKanban usecase;
  late MockCrudKanbanRepository mockKanbanEntityRepository;

  setUp(() {
    mockKanbanEntityRepository = MockCrudKanbanRepository();
    usecase = UpdateKanban(mockKanbanEntityRepository);
  });

  const tKey = 'tKey';
  const tKanbanModel = KanbanModel(
    name: 'newTest',
    description: 'newTest',
    key: tKey,
  );

  const Kanban tKanban = tKanbanModel;

  test(
    'should update kanban in repository',
    () async {
      // arrange.
      when(mockKanbanEntityRepository.updateKanban(tKanbanModel))
          .thenAnswer((_) async => const Right(tKanban));
      // act.
      final result = await usecase(tKanbanModel);
      // assert.
      expect(result, const Right<Failure, Kanban>(tKanban));
      verify(mockKanbanEntityRepository.updateKanban(tKanbanModel));
      verifyNoMoreInteractions(mockKanbanEntityRepository);
    },
  );
}
