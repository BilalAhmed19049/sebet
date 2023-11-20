import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'drawer_item.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 67,
              child: Row(
                children: [
                  Container(
                    height: 46,
                    width: 46,
                    child: Image.asset('assets/images/Group 138.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello!',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text('UserName', style: TextStyle(color: Colors.white))
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text('View Profile',
                          style: TextStyle(color: Colors.green))),
                ],
              ),
            ),
            divider(),

            const Padding(
              padding: EdgeInsets.only(top: 30, bottom: 30),
              child: DrawerItem(
                text: 'Dashboard',
                iconImage: 'assets/images/Category.png',
              ),
            ),

            divider(),
            Gap(20),

            const DrawerItem(
              text: 'Monthly Budget',
              iconImage: 'assets/images/Wallet.png',
            ),
            Gap(15),
            const DrawerItem(
              text: 'Sinking Funds',
              iconImage: 'assets/images/Chart.png',
            ),
            Gap(15),
            const DrawerItem(
              text: 'Debt Snowball',
              iconImage: 'assets/images/Group 148.png',
            ),
            Gap(20),
            divider(),
            Gap(20),
            const DrawerItem(
              text: 'Transactions',
              iconImage: 'assets/images/Swap.png',
            ),
            Gap(15),
            const DrawerItem(
              text: 'Weekly Schedule',
              iconImage: 'assets/images/Calendar.png',
            ),
            Gap(15),
            const DrawerItem(
              text: 'Reports',
              iconImage: 'assets/images/Paper.png',
            ),
            Gap(15),
            divider(),
            Gap(20),
            DottedBorder(
              color: Colors.grey.shade800,
              borderType: BorderType.RRect,
              radius: Radius.circular(10),
              strokeWidth: 2,
              dashPattern: [12, 4],
              child: Container(
                //height: 167,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Gap(20),
                    Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_box_rounded,
                            color: Colors.green,
                            size: 50,
                          )),
                    ),
                    Gap(25),
                    Text('Upload CVS File ',
                        style: TextStyle(color: Colors.grey.shade500)),
                    Text('of your bank tranactions',
                        style: TextStyle(color: Colors.grey.shade500)),
                    Gap(30),
                  ],
                ),
              ),
            ),
            Gap(20),
            divider(),
            //SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }

  Widget divider() {
    return Divider(
      height: 12,
      thickness: 2,
      color: Colors.grey.shade900,
      indent: 3,
      endIndent: 10,
    );
  }
}
