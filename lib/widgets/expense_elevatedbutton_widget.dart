import 'package:flutter/material.dart';

class ExpenseButtonWidget extends StatelessWidget {
  ExpenseButtonWidget(
      {super.key,
      required this.color,
      required this.onPressed,
      required this.text,
      required this.isTrue});

  final Color color;
  final VoidCallback onPressed;
  final String text;
  bool isTrue = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: isTrue
              ? const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                      Color(0xff01AA45),
                      Color(0xff00702D),
                    ])
              : const LinearGradient(colors: [
                  Color(0xffED3237),
                  Color(0xffA01D20),
                ])),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        child: Text(
          text,
          style: TextStyle(),
        ),
      ),
    );
  }
}
