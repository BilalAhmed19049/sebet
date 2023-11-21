import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/colors.dart';
import '../widgets/addexpense_button_widget.dart';
import '../widgets/expense_cost_widget.dart';
import '../widgets/expense_costdetails_widget.dart';
import '../widgets/expense_elevatedbutton_widget.dart';
import '../widgets/fieldbar_widget.dart';

class ExpenseScreen extends StatelessWidget {
  const ExpenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CColors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Expense',
          style: TextStyle(
            color: CColors.white,
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
        child: SafeArea(
          child: Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [
                      Gap(20),
                      Divider(
                        height: 1,
                        thickness: 2,
                        color: Colors.grey.shade900,
                      ),
                      Gap(20),
                      FieldBarWidget(
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                        fillColor: Colors.grey.shade900,
                        textColor: CColors.white,
                        iconColor: CColors.white,
                        text: 'Search List',
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AddExpenseButton(),
                        ],
                      ),
                      const Text(
                          "YOU CAN'T ADD EXPENSE AS YOU HAVE ALREADY USED 100% OF YOUR EXPECTED INCOME",
                          style: TextStyle(
                            color: Color(0xffED3237),
                            fontSize: 13,
                          )),
                    ],
                  ),
                ),
                Gap(20),
                Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: Row(
                    children: [
                      Expanded(flex: 5, child: CostWidget()),
                      Gap(5),
                      Expanded(
                        flex: 2,
                        child: ExpenseButtonWidget(
                          color: CColors.green,
                          onPressed: () {},
                          text: 'Edit',
                          isTrue: true,
                        ),
                      ),
                      Gap(2),
                      Expanded(
                        flex: 2,
                        child: ExpenseButtonWidget(
                          color: Colors.red,
                          onPressed: () {},
                          text: 'Delete',
                          isTrue: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(10),
                const Padding(
                  padding: EdgeInsets.all(13.0),
                  child: CostDetailsWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
