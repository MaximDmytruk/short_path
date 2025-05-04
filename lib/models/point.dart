class Point {
  final int x;
  final int y;

  Point({required this.x, required this.y});

   @override
  String toString() => '($x,$y)';

  factory Point.fromJson(Map<String, dynamic> json) {
    return Point(x: json['x'], y: json['y']);
  }
}
