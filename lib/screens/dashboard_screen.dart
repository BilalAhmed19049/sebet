import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/colors.dart';
import '../widgets/elevatedbutton_widget.dart';
import '../widgets/navigation_drawer_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset(
                'assets/images/Combined-Shape.png',
                // Replace this with the path to your image
                width: 24, // Adjust the width as needed
                height: 24, // Adjust the height as needed
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ),
        backgroundColor: Colors.black,
        drawer: NavigationDrawerWidget(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(child: Image.asset('assets/images/Group 127.png')),
              Expanded(child: Image.asset('assets/images/Frame 12.png')),
              Gap(20),
              CustomElevatedButton(
                color: CColors.green7,
              text: 'TRANSACTIONS',
              image: 'assets/images/Vector.png',
              circleColor: CColors.green5,
              isTrue: false,
              onPressed: () {},
            ),
            Gap(20),
            CustomElevatedButton(
              color: CColors.red9,
              text: 'REPORTS',
              image: 'assets/images/Paperbnw.png',
              circleColor: CColors.red7,
              isTrue: true,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
