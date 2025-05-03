part of 'api_service_cubit.dart';

@immutable
sealed class ApiServiceState {}

final class ApiServiceInitial extends ApiServiceState {}

final class ApiServiceLoading extends ApiServiceState {}

final class ApiServiceLoaded extends ApiServiceState {
  final List<DataModel> data;
  ApiServiceLoaded(this.data);
}

final class ApiServiceError extends ApiServiceState {
  final String error;

  ApiServiceError({required this.error});
}
