import 'package:flutter/material.dart';
import 'package:short_path/constants/colors_app/colors_app.dart';
import 'package:short_path/screens/home_screen/home_screen.dart';
import 'package:short_path/screens/preview_screen/preview_screen.dart';
import 'package:short_path/screens/process_screen/process_screen.dart';
import 'package:short_path/screens/result_list_screen/result_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Short_Path',
      theme: ThemeData(scaffoldBackgroundColor: ColorsApp.backgroundColor),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        ProcessScreen.routeName: (context) => ProcessScreen(),
        ResultListScreen.routeName: (context) => ResultListScreen(),
        PreviewScreen.routeName: (context) => PreviewScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
