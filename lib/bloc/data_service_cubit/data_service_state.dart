part of 'data_service_cubit.dart';

enum DataServiceStatus { initial, loaded, calculateInProgress }

@freezed
class DataServiceState with _$DataServiceState {
  const factory DataServiceState({
    @Default(DataServiceStatus.initial) status,
    @Default([]) List<Answer> answers,
    @Default(0) int progress,
  }) = _DataServiceState;
}
