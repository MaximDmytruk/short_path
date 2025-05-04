import 'package:short_path/models/point.dart';

class Answer {
  final int width;
  final int height;
  final Point start;
  final Point end;
  final List<Point> blocsCell;
  final List<Point> shortPath;
  Answer({
    required this.width,
    required this.height,
    required this.start,
    required this.end,
    List<Point>? shortPath,
    List<Point>? blocsCell,
  }) : shortPath = shortPath ?? [],
       blocsCell = blocsCell ?? [];
}
