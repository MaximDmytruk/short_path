import 'package:flutter/material.dart';
import 'package:short_path/constants/colors_app/colors_app.dart';
import 'package:short_path/widgets/custom_app_bars/custom_app_bar.dart';

class PreviewScreen extends StatefulWidget {
  static final String routeName = '/preview_screen';

  const PreviewScreen({super.key});

  @override
  State<PreviewScreen> createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(titleName: 'Preview screen'),
      body: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 16,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: Center(
                  child: Text('index $index', textAlign: TextAlign.center),
                ),
              );
            },
          ),
          Text(
            '(0,0) => (0,1) => (0,2)',
            style: TextStyle(color: ColorsApp.textColor, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
