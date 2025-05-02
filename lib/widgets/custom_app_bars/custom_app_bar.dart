import 'package:flutter/material.dart';
import 'package:short_path/constants/colors_app/colors_app.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleName;

  const CustomAppBar({super.key, required this.titleName});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsApp.appBarBackgroundColor,
      iconTheme: IconThemeData(color: ColorsApp.appBarHeaderColor),
      shadowColor: ColorsApp.appBarShadowColor,
      elevation: 4,
      title: Text(titleName),
      titleTextStyle: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: ColorsApp.appBarHeaderColor,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
