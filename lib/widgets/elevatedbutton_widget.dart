import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton(
      {super.key,
      required this.color,
      required this.text,
      required this.image,
      required this.circleColor,
      required this.isTrue,
      required this.onPressed});

  final Color color;
  final String text;
  final String image;
  final Color circleColor;
  bool isTrue = true;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )),
      child: Container(
        //color: Colors.green,
        height: 115,
        width: double.infinity,

        // decoration: isTrue? const BoxDecoration(
        //   gradient: LinearGradient(
        //       colors: [
        //         Color(0xffED3237),
        //         Color(0xffA01D20),
        //       ]
        //
        //   )
        // ):
        // const BoxDecoration(
        //     gradient: LinearGradient(
        //         colors: [
        //           Color(0xff01AA45),
        //           Color(0xff00702D),
        //         ]
        //
        //     )
        // ),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.transparent,
              alignment: Alignment.center,
              transformAlignment: Alignment.center,
              child: isTrue
                  ? Container(
                      width: 80,
                      height: 80,
                      child: Image.asset(image),
                      decoration: BoxDecoration(
                        color: Color(0xffED3237),
                        borderRadius: BorderRadius.circular(104),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Color(0xffA01D20),
                            Color(0xffED3237),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red.shade900,
                            offset: Offset(0, 1),
                            blurRadius: 0,
                            spreadRadius: 0.0,
                          ),
                          BoxShadow(
                            color: Colors.red.shade900,
                            offset: Offset(1, 0),
                            blurRadius: 2,
                            spreadRadius: 0.0,
                          ),
                        ],
                      ),
                    )
                  : Container(
                      width: 80,
                      height: 80,
                      child: Image.asset(image),
                      decoration: BoxDecoration(
                        color: Colors.green.shade900,
                        borderRadius: BorderRadius.circular(104),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Color(0xff01AA45),
                            Color(0xff00702D),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green.shade900,
                            offset: Offset(0, 1),
                            blurRadius: 0,
                            spreadRadius: 0.0,
                          ),
                          BoxShadow(
                            color: Colors.green.shade900,
                            offset: Offset(1, 0),
                            blurRadius: 2,
                            spreadRadius: 0.0,
                          ),
                        ],
                      ),
                    ),
            ),
            Gap(20),
            Text(
              text,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
