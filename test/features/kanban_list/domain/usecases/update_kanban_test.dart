import 'package:either_dart/either.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/update_kanban.dart';
import 'package:mockito/mockito.dart';

import '../../../test_kanban_constants.dart';
import '../repository/crud_kanban_mock.mocks.dart';

void main() {
  late UpdateKanban usecase;
  late MockCrudKanbanRepository mockKanbanEntityRepository;

  setUp(() {
    mockKanbanEntityRepository = MockCrudKanbanRepository();
    usecase = UpdateKanban(mockKanbanEntityRepository);
  });

  test(
    'should update kanban in repository',
    () async {
      // arrange.
      when(mockKanbanEntityRepository.updateKanban(tUpdateKanbanParams))
          .thenAnswer((_) async => Right(tKanbanFullfilList));
      // act.
      final result = await usecase(tUpdateKanbanParams);
      // assert.
      expect(result, Right<Failure, IList<Kanban>>(tKanbanFullfilList));
      verify(mockKanbanEntityRepository.updateKanban(tUpdateKanbanParams));
      verifyNoMoreInteractions(mockKanbanEntityRepository);
    },
  );
}
