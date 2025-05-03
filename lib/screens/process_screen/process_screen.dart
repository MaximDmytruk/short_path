import 'package:flutter/material.dart';
import 'package:short_path/screens/result_list_screen/result_list_screen.dart';
import 'package:short_path/widgets/custom_app_bars/custom_app_bar.dart';
import 'package:short_path/widgets/custom_buttons/custom_button.dart';

class ProcessScreen extends StatefulWidget {
  static final String routeName = '/process_screen';

  const ProcessScreen({super.key});

  @override
  State<ProcessScreen> createState() => _ProcessScreenState();
}

class _ProcessScreenState extends State<ProcessScreen> {
  final int _percentageOfCompletion = 21;
  

  @override
  void initState() {
  
    super.initState();
  }

  void sendResultsAction() =>
      Navigator.of(context).pushNamed(ResultListScreen.routeName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(titleName: 'Process screen'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
        child: Column(
          children: [
            Expanded(
              child: Column(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'All calculations has finished, you can send your results to server',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    '$_percentageOfCompletion%',
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Container(width: 100, height: 100, color: Colors.amber),
                ],
              ),
            ),

            CustomButton(
              name: 'Send result to server',
              onPressed: sendResultsAction,
            ),
          ],
        ),
      ),
    );
  }
}
