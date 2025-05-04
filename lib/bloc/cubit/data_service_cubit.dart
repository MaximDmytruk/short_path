import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:short_path/bloc/api_service_cubit/api_service_cubit.dart';
import 'package:short_path/models/answer.dart';
import 'package:short_path/models/data.dart';

import '../../models/point.dart';

part 'data_service_state.dart';
part 'data_service_cubit.freezed.dart';

class DataServiceCubit extends Cubit<DataServiceState> {
  DataServiceCubit()
    : super(DataServiceState(status: DataServiceStatus.initial));

  void setAnswer({required List<DataModel> data}) {
    emit(state.copyWith(status: DataServiceStatus.loading));
    List<Answer> answers = [];

    answers =
        data.map((element) {
          final int widthMap = element.field.first.length;
          final int heightMap = element.field.length;

          //Find Blocked Points
          List<Point> blocs = [];
          for (int y = 0; y < element.field.length; y++) {
            String row = element.field[y];
            for (int x = 0; x < row.length; x++) {
              if (row[x] == 'X') {
                blocs.add(Point(x: x, y: y));
              }
            }
          }

          final List<Point> shortPath = findShortestPath(
            width: widthMap,
            height: heightMap,
            start: element.start,
            end: element.end,
            blocked: blocs,
          );
          print('');
          print('Shortpath');
          print(shortPath);

          return Answer(
            width: widthMap,
            height: heightMap,
            start: element.start,
            end: element.end,
            blocsCell: blocs,
            shortPath: shortPath,
          );
        }).toList();

    emit(state.copyWith(status: ApiServiceStatus.loaded, answers: answers));
  }

  List<Point> findShortestPath({
    required int width,
    required int height,
    required Point start,
    required Point end,
    required List<Point> blocked,
  }) {
    final List<Point> directions = [
      Point(x: 1, y: 0), // right
      Point(x: -1, y: 0), // left
      Point(x: 0, y: 1), // down
      Point(x: 0, y: -1), // up
      Point(x: 1, y: 1), // down-right
      Point(x: 1, y: -1), // up-right
      Point(x: -1, y: 1), // down-left
      Point(x: -1, y: -1), // up-left
    ];

    final Set<String> visitedPoint = {};
    //
    final List<List<Point>> queue = [
      [start],
    ];
    final Set<String> blockedSet = blocked.map((b) => '${b.x},${b.y}').toSet();

    String pointKey(Point p) => '${p.x},${p.y}';

    while (queue.isNotEmpty) {
      final List<Point> path = queue.removeAt(0);
      final Point current = path.last;
      final String currentKey = pointKey(current);

      if (visitedPoint.contains(currentKey)) continue;
      visitedPoint.add(currentKey);

      if (current.x == end.x && current.y == end.y) {
        return path;
      }

      for (Point dir in directions) {
        int x = current.x;
        int y = current.y;

        while (true) {
          x += dir.x;
          y += dir.y;

          if (x < 0 || x >= width || y < 0 || y >= height) break;
          if (blockedSet.contains('$x,$y')) break;

          final Point next = Point(x: x, y: y);
          final String nextKey = pointKey(next);

          if (visitedPoint.contains(nextKey)) continue;

          queue.add([...path, next]);
          break;
        }
      }
    }

    return [];
  }
}
