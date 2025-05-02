import 'package:flutter/material.dart';
import 'package:short_path/constants/colors_app/colors_app.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleName;

  const CustomAppBar({super.key, required this.titleName});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsApp.appBarBackgroundColor,
      title: Text(titleName),
      titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
