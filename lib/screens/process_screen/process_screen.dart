import 'package:flutter/material.dart';
import 'package:short_path/widgets/custom_app_bars/custom_app_bar.dart';

class ProcessScreen extends StatefulWidget {
  static final String routeName = '/process_screen';

  const ProcessScreen({super.key});

  @override
  State<ProcessScreen> createState() => _ProcessScreenState();
}

class _ProcessScreenState extends State<ProcessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar(titleName: 'Process screen'));
  }
}
