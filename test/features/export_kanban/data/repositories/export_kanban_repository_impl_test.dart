// ignore_for_file: void_checks
import 'package:either_dart/either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/features/export_kanban/data/repositories/export_kanban_repository_impl.dart';
import 'package:home_challenge_kanban/features/export_kanban/domain/repositories/export_kanban_repository.dart';
import 'package:mockito/mockito.dart';

import '../../test_export_kanban_constants.dart';
import '../datasources/mock/mock_export_kanban_local_datasource.mocks.dart';

void main() {
  late ExportKanbanRepository repository;
  late MockExportKanbanLocalDatasource mockLocalDatasource;

  setUp(() {
    mockLocalDatasource = MockExportKanbanLocalDatasource();
    repository = ExportKanbanRepositoryImpl(datasource: mockLocalDatasource);
  });

  group('local export datasource:', () {
    test(
      'should return normally when single export in local data source is successful',
      () async {
        // arrange.
        when(mockLocalDatasource.exportSingleKabnan(any))
            .thenAnswer((_) async => returnsNormally);
        // act.
        final result = await repository.exportSingleKanban(tSingeExportParams);
        // assert.
        expect(result, const Right<Failure, void>(returnsNormally));
        verify(mockLocalDatasource.exportSingleKabnan(tSingeExportParams));
        verifyNoMoreInteractions(mockLocalDatasource);
      },
    );

    test(
      'should return normally when multiple export in local data source is successful',
      () async {
        // arrange.
        when(mockLocalDatasource.exportMultipleKabnans(any))
            .thenAnswer((_) async => returnsNormally);
        // act.
        final result =
            await repository.exportMultipleKanbans(tMultipleExportParams);
        // assert.
        expect(result, const Right<Failure, void>(returnsNormally));
        verify(
          mockLocalDatasource.exportMultipleKabnans(tMultipleExportParams),
        );
        verifyNoMoreInteractions(mockLocalDatasource);
      },
    );
  });
}
