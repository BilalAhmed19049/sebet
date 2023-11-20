import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget(
      {super.key,
      required this.text,
      required this.fillColor,
      required this.textColor});

  final String text;
  final Color fillColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Text(
          text,
          style: TextStyle(color: textColor),
        )),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                fillColor: fillColor,
                filled: true,
                hintText: ' \$0.00',
                hintStyle: TextStyle(color: Colors.white)),
          ),
        )
      ],
    );
  }
}
