import 'package:flutter/material.dart';

class CostWidget extends StatelessWidget {
  CostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      decoration: const BoxDecoration(
          color: Color(0xff292929),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text(
            "\$ 600",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const Text(
            "\$ 200",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          divider(),
          const Text(
            "\$ 200",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          divider(),
          const Text(
            "\$ 200",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget divider() {
    return Divider(
      height: 2,
      color: Colors.black,
      thickness: 2,
      indent: 0,
      endIndent: 5,
    );
  }
}
