part of 'data_service_cubit.dart';

enum DataServiceStatus {initial, loading, calculateInProgress,}

@freezed
class DataServiceState with _$DataServiceState {
  const factory DataServiceState(
{
  @Default(DataServiceStatus.initial) status,
  @Default([]) List<Answer> answers,
}

  ) = _DataServiceState;
}
