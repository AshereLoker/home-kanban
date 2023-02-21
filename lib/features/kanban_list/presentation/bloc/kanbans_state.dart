part of 'kanbans_bloc.dart';

@freezed
class KanbansState with _$KanbansState {
  const factory KanbansState.empty() = _KanbansEmpty;
  const factory KanbansState.loading() = _KanbansLoading;
  const factory KanbansState.loaded(IList<Kanban> kanbans) = _KanbansLoaded;
  const factory KanbansState.error(String message) = _KanbansError;
}
