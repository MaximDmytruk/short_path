import 'package:flutter/material.dart';
import 'package:short_path/constants/colors_app/colors_app.dart';
import 'package:short_path/models/answer.dart';
import 'package:short_path/models/point.dart';
import 'package:short_path/widgets/custom_app_bars/custom_app_bar.dart';

class PreviewScreen extends StatefulWidget {
  static final String routeName = '/preview_screen';

  const PreviewScreen({super.key});

  @override
  State<PreviewScreen> createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  final Color startColor = Color(0xFF64FFDA);
  final Color endColor = Color(0xFF009688);
  final Color blocColor = Color(0xFF000000);
  final Color pathColor = Color(0xFF4CAF50);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Answer answer = ModalRoute.of(context)!.settings.arguments as Answer;
    return Scaffold(
      appBar: CustomAppBar(titleName: 'Preview screen'),
      body: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: answer.height * answer.width,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: answer.width,
            ),
            itemBuilder: (BuildContext context, int index) {
              int x = index % answer.width;
              int y = index ~/ answer.width;

              final Point point = Point(x: x, y: y);
              Color cellColor = Colors.white;

              if (answer.start.x == point.x && answer.start.y == point.y) {
                cellColor = startColor;
              } else if (answer.end.x == point.x && answer.end.y == point.y) {
                cellColor = endColor;
              } else if (answer.blocsCell.any(
                (pointBloc) => pointBloc.x == point.x && pointBloc.y == point.y,
              )) {
                cellColor = blocColor;
              } else if (answer.shortPath.any(
                (pointShortPath) =>
                    pointShortPath.x == point.x && pointShortPath.y == point.y,
              )) {
                cellColor = pathColor;
              } else {
                cellColor = Colors.white;
              }

              return Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                  color: cellColor,
                ),
                child: Center(
                  child: Text('($x,$y)', textAlign: TextAlign.center),
                ),
              );
            },
          ),
          Text(
            answer.toString(),
            style: TextStyle(color: ColorsApp.textColor, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
