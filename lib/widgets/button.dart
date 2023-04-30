import 'package:flutter/material.dart';
import 'package:xgrid_internship/utils/ThemeData.dart';

class Button extends StatelessWidget {
  final String text;
  final double width;
  final Color? color;
  final FontWeight fontWeight;
  final double fontSize;

  const Button(
      {super.key,
      required this.text,
      this.width = 0.9,
      this.color,
      this.fontWeight = FontWeight.w500,
      this.fontSize = 16});

  @override
  Widget build(BuildContext context) {
    Color buttonColor() {
      if (color == null) {
        if (Theme.of(context).brightness == Brightness.dark) {
          return Colors.black;
        } else {
          return Colors.black;
        }
      } else {
        return color!;
      }
    }

    Color buttonTextColor() {
      if (color == null) {
        if (Theme.of(context).brightness == Brightness.dark) {
          return Colors.white;
        } else {
          return Colors.white;
        }
      } else {
        return Colors.black;
      }
    }

    return Container(
      width: MediaQuery.of(context).size.width * width,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor(),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
          child: Text(
            text,
            style: TextStyle(
                color: buttonTextColor(),
                fontWeight: fontWeight,
                fontSize: fontSize),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
