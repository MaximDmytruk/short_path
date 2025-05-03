import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:short_path/models/data.dart';
import 'package:short_path/repository/data_repository.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  final DataRepository repository;

  HomeScreenCubit({required this.repository}) : super(HomeScreenInitial());

  Future<void> getData({required String url}) async {
    emit(HomeScreenLoading());

    try {
      final List<DataModel> data = await repository.fetchData(url: url);
      emit(HomeScreenLoaded(data));
    } catch (e) {
      emit(HomeScreenError(error: 'Failed to load data'));
    }
  }
}
