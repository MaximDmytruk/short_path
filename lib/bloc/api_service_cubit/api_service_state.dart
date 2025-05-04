part of 'api_service_cubit.dart';

enum ApiServiceStatus { initial, loaded, loading, error,sent }

@freezed
class ApiServiceState with _$ApiServiceState {
  const factory ApiServiceState({
    @Default(ApiServiceStatus.initial) ApiServiceStatus status,
    @Default([]) List<DataModel> data,
    String? error,
  }) = _ApiServiceState;
}
