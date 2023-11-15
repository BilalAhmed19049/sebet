import 'package:flutter/cupertino.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.text, required this.iconImage});

  final String text;
  final String iconImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(iconImage),
        SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: TextStyle(color: CupertinoColors.extraLightBackgroundGray),
        ),
      ],
    );
  }
}
