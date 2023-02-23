// ignore_for_file: void_checks
import 'package:either_dart/either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/features/export_kanban/domain/usecases/export_kanban_usecases.dart';
import 'package:mockito/mockito.dart';

import '../../test_export_kanban_constants.dart';
import '../repository/mock/mock_export_kanban_repository.mocks.dart';

void main() {
  late final ExportSingleKanban usecase;
  late final MockExportKanbanRepository mockExportRepository;

  setUp(() {
    mockExportRepository = MockExportKanbanRepository();
    usecase = ExportSingleKanban(mockExportRepository);
  });

  test(
    'single: should return normally from export repository',
    () async {
      // arrange.
      when(mockExportRepository.exportSingleKanban(any))
          .thenAnswer((_) async => const Right(returnsNormally));
      // act.
      final result = await usecase(tSingeExportParams);
      // assert.
      expect(result, const Right<Failure, void>(returnsNormally));
      verify(mockExportRepository.exportSingleKanban(tSingeExportParams));
      verifyNoMoreInteractions(mockExportRepository);
    },
  );
}
