import 'package:get_it/get_it.dart';
import 'package:home_challenge_kanban/core/database/drift/drift_database_impl.dart';
import 'package:home_challenge_kanban/core/database/kanban_database.dart';

import 'package:home_challenge_kanban/features/kanban_list/data/datasources/crud_kanban_local_datasource.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/datasources/crud_kanban_local_datasource_impl.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/repositories/crud_kanban_repository_impl.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/repositories/crud_kanban_repository.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/create_kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/delete_kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/read_all_kanbans.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/update_kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/bloc/kanbans_bloc.dart';
import 'package:home_challenge_kanban/features/timer/data/datasource/timer_local_datasource.dart';
import 'package:home_challenge_kanban/features/timer/data/datasource/timer_local_datasource_impl.dart';
import 'package:home_challenge_kanban/features/timer/data/repositories/timer_repository_impl.dart';
import 'package:home_challenge_kanban/features/timer/data/timer_services/stream_timer_service_impl.dart';
import 'package:home_challenge_kanban/features/timer/data/timer_services/timer_service.dart';
import 'package:home_challenge_kanban/features/timer/domain/repositories/timer_repository.dart';
import 'package:home_challenge_kanban/features/timer/domain/usecases/timer_usecases.dart';
import 'package:home_challenge_kanban/features/timer/presentation/bloc/timer_bloc.dart';

final sl = GetIt.instance;

void init() {
  // ! Features
  // Kanbans
  sl
    ..registerFactory(
      () => KanbansBloc(
        createKanban: sl(),
        deleteKanban: sl(),
        readAllKanbans: sl(),
        updateKanban: sl(),
      ),
    )

    // UseCases
    ..registerLazySingleton(() => CreateKanban(sl()))
    ..registerLazySingleton(() => DeleteKanban(sl()))
    ..registerLazySingleton(() => ReadAllKanbans(sl()))
    ..registerLazySingleton(() => UpdateKanban(sl()))

    // Repository
    ..registerLazySingleton<CrudKanbanRepository>(
      () => CrudKanbanRepositoryImpl(localDatasource: sl()),
    )

    // Data sources
    ..registerLazySingleton<CrudKanbanLocalDatasource>(
      () => CrudKanbanLocalDatasourceImpl(localDatabase: sl()),
    )

    // Timer Service
    ..registerFactory(() => TimerBloc(
          pauseTimer: sl(),
          startTimer: sl(),
          stopTimer: sl(),
        ))

    // UseCases
    ..registerLazySingleton(() => PauseTimer(sl()))
    ..registerLazySingleton(() => StartTimer(sl()))
    ..registerLazySingleton(() => StopTimer(sl()))

    // Repository
    ..registerLazySingleton<TimerRepository>(
      () => TimerRepositoryImpl(localDatasource: sl()),
    )

    // Data sources
    ..registerLazySingleton<TimerLocalDatasource>(
      () => TimerLocalDatasourceImpl(timerService: sl()),
    )
    // ! External
    // Database
    ..registerLazySingleton<KanbanDatabase>(() => DriftDatabaseImpl())
    // TimerService
    ..registerLazySingleton<TimerService>(() => StreamTimerServiceImpl());
}
