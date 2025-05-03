part of 'home_screen_cubit.dart';

@immutable
sealed class HomeScreenState {}

final class HomeScreenInitial extends HomeScreenState {}

final class HomeScreenLoading extends HomeScreenState {}

final class HomeScreenLoaded extends HomeScreenState {
  final List<DataModel> data;
  HomeScreenLoaded(this.data);
}

final class HomeScreenError extends HomeScreenState {
  final String error;

  HomeScreenError({required this.error});
}
