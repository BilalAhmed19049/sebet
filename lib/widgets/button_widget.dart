import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.buttonColor,
    required this.width,
    required this.height,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final Color buttonColor;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff01AA45),
              Colors.green,
            ]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
            // Set the background color of the button
            ),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white), // Set the text color of the button
        ),
      ),
    );
  }
}
