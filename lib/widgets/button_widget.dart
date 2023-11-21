import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.buttonColor,
    required this.width,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final Color buttonColor;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        // gradient: const LinearGradient(
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //     colors: [
        //       Color(0xff01AA45),
        //       Colors.green,
        //     ]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff01AA45),
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
