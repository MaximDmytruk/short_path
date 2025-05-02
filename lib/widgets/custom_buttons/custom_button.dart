import 'package:flutter/material.dart';
import 'package:short_path/constants/colors_app/colors_app.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 14),
          backgroundColor: ColorsApp.buttonBackgroundColor,
          side: BorderSide(color: ColorsApp.buttonBorderSideColor, width: 2.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),

        onPressed: onPressed,
        child: Text(
          name,
          style: TextStyle(
            color: ColorsApp.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
