import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:short_path/models/data.dart';
import 'package:short_path/repository/data_repository.dart';

part 'api_service_state.dart';

class ApiServiceCubit extends Cubit<ApiServiceState> {
  final DataRepository repository;

  ApiServiceCubit({required this.repository}) : super(ApiServiceInitial());

  Future<void> getData({required String url}) async {
    emit(ApiServiceLoading());

    try {
      final List<DataModel> data = await repository.fetchData(url: url);
      emit(ApiServiceLoaded(data));
    } catch (e) {
      emit(ApiServiceError(error: 'Failed to load data'));
    }
  }
}
