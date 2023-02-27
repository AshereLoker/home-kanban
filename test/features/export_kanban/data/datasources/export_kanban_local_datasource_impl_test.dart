// ignore_for_file: void_checks
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/core/error/exceptions.dart';
import 'package:home_challenge_kanban/features/export_kanban/data/datasources/export_kanban_local_datasource.dart';
import 'package:home_challenge_kanban/features/export_kanban/data/datasources/export_kanban_local_datasource_impl.dart';
import 'package:home_challenge_kanban/features/export_kanban/data/mapping/kanban_to_export_mapper.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/mockito.dart';

import '../../../../core/database/mock/mock_kanban_database.mocks.dart';
import '../../../kanban_list/test_kanban_constantst.dart';
import '../../test_export_kanban_constants.dart';
import '../export_data_services/mock/mock_export_service.mocks.dart';

void main() {
  late ExportKanbanLocalDatasource datasource;
  late MockKanbanDatabase mockDatabase;
  late MockExportService mockService;

  setUp(() {
    mockService = MockExportService();
    mockDatabase = MockKanbanDatabase();
    datasource = ExportKanbanLocalDatasourceImpl(
      exportService: mockService,
      database: mockDatabase,
    );
  });

  group('local export datasource: ', () {
    test(
      'should return normally when single export in local data source is succesful',
      () async {
        // arrange.
        when(mockDatabase.readByUniqueKey(any))
            .thenAnswer((_) async => tKanbanModel);
        when(mockService.exportSingleKanban(any))
            .thenAnswer((_) async => isA<void>());

        // act.
        final call = datasource.exportSingleKabnan(tSingeExportParams);
        // assert.
        await expectLater(
          () async => await call,
          isA<void>(),
        );

        verifyInOrder([
          mockDatabase.readByUniqueKey(tSingeExportParams.kanbanKey),
          mockService.exportSingleKanban(tKanbanModel.toExportModel()),
        ]);
        verifyNoMoreInteractions(mockDatabase);
        verifyNoMoreInteractions(mockService);
      },
    );

    test(
      'should throw Exception when single export in local database is unsuccesful',
      () async {
        // arrange.
        when(mockDatabase.readByUniqueKey(any))
            .thenThrow(LocalDatabaseException());

        // act.
        final call = datasource.exportSingleKabnan(tSingeExportParams);
        // assert.
        await expectLater(
          () async => await call,
          throwsA(const TypeMatcher<LocalDatabaseException>()),
        );

        verify(mockDatabase.readByUniqueKey(tSingeExportParams.kanbanKey));
        verifyNoMoreInteractions(mockDatabase);
        verifyZeroInteractions(mockService);
      },
    );

    test(
      'should throw Exception when readByKey in local export service is unsuccesful',
      () async {
        // arrange.
        when(mockDatabase.readByUniqueKey(any))
            .thenAnswer((_) async => tKanbanModel);
        when(mockService.exportSingleKanban(any))
            .thenThrow(LocalExportServiceException());

        // act.
        final call = datasource.exportSingleKabnan(tSingeExportParams);
        // assert.
        await expectLater(
          () async => await call,
          throwsA(const TypeMatcher<LocalExportServiceException>()),
        );

        verifyInOrder([
          mockDatabase.readByUniqueKey(tSingeExportParams.kanbanKey),
          mockService.exportSingleKanban(tKanbanModel.toExportModel()),
        ]);
        verifyNoMoreInteractions(mockDatabase);
        verifyNoMoreInteractions(mockService);
      },
    );

    test(
      'should return normally when multiple export in local data source is succesful',
      () async {
        // arrange.
        when(mockDatabase.readAllKanbans())
            .thenAnswer((_) async => tUnsortedExportList.lock);
        when(mockService.exportMultipleKanbans(any))
            .thenAnswer((_) async => isA<void>());

        // act.
        final call = datasource.exportMultipleKabnans(tMultipleExportParams);
        // assert.
        await expectLater(
          () async => await call,
          isA<void>(),
        );

        verifyInOrder([
          mockDatabase.readAllKanbans(),
          mockService.exportMultipleKanbans(
            tSortedExportList.map((obj) => obj.toExportModel()).toIList(),
          ),
        ]);
        verifyNoMoreInteractions(mockDatabase);
        verifyNoMoreInteractions(mockService);
      },
    );

    test(
      'should throw Exception when readAll() in local database is unsuccesful',
      () async {
        // arrange.
        when(
          mockDatabase.readAllKanbans(),
        ).thenThrow(LocalDatabaseException());

        // act.
        final call = datasource.exportMultipleKabnans(tMultipleExportParams);
        // assert.
        await expectLater(
          () async => await call,
          throwsA(const TypeMatcher<LocalDatabaseException>()),
        );

        verify(
          mockDatabase.readAllKanbans(),
        );
        verifyNoMoreInteractions(mockDatabase);
        verifyZeroInteractions(mockService);
      },
    );

    test(
      'should throw Exception when multiple export in local export service is unsuccesful',
      () async {
        // arrange.
        when(mockDatabase.readAllKanbans())
            .thenAnswer((_) async => tKanbanModelFullfilList);
        when(mockService.exportMultipleKanbans(any))
            .thenThrow(LocalExportServiceException());

        // act.
        final call = datasource.exportMultipleKabnans(tMultipleExportParams);
        // assert.
        await expectLater(
          () async => await call,
          throwsA(const TypeMatcher<LocalExportServiceException>()),
        );

        verifyInOrder([
          mockDatabase.readAllKanbans(),
          mockService.exportMultipleKanbans(tKanbanModelFullfilList.unlock
              .map((obj) => obj.toExportModel())
              .toIList()),
        ]);
        verifyNoMoreInteractions(mockDatabase);
        verifyNoMoreInteractions(mockService);
      },
    );
  });
}
