import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'api_service_state.dart';

class ApiServiceCubit extends Cubit<ApiServiceState> {
  final Dio _dio = Dio();

  ApiServiceCubit() : super(ApiServiceInitial());

  Future<void> fetchData({required String url}) async {
    emit(ApiServiceLoading());

    try {
      Future.delayed(Duration(seconds: 2));
      emit(ApiServiceLoaded());
    } catch (e) {
      emit(ApiServiceError(error: 'Some problem: $e'));
    }
  }
}
