part of 'initial_list_bloc.dart';

@freezed
class InitialListEvent with _$InitialListEvent {
  const factory InitialListEvent.initialList({
    required InitialListModel initialListModel
  }) = InitialList;
}