import 'package:short_path/models/point.dart';

class Answer {
  final String id;
  final int width;
  final int height;
  final Point start;
  final Point end;
  final List<Point> blocsCell;
  final List<Point> shortPath;
  Answer({
    required this.id,
    required this.width,
    required this.height,
    required this.start,
    required this.end,
    List<Point>? shortPath,
    List<Point>? blocsCell,
  }) : shortPath = shortPath ?? [],
       blocsCell = blocsCell ?? [];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'width': width,
      'height': height,
      'start': start.toJson(),
      'end': end.toJson(),
      'blocsCell': blocsCell.map((point) => point.toJson()).toList(),
      'shortPath': shortPath.map((point) => point.toJson()).toList(),
    };
  }

  @override
  String toString() =>
      shortPath.map((point) => '(${point.x}, ${point.y})').join('->');
}
