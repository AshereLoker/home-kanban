part of 'kanbans_bloc.dart';

@freezed
class KanbansEvent with _$KanbansEvent {
  const factory KanbansEvent.initState() = _InitState;

  const factory KanbansEvent.loadAllKanbans() = _LoadAllKanbans;

  const factory KanbansEvent.createKanban({
    required CreateKanbanParams createParams,
  }) = _CreateKanban;

  const factory KanbansEvent.readKanban({required String key}) = _ReadKanban;

  const factory KanbansEvent.updateKanban({required UpdateKanbanParams params}) =
      _UpdateKanban;

  const factory KanbansEvent.deleteKanban({required String key}) =
      _DeleteKanban;
}
