import 'package:get_it/get_it.dart';
import 'package:home_challenge_kanban/core/database/drift/drift_database_impl.dart';
import 'package:home_challenge_kanban/core/database/kanban_database.dart';
import 'package:home_challenge_kanban/features/export_kanban/data/datasources/export_kanban_local_datasource.dart';
import 'package:home_challenge_kanban/features/export_kanban/data/datasources/export_kanban_local_datasource_impl.dart';
import 'package:home_challenge_kanban/features/export_kanban/data/export_service/csv_export_service_impl.dart';
import 'package:home_challenge_kanban/features/export_kanban/data/export_service/export_service.dart';
import 'package:home_challenge_kanban/features/export_kanban/data/repositories/export_kanban_repository_impl.dart';
import 'package:home_challenge_kanban/features/export_kanban/domain/repositories/export_kanban_repository.dart';
import 'package:home_challenge_kanban/features/export_kanban/domain/usecases/export_kanban_usecases.dart';
import 'package:home_challenge_kanban/features/export_kanban/presentation/bloc/export_kanban_bloc.dart';

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
  _initKanbansFeature();

  // Timer Service
  _initTimerFeature();

  // Export Kanban
  _initExportFeature();

  // ! External
  // Database
  sl
    ..registerLazySingleton<KanbanDatabase>(() => DriftDatabaseImpl())
    // TimerService
    ..registerLazySingleton<TimerService>(() => StreamTimerServiceImpl())
    // ExportService
    ..registerLazySingleton<ExportService>(() => CsvExportServiceImpl());
}

void _initKanbansFeature() {
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
      () => CrudKanbanRepositoryImpl(datasource: sl()),
    )

    // Data sources
    ..registerLazySingleton<CrudKanbanLocalDatasource>(
      () => CrudKanbanLocalDatasourceImpl(database: sl()),
    );
}

void _initTimerFeature() {
  sl
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
    );
}

void _initExportFeature() {
  sl
    ..registerFactory(() => ExportKanbanBloc(
          exportSingleKanban: sl(),
          exportMultipleKanbans: sl(),
        ))

    // UseCases
    ..registerLazySingleton(() => ExportSingleKanban(sl()))
    ..registerLazySingleton(() => ExportMultipleKanbans(sl()))

    // Repository
    ..registerLazySingleton<ExportKanbanRepository>(
      () => ExportKanbanRepositoryImpl(datasource: sl()),
    )

    // Data sources
    ..registerLazySingleton<ExportKanbanLocalDatasource>(
      () =>
          ExportKanbanLocalDatasourceImpl(exportService: sl(), database: sl()),
    );
}
