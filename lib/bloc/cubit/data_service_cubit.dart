import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:short_path/bloc/api_service_cubit/api_service_cubit.dart';
import 'package:short_path/models/answer.dart';
import 'package:short_path/models/data.dart';

part 'data_service_state.dart';
part 'data_service_cubit.freezed.dart';

class DataServiceCubit extends Cubit<DataServiceState> {
  DataServiceCubit()
    : super(DataServiceState(status: DataServiceStatus.initial));

  void setAnswer({required List<DataModel> data}) {
    emit(state.copyWith(status: DataServiceStatus.loading));
    List<Answer> _answers = [];

    _answers =
        data.map((element) {
          final int widthMap = element.field.first.length;
          final int heightMap = element.field.length;
          return Answer(
            field: element.field,
            width: widthMap,
            height: heightMap,
            start: element.start,
            end: element.end,
          );
        }).toList();

    emit(state.copyWith(status: ApiServiceStatus.loaded, answers: _answers));
  }
}
