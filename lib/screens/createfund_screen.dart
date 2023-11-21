import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/colors.dart';
import '../utils/constants.dart';
import '../widgets/button_widget.dart';
import '../widgets/fieldbar_widget.dart';
import '../widgets/text_widget.dart';
import '../widgets/textfield_widget.dart';

class CreateFundScreen extends StatelessWidget {
  CreateFundScreen({super.key});

  TextEditingController fundNameController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CColors.black,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextWidget(
                    color: CColors.white,
                    size: 22,
                    text: 'Create a fund',
                    fontWeight: FontWeight.bold,
                  ),
                  TextWidget(
                    color: CColors.white,
                    size: 13,
                    text: Constants.createFundText,
                    fontWeight: FontWeight.normal,
                  ),
                  Gap(30),
                  TextFieldWidget(
                    labelText: 'Fund name',
                    controller: fundNameController,
                  ),
                  Gap(10),
                  TextFieldWidget(
                    labelText: 'Amount of Goal',
                    controller: amountController,
                  ),
                  Gap(15),
                  TextWidget(
                    color: CColors.white,
                    size: 16,
                    text: 'Select a dat when you need this fund',
                    fontWeight: FontWeight.normal,
                  ),
                  FieldBarWidget(
                    icon: Icon(Icons.calendar_month),
                    onPressed: () {},
                    fillColor: CColors.white,
                    textColor: CColors.black,
                    iconColor: CColors.black,
                    text: 'Due date',
                  ),
                  Gap(15),
                  TextWidget(
                    color: CColors.white,
                    size: 16,
                    text: 'Months to achieve this goal',
                    fontWeight: FontWeight.normal,
                  ),
                  Gap(3),
                  DottedBorder(
                    color: Colors.grey.shade800,
                    borderType: BorderType.RRect,
                    radius: Radius.circular(10),
                    strokeWidth: 2,
                    dashPattern: [12, 4],
                    child: Center(
                        child: TextWidget(
                      color: CColors.red,
                      size: 32,
                      text: '12',
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                  Gap(3),
                  TextWidget(
                    color: CColors.white,
                    size: 16,
                    text: 'Deposit per month to achieve this goal',
                    fontWeight: FontWeight.normal,
                  ),
                  Gap(3),
                  DottedBorder(
                    color: Colors.grey.shade800,
                    borderType: BorderType.RRect,
                    radius: Radius.circular(10),
                    strokeWidth: 2,
                    dashPattern: [12, 4],
                    child: Center(
                        child: TextWidget(
                      color: CColors.red,
                      size: 32,
                      text: '\$230',
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                  Gap(10),
                  ElevatedButtonWidget(
                    onPressed: () {},
                    text: 'Create',
                    buttonColor: CColors.green,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
