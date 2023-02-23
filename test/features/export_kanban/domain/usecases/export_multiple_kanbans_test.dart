// ignore_for_file: void_checks

import 'package:either_dart/either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/features/export_kanban/domain/usecases/export_kanban_usecases.dart';
import 'package:mockito/mockito.dart';

import '../../test_export_kanban_constants.dart';
import '../repository/mock/mock_export_kanban_repository.mocks.dart';

void main() {
  late final ExportMultipleKanbans usecase;
  late final MockExportKanbanRepository mockExportRepository;

  setUp(() {
    mockExportRepository = MockExportKanbanRepository();
    usecase = ExportMultipleKanbans(mockExportRepository);
  });

  test(
    'multiple: should return normally from export repository',
    () async {
      // arrange.
      when(mockExportRepository.exportMultipleKanbans(any))
          .thenAnswer((_) async => const Right(returnsNormally));
      // act.
      final result = await usecase(tMultipleExportParams);
      // assert.
      expect(result, const Right<Failure, void>(returnsNormally));
      verify(mockExportRepository.exportMultipleKanbans(tMultipleExportParams));
      verifyNoMoreInteractions(mockExportRepository);
    },
  );
}
