import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/button_widget.dart';
import '../widgets/dropdownfield_widget.dart';
import '../widgets/expense2_row_widget.dart';
import '../widgets/textbutton_widget.dart';

class ExpenseScreen2 extends StatelessWidget {
  const ExpenseScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Add Expense',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                children: [
                  Gap(15),
                  Divider(
                    height: 1,
                    thickness: 2,
                    color: Colors.grey.shade900,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButtonWidget(
                        onPressed: () {},
                        text: 'Custom Categories',
                        color: Color(0xff01AA45),
                        fontSize: 15,
                        withIcon: true,
                      ),
                    ],
                  ),
                  Gap(15),
                  const DropdownWidget(
                    // height: 50,
                    width: double.infinity,
                    suffixIcon: Icons.keyboard_arrow_down,
                    suffixIconColor: Colors.black,
                    items: [
                      DropdownMenuItem(
                          value: 'Option 1', child: Text('Option 1')),
                      DropdownMenuItem(
                          value: 'Option 2', child: Text('Option 2')),
                    ],
                    fillColor: Colors.white,
                  ),
                  Gap(30),
                  RowWidget(
                    text: 'Clothing',
                    fillColor: Colors.grey.shade900,
                    textColor: Colors.white,
                  ),
                  RowWidget(
                    text: 'Children',
                    fillColor: Colors.grey.shade900,
                    textColor: Colors.white,
                  ),
                  RowWidget(
                    text: 'Spouse',
                    fillColor: Colors.grey.shade900,
                    textColor: Colors.white,
                  ),
                  RowWidget(
                    text: 'Uniform',
                    fillColor: Colors.grey.shade900,
                    textColor: Colors.white,
                  ),
                  Gap(70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButtonWidget(
                        onPressed: () {},
                        text: 'add more',
                        color: Colors.green,
                        fontSize: 15,
                        withIcon: false,
                      ),
                    ],
                  ),
                  Gap(40),
                  ElevatedButtonWidget(
                    onPressed: () {},
                    text: 'Add',
                    buttonColor: Color(0xff01AA45),
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
