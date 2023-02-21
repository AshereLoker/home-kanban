import 'package:drift/native.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/database/drift_database_impl.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/mapping/kanban_mapper.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/kanban_usecases.dart';
import 'package:mockito/mockito.dart';

import '../../../test_kanban_constants.dart';
import 'mock_kanban_database.mocks.dart';

void main() {
  late DriftDatabaseImpl databaseImpl;
  late MockKanbanDatabase mockDatabase;

  WidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    mockDatabase = MockKanbanDatabase();
    databaseImpl = DriftDatabaseImpl(
      executor: NativeDatabase.memory(),
      forTest: true,
    );
  });

  tearDown(() async {
    await databaseImpl.close();
  });

  group(
    'local database',
    () {
      test(
        'should return kanban when create in local database is successful',
        () async {
          // act.
          final result = await databaseImpl.createKanban(tCreateKanbanParams);
          // assert.
          expect(result, equals(tKanbanFullfilList));
        },
      );

      test(
        'should should return kanbans list when read all in local database is successful and nothing found',
        () async {
          // act.
          final result = await databaseImpl.readAllKanbans();
          // assert.
          expect(result, equals(tKanbanEmptyList));
        },
      );

      test(
        'should should return kanbans list when read all in local database is successful and kanbans found',
        () async {
          // arrange.
          when(mockDatabase.readAllKanbans())
              .thenAnswer((_) async => tKanbanModelFullfilList);
          // act.
          await databaseImpl.createKanban(tCreateKanbanParams);
          final result = await databaseImpl.readAllKanbans();
          // assert.
          expect(result, equals(tKanbanFullfilList));
        },
      );

      test(
        'should return kanban when delete in local database is successful',
        () async {
          // act.
          await databaseImpl.createKanban(tCreateKanbanParams);
          final result = await databaseImpl.deleteKanban(tKey);
          // assert.
          expect(result, equals(tKanbanEmptyList));
        },
      );

      test(
        'should return kanban when update in local database is successful',
        () async {
          final UpdateKanbanParams tUpdateParams;
          // act.
          final kanban = await databaseImpl.createKanban(tCreateKanbanParams);
          tUpdateParams = UpdateKanbanParams(
            modelToUpdate: KanbanModel(
              key: tKey,
              name: 'test2',
              status: KanbanStatus.todo,
              createAt: kanban.first.createAt,
              order: 0,
            ),
          );
          final result = await databaseImpl.updateKanban(tUpdateParams);

          final tUpdatedKanbanList = IListConst<KanbanModel>([
            tUpdateParams.modelToUpdate.toKanbanModel(),
          ]);
          // assert.
          expect(result, equals(tUpdatedKanbanList));
        },
      );
    },
  );
}
