import 'package:flutter/material.dart';

class FieldBarWidget extends StatelessWidget {
  const FieldBarWidget(
      {super.key,
      required this.icon,
      required this.onPressed,
      required this.fillColor,
      required this.textColor,
      required this.iconColor,
      required this.text});

  final Icon icon;
  final Color fillColor;
  final Color textColor;
  final Color iconColor;
  final String text;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          hintText: text,
          hintStyle: TextStyle(color: textColor, fontWeight: FontWeight.normal),
          suffixIcon: IconButton(
            color: iconColor,
            onPressed: onPressed,
            icon: icon,
          ),
        ),
      ),
    );
  }
}
