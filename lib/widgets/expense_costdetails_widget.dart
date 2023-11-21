import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CostDetailsWidget extends StatelessWidget {
  const CostDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color(0xff292929),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 10),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Entertainment',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$ 600",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Gap(20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Groceries",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "\$ 200",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              divider(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Work Breakfast",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "\$ 200",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              divider(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Work Lunch",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "\$ 200",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Gap(10),
      Positioned(
          top: 20,
          left: 0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffFFB800),
            ),
            width: 12,
            height: 110,
          )),
    ]);
  }

  Widget divider() {
    return const Divider(
      height: 2,
      color: Colors.black,
      thickness: 2,
      indent: 0,
      endIndent: 5,
    );
  }
}
