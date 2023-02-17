part of 'kanbans_bloc.dart';

@freezed
class KanbansEvent with _$KanbansEvent {
  const factory KanbansEvent.initState() = _InitState;

  const factory KanbansEvent.createKanban({
    required String name,
    String? description,
  }) = _CreateKanban;

  const factory KanbansEvent.readKanban({required String key}) = _ReadKanban;

  const factory KanbansEvent.updateKanban({required Kanban kanban}) =
      _UpdateKanban;

  const factory KanbansEvent.deleteKanban({required String key}) =
      _DeleteKanban;
}
