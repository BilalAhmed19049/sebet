import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  TextButtonWidget(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.color,
      required this.fontSize,
      required this.withIcon});

  final VoidCallback onPressed;
  final String text;
  final Color color;
  final double fontSize;
  bool withIcon = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: withIcon
            ? Row(children: [
                Text(
                  text,
                  style: TextStyle(
                    color: color,
                    fontSize: fontSize,
                  ),
                ),
              ])
            : Row(
                children: [
                  Icon(
                    Icons.add,
                    color: color,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      color: color,
                      fontSize: fontSize,
                    ),
                  ),
                ],
              ));
  }
}
