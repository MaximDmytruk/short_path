import 'package:flutter/material.dart';
import 'package:short_path/constants/colors_app/colors_app.dart';
import 'package:short_path/screens/widgets/custom_app_bar/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  static final String routeName = '/home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.backgroundColor,
      appBar: CustomAppBar(titleName: 'Home screen'),
    );
  }
}
