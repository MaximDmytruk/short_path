import 'package:short_path/models/point.dart';

class DataModel {
  final String id;
  final List<String> field;
  final Point start;
  final Point end;

  DataModel({
    required this.id,
    required this.field,
    required this.start,
    required this.end,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      id: json['id'],
      field: List<String>.from(json['field']),
      start: Point.fromJson(json['start']),
      end: Point.fromJson(json['end']),
    );
  }
}
