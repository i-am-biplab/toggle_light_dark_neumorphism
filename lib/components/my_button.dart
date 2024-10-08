import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final Color? buttonColor;
  final String buttonName;
  final Color? buttonNameColor;

  const MyButton({
    super.key,
    required this.buttonColor,
    required this.buttonName,
    required this.buttonNameColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(3),
        ),
        child: Text(
          buttonName,
          style: TextStyle(color: buttonNameColor, fontSize: 16),
        ),
      ),
    );
  }
}
