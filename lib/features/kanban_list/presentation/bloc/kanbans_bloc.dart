import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';

part 'kanbans_bloc.freezed.dart';
part 'kanbans_event.dart';
part 'kanbans_state.dart';

class KanbansBloc extends Bloc<KanbansEvent, KanbansState> {
  KanbansBloc() : super(const KanbansState()) {
    on<KanbansEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
