import 'package:either_dart/either.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/delete_kanban.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../kanban_test_constantst.dart';
import '../repository/mock/mock_crud_kanban.mocks.dart';

void main() {
  late DeleteKanban usecase;
  late MockCrudKanbanRepository mockKanbanEntityRepository;

  setUp(() {
    mockKanbanEntityRepository = MockCrudKanbanRepository();
    usecase = DeleteKanban(mockKanbanEntityRepository);
  });

  test(
    'should delete kanban in repository',
    () async {
      // arrange.
      when(mockKanbanEntityRepository.deleteKanban(any))
          .thenAnswer((_) async => Right(tKanbanFullfilList));
      // act.
      final result = await usecase(tKey);
      // assert.
      expect(result, Right<Failure, IList<Kanban>>(tKanbanFullfilList));
      verify(mockKanbanEntityRepository.deleteKanban(tKey));
      verifyNoMoreInteractions(mockKanbanEntityRepository);
    },
  );
}
