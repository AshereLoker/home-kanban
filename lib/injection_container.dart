import 'package:get_it/get_it.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/database/drift_database_impl.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/database/kanban_database.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/datasources/crud_kanban_local_datasource.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/repositories/crud_kanban_repository_impl.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/repositories/kanban_repository.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/create_kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/delete_kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/read_all_kanbans.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/update_kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/bloc/kanbans_bloc.dart';

final sl = GetIt.instance;

void init() {
  // ! Features
  // Kanbans
  sl
    ..registerFactory(
      () => KanbansBloc(
        createKanban: sl.call(),
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
      () => CrudKanbanLocalDataSourceImpl(database: sl()),
    )

    // ! External
    ..registerLazySingleton<KanbanDatabase>(() => DriftDatabaseImpl());
}
