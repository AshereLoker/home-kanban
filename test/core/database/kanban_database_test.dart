import 'package:drift/native.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/core/database/drift/drift_database_impl.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/mapping/kanban_mapper.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/kanban_usecases.dart';

import '../../features/kanban_list/kanban_test_constantst.dart';

void main() {
  late DriftDatabaseImpl databaseImpl;

  WidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    databaseImpl = DriftDatabaseImpl(
      executor: NativeDatabase.memory(),
      forTest: true,
    );
  });

  tearDown(() async {
    await databaseImpl.close();
  });

  group(
    'drift database:',
    () {
      test(
        'should return kanban when create in drift database is successful',
        () async {
          // act.
          final result = await databaseImpl.createKanban(tCreateKanbanParams);
          // assert.
          expect(result, equals(tKanbanFullfilList));
        },
      );

      test(
        'should should return kanbans list when read all in drift database is successful and nothing found',
        () async {
          // act.
          final result = await databaseImpl.readAllKanbans();
          // assert.
          expect(result, equals(tKanbanEmptyList));
        },
      );

      test(
        'should should return kanbans list when read all in drift database is successful and kanbans found',
        () async {
          // act.
          await databaseImpl.createKanban(tCreateKanbanParams);
          final result = await databaseImpl.readAllKanbans();
          // assert.
          expect(result, equals(tKanbanFullfilList));
        },
      );

      test(
        'should return kanban when delete in drift database is successful',
        () async {
          // act.
          await databaseImpl.createKanban(tCreateKanbanParams);
          final result = await databaseImpl.deleteKanban(tKey);
          // assert.
          expect(result, equals(tKanbanEmptyList));
        },
      );

      test(
        'should return kanban when update in drift database is successful',
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
