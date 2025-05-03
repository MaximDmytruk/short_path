part of 'data_cubit.dart';

@immutable
sealed class DataState {}

final class DataInitial extends DataState {}

final class DataInitialWithData extends DataState {
  final List<DataModel> data;

  DataInitialWithData({required this.data});
}

final class DataLoading extends DataState {}

final class DataCalculateInProgress extends DataState {}
