import 'package:flutter/material.dart';
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
    return Scaffold(appBar: CustomAppBar(titleName: 'Preview screen'));
  }
}
