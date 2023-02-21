import 'package:either_dart/either.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/core/usecases/usecase.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/database/drift_database_impl.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/mapping/kanban_mapper.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/kanban_usecases.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/bloc/kanbans_bloc.dart';
import 'package:mockito/mockito.dart';

import '../../../test_kanban_constants.dart';
import '../../domain/usecases/mock/mock_usecases.mocks.dart';

void main() {
  late KanbansBloc bloc;
  late MockCreateKanban mockCreateKanban;
  late MockDeleteKanban mockDeleteKanban;
  late MockReadAllKanbans mockReadAllKanbans;
  late MockUpdateKanban mockUpdateKanban;

  setUp(() {
    mockCreateKanban = MockCreateKanban();
    mockDeleteKanban = MockDeleteKanban();
    mockReadAllKanbans = MockReadAllKanbans();
    mockUpdateKanban = MockUpdateKanban();

    bloc = KanbansBloc(
      createKanban: mockCreateKanban,
      deleteKanban: mockDeleteKanban,
      readAllKanbans: mockReadAllKanbans,
      updateKanban: mockUpdateKanban,
    );
  });

  tearDown(() {
    bloc.close();
  });

  test(
    'bloc initial state should be loading',
    () async {
      // assert.
      expect(bloc.state, equals(const KanbansState.loading()));
    },
  );

  blocTest<KanbansBloc, KanbansState>(
    'emits [] when nothing is added.',
    build: () => bloc,
    expect: () => const <KanbansState>[],
  );

  group('createKanban', () {
    blocTest<KanbansBloc, KanbansState>(
      'emits [KanbansState.loaded(tKanbanFullfilList)] when '
      'KanbansEvent.createKanban(name: tName, description: tDescr) is added '
      'to event and get data from usecase.',
      setUp: () => when(mockCreateKanban.call(any))
          .thenAnswer((_) async => Right(tKanbanFullfilList)),
      seed: () => const KanbansState.empty(),
      build: () => bloc,
      act: (bloc) => bloc.add(
        const KanbansEvent.createKanban(createParams: tCreateKanbanParams),
      ),
      expect: () => <KanbansState>[
        KanbansState.loaded(tKanbanFullfilList),
      ],
      verify: (_) => {
        verify(
          mockCreateKanban.call(tCreateKanbanParams),
        ),
        verifyNoMoreInteractions(mockCreateKanban),
      },
    );

    blocTest<KanbansBloc, KanbansState>(
      'emits [KanbansState.loaded(IListConst<Kanban>([tKanban, tKanban]))] when '
      'KanbansEvent.createKanban(name: tName, description: tDescr) added '
      'to event and get data from usecase.',
      setUp: () => when(mockCreateKanban.call(any)).thenAnswer(
        (_) async => Right(IListConst<Kanban>([tKanban, tKanban])),
      ),
      seed: () => KanbansState.loaded(tKanbanFullfilList),
      build: () => bloc,
      act: (bloc) => bloc.add(
        const KanbansEvent.createKanban(createParams: tCreateKanbanParams),
      ),
      expect: () => <KanbansState>[
        KanbansState.loaded(IListConst<Kanban>([tKanban, tKanban])),
      ],
      verify: (_) => {
        verify(
          mockCreateKanban.call(tCreateKanbanParams),
        ),
        verifyNoMoreInteractions(mockCreateKanban),
      },
    );

    blocTest<KanbansBloc, KanbansState>(
      'emits [KabnansState.error(LOCAL_DATASOURCE_FAILURE_MESSAGE)] when '
      'KanbansEvent.loadKanbans added to event and catch '
      'a Failure from usecase.',
      setUp: () => when(mockCreateKanban.call(any))
          .thenAnswer((_) async => Left(LocalDatabaseFailure())),
      seed: () => const KanbansState.empty(),
      build: () => bloc,
      act: (bloc) => bloc.add(
        const KanbansEvent.createKanban(createParams: tCreateKanbanParams),
      ),
      expect: () => const <KanbansState>[
        KanbansState.error(LOCAL_DATASOURCE_FAILURE_MESSAGE),
      ],
      verify: (_) => {
        verify(
          mockCreateKanban.call(tCreateKanbanParams),
        ),
        verifyNoMoreInteractions(mockCreateKanban),
      },
    );
  });

  group('deleteKanban', () {
    blocTest<KanbansBloc, KanbansState>(
      'emits [KanbansState.loaded(tKanbanFullfilList)] when '
      'KanbansEvent.delete(key: tKey) is added '
      'to event and get data from usecase.',
      setUp: () => when(mockDeleteKanban.call(any)).thenAnswer(
        (_) async => Right(tKanbanFullfilList),
      ),
      seed: () => KanbansState.loaded(IListConst([tKanban, tKanban])),
      build: () => bloc,
      act: (bloc) => bloc.add(const KanbansEvent.deleteKanban(key: tKey)),
      expect: () => <KanbansState>[KanbansState.loaded(tKanbanFullfilList)],
      verify: (_) => {
        verify(mockDeleteKanban.call(tKey)),
        verifyNoMoreInteractions(mockDeleteKanban),
      },
    );

    blocTest<KanbansBloc, KanbansState>(
      'emits [KanbansState.empty()] when '
      'KanbansEvent.delete(key: tKey) is added '
      'to event and get data from usecase.',
      setUp: () => when(mockDeleteKanban.call(any)).thenAnswer(
        (_) async => const Right(tKanbanEmptyList),
      ),
      seed: () => KanbansState.loaded(tKanbanFullfilList),
      build: () => bloc,
      act: (bloc) => bloc.add(const KanbansEvent.deleteKanban(key: tKey)),
      expect: () => const <KanbansState>[KanbansState.empty()],
      verify: (_) => {
        verify(mockDeleteKanban.call(tKey)),
        verifyNoMoreInteractions(mockDeleteKanban),
      },
    );

    blocTest<KanbansBloc, KanbansState>(
      'emits [KabnansState.error(LOCAL_DATASOURCE_FAILURE_MESSAGE)] when '
      'KanbansEvent.delete(key: tKey) added to event and catch '
      'a Failure from usecase.',
      setUp: () => when(mockDeleteKanban.call(any)).thenAnswer(
        (_) async => Left(LocalDatabaseFailure()),
      ),
      build: () => bloc,
      act: (bloc) => bloc.add(const KanbansEvent.deleteKanban(key: tKey)),
      expect: () => const <KanbansState>[
        KanbansState.error(LOCAL_DATASOURCE_FAILURE_MESSAGE),
      ],
      verify: (_) => {
        verify(mockDeleteKanban.call(tKey)),
        verifyNoMoreInteractions(mockDeleteKanban),
      },
    );
  });

  group('readAllKanbans', () {
    const tKanbanEmptyList = IListConst<Kanban>([]);

    blocTest<KanbansBloc, KanbansState>(
      'emits [KanbansState.loading(), KanbansState.empty()] when KanbansEvent.loadAllKanbans() '
      'is added to event and state is different from KanbansState.loading.',
      setUp: () => when(mockReadAllKanbans.call(any))
          .thenAnswer((_) async => const Right(tKanbanEmptyList)),
      build: () => bloc,
      seed: () => const KanbansState.empty(),
      act: (bloc) => bloc.add(const KanbansEvent.loadAllKanbans()),
      expect: () => const <KanbansState>[
        KanbansState.loading(),
        KanbansState.empty(),
      ],
    );

    blocTest<KanbansBloc, KanbansState>(
      'emits [KanbansState.loaded(tFullfilList)] '
      'when KanbansEvent.loadAllKanbans() added to event and '
      'get data from usecase',
      setUp: () => when(mockReadAllKanbans.call(any))
          .thenAnswer((_) async => Right(tKanbanFullfilList)),
      build: () => bloc,
      act: (bloc) => bloc.add(const KanbansEvent.loadAllKanbans()),
      expect: () => <KanbansState>[
        KanbansState.loaded(tKanbanFullfilList),
      ],
      verify: (_) => {
        verify(mockReadAllKanbans.call(NoParams())),
        verifyNoMoreInteractions(mockReadAllKanbans),
      },
    );

    blocTest<KanbansBloc, KanbansState>(
      'emits [KanbansState.empty()] '
      'when KanbansEvent.loadAllKanbans() added to event and '
      'get no data from usecase',
      setUp: () => when(mockReadAllKanbans.call(any))
          .thenAnswer((_) async => const Right(tKanbanEmptyList)),
      build: () => bloc,
      act: (bloc) => bloc.add(const KanbansEvent.loadAllKanbans()),
      expect: () => <KanbansState>[
        const KanbansState.empty(),
      ],
      verify: (_) => {
        verify(mockReadAllKanbans.call(NoParams())),
        verifyNoMoreInteractions(mockReadAllKanbans),
      },
    );

    blocTest<KanbansBloc, KanbansState>(
      'emits [KabnansState.error(LOCAL_DATASOURCE_FAILURE_MESSAGE)] '
      'when KanbansEvent.loadKanbans added to event and catch '
      'a Failure from usecase.',
      setUp: () => when(mockReadAllKanbans.call(any))
          .thenAnswer((_) async => Left(LocalDatabaseFailure())),
      build: () => bloc,
      act: (bloc) => bloc.add(const KanbansEvent.loadAllKanbans()),
      expect: () => <KanbansState>[
        const KanbansState.error(LOCAL_DATASOURCE_FAILURE_MESSAGE),
      ],
      verify: (_) => {
        verify(mockReadAllKanbans.call(NoParams())),
        verifyNoMoreInteractions(mockReadAllKanbans),
      },
    );
  });

  group('updateKanban', () {
    final tUpdateKanban = Kanban(
      name: 'newName',
      key: tKey,
      createAt: moonLanding,
      status: KanbanStatus.todo,
      order: 1,
    );
    final tUpdatedKanbanList = IListConst<Kanban>([tUpdateKanban]);
    final tUpdateKanbanParams = UpdateKanbanParams(
      modelToUpdate: tUpdateKanban.toKanbanModel(),
    );

    blocTest<KanbansBloc, KanbansState>(
      'emits [KanbansState.loaded(tFullfilList)] '
      'when KanbansEvent.update(tKanban) added to event and '
      'get data from usecase',
      setUp: () => when(mockUpdateKanban.call(any))
          .thenAnswer((_) async => Right(tUpdatedKanbanList)),
      seed: () => KanbansState.loaded(tKanbanFullfilList),
      build: () => bloc,
      act: (bloc) => bloc.add(
        KanbansEvent.updateKanban(params: tUpdateKanbanParams),
      ),
      expect: () => <KanbansState>[
        KanbansState.loaded(tUpdatedKanbanList),
      ],
      verify: (_) => {
        verify(mockUpdateKanban.call(tUpdateKanbanParams)),
        verifyNoMoreInteractions(mockReadAllKanbans),
      },
    );

    blocTest<KanbansBloc, KanbansState>(
      'emits [KabnansState.error(LOCAL_DATASOURCE_FAILURE_MESSAGE)] '
      'when KanbansEvent.loadKanbans added to event and catch '
      'a Failure from usecase.',
      setUp: () => when(mockUpdateKanban.call(any))
          .thenAnswer((_) async => Left(LocalDatabaseFailure())),
      build: () => bloc,
      act: (bloc) => bloc.add(
        KanbansEvent.updateKanban(params: tUpdateKanbanParams),
      ),
      expect: () => <KanbansState>[
        const KanbansState.error(LOCAL_DATASOURCE_FAILURE_MESSAGE),
      ],
      verify: (_) => {
        verify(mockUpdateKanban.call(tUpdateKanbanParams)),
        verifyNoMoreInteractions(mockReadAllKanbans),
      },
    );
  });
}
