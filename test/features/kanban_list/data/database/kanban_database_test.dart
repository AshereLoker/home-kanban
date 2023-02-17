import 'package:drift/native.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/database/kanban_database_impl.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/mapping/kanban_entitie_mapper.dart';
import 'package:mockito/mockito.dart';

import 'mock_kanban_database.mocks.dart';

void main() {
  late KanbanDatabaseImpl databaseImpl;
  late MockKanbanDatabase mockDatabase;

  WidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    mockDatabase = MockKanbanDatabase();
    databaseImpl = KanbanDatabaseImpl(NativeDatabase.memory());
  });

  tearDown(() async {
    await databaseImpl.close();
  });

  group(
    'local database',
    () {
      const tSuccessCode = 200;
      const tName = 'test';
      const tDescr = 'test';

      const tKanbanEntity = KanbanModel(
        name: tName,
        description: tDescr,
        key: 'tKey',
      );

      test(
        'should return kanban when create in local database is successful',
        () async {
          // arrange.
          when(mockDatabase.createKanban(any, any))
              .thenAnswer((_) async => tKanbanEntity);
          // act.
          final kanban = await databaseImpl.createKanban(tName, tDescr);
          // assert.
          expect(kanban.name, tKanbanEntity.name);
        },
      );

      test(
        'should return kanban when read in local database is successful',
        () async {
          // arrange.
          when(mockDatabase.readKanbanByKey(any))
              .thenAnswer((_) async => tKanbanEntity);
          // act.
          final kanban = await databaseImpl.createKanban(tName, tDescr);
          final result = await databaseImpl.readKanbanByKey(kanban.key);
          // assert.
          expect(result.name, tKanbanEntity.name);
        },
      );

      test(
        'should return kanban when delete in local database is successful',
        () async {
          // arrange.
          when(mockDatabase.deleteKanban(any))
              .thenAnswer((_) async => tSuccessCode);
          // act.
          final kanban = await databaseImpl.createKanban(tName, tDescr);
          final result = await databaseImpl.deleteKanban(kanban.key);
          // assert.
          expect(result, tSuccessCode);
        },
      );

      test(
        'should return kanban when update in local database is successful',
        () async {
          // arrange.
          when(mockDatabase.updateKanban(any))
              .thenAnswer((_) async => tKanbanEntity);
          // act.
          final kanban = await databaseImpl.createKanban(tName, tDescr);
          await databaseImpl.updateKanban(
            tKanbanEntity.toKanbanEntity().copyWith(key: kanban.key),
          );
          final result = await databaseImpl.readKanbanByKey(kanban.key);
          // assert.
          expect(result.name, tKanbanEntity.name);
        },
      );
    },
  );
}
