import 'package:dio/dio.dart';
import 'package:short_path/models/answer.dart';
import 'package:short_path/models/data.dart';

class DataRepository {
  final Dio _dio = Dio();

  Future<List<DataModel>> fetchData({required String url}) async {
    final Response response = await _dio.get(url);
    if (response.statusCode == 200) {
      final List data = response.data['data'];
      return data.map((json) => DataModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<void> sendAnswers(List<Answer> answers) async {
    final String url = 'https://flutter.webspark.dev/';

    final List<Map<String, dynamic>> data =
        answers.map((answer) => answer.toJson()).toList();

    await _dio.post(url, data: data);
  }
}
