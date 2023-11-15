import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/searchbar_widget.dart';

class ExpenseScreen extends StatelessWidget {
  const ExpenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Expense',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        //iconTheme: IconThemeData(color: Colors.white),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset(
                'assets/images/Arrow - Left.png',
                // Replace this with the path to your image
                width: 50, // Adjust the width as needed
                height: 50, // Adjust the height as needed
              ),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
              },
            );
          },
        ),
      ),
      body: Column(
        children: [
          Gap(20),
          Divider(
            height: 1,
            thickness: 2,
            color: Colors.grey.shade900,
          ),
          Gap(20),
          SearchBarWidget(),
          IconButton(onPressed: onPressed, icon: icon)
        ],
      ),
    );
  }
}
