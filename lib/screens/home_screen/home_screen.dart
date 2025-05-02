import 'package:flutter/material.dart';
import 'package:short_path/constants/colors_app/colors_app.dart';
import 'package:short_path/screens/process_screen/process_screen.dart';
import 'package:short_path/widgets/custom_app_bars/custom_app_bar.dart';
import 'package:short_path/widgets/custom_buttons/custom_button.dart';

class HomeScreen extends StatefulWidget {
  static final String routeName = '/home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void startProcessAction() =>
      Navigator.of(context).pushNamed(ProcessScreen.routeName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(titleName: 'Home screen'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Text(
              'Set valid API base URL in order to continue',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: ColorsApp.textColor,
              ),
            ),
            Row(
              spacing: 16.0,
              children: [
                Icon(Icons.compare_arrows, color: ColorsApp.textColor),
                Expanded(child: TextField()),
              ],
            ),
            Spacer(),
            CustomButton(
              name: 'Start counting process',
              onPressed: startProcessAction,
            ),
          ],
        ),
      ),
    );
  }
}
