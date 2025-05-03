import 'package:short_path/models/point.dart';

class Answer {
  final List<String> field;
  final int width;
  final int height;
  final Point start;
  final Point end;

  Answer({
    required this.field,
    required this.width,
    required this.height,
    required this.start,
    required this.end,
  });
}
