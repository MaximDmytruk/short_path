import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:short_path/models/data.dart';
import 'package:short_path/repository/data_repository.dart';

part 'api_service_state.dart';
part 'api_service_cubit.freezed.dart';

class ApiServiceCubit extends Cubit<ApiServiceState> {
  final DataRepository repository;

  ApiServiceCubit({required this.repository})
    : super(ApiServiceState(status: ApiServiceStatus.initial));

  Future<void> getData({required String url}) async {
    emit(state.copyWith(status: ApiServiceStatus.loading));

    try {
      final List<DataModel> data = await repository.fetchData(url: url);
      emit(state.copyWith(status: ApiServiceStatus.loaded, data: data));
    } catch (e) {
      emit(
        state.copyWith(
          status: ApiServiceStatus.error,
          error: 'Failed to load data',
        ),
      );
    }
  }
}
