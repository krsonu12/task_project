import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final Color titleColor;
  final Color buttonColor;
  final VoidCallback onPressed;
  const AppButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.titleColor,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          backgroundColor: buttonColor),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(color: titleColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
