import 'package:either_dart/either.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/core/usecases/usecase.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/kanban_usecases.dart';

part 'kanbans_bloc.freezed.dart';
part 'kanbans_event.dart';
part 'kanbans_state.dart';

typedef _Emit = Emitter<KanbansState>;

// ignore: constant_identifier_names
const String LOCAL_DATASOURCE_FAILURE_MESSAGE =
    'Failure: Can not operate with Local data source.';

class KanbansBloc extends Bloc<KanbansEvent, KanbansState> {
  final CreateKanban createKanban;
  final DeleteKanban deleteKanban;
  final ReadAllKanbans readAllKanbans;
  final UpdateKanban updateKanban;

  KanbansBloc({
    required this.createKanban,
    required this.deleteKanban,
    required this.readAllKanbans,
    required this.updateKanban,
  }) : super(const KanbansState.loading()) {
    on<_CreateKanban>(_createKanban);
    on<_DeleteKanban>(_deleteKanban);
    on<_InitState>(_initState);
    on<_LoadAllKanbans>(_loadAllKanbans);
    on<_UpdateKanban>(_updateKanban);
  }

  // Events section.
  Future<void> _createKanban(_CreateKanban event, _Emit emit) async {
    final kanbansEither = await createKanban.call(event.createParams);

    _fold(kanbansEither, emit);
  }

  Future<void> _deleteKanban(_DeleteKanban event, _Emit emit) async {
    final kanbansEither = await deleteKanban.call(event.key);

    _fold(kanbansEither, emit);
  }

  Future<void> _initState(_InitState event, _Emit emit) async {
    add(const KanbansEvent.loadAllKanbans());
  }

  Future<void> _loadAllKanbans(
    _LoadAllKanbans event,
    _Emit emit,
  ) async {
    if (state is! _KanbansLoading) {
      emit(const KanbansState.loading());
    }

    final kanbansEither = await readAllKanbans.call(NoParams());

    _fold(kanbansEither, emit);
  }

  Future<void> _updateKanban(_UpdateKanban event, _Emit emit) async {
    final kanbansEither = await updateKanban.call(event.params);

    _fold(kanbansEither, emit);
  }

  // Useful methods for Events.
  void _fold(Either<Failure, IList<Kanban>> either, _Emit emit) {
    either.fold(
      (failure) => emit(
        const KanbansState.error(LOCAL_DATASOURCE_FAILURE_MESSAGE),
      ),
      (kanbans) => kanbans.isEmpty
          ? emit(const KanbansState.empty())
          : emit(KanbansState.loaded(
              kanbans.sort((obj1, obj2) => obj1.order.compareTo(obj2.order)),
            )),
    );
  }
}
