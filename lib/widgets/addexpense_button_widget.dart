import 'package:flutter/material.dart';

class AddExpenseButton extends StatelessWidget {
  const AddExpenseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.all(4),
            child: Icon(
              Icons.add_box_rounded,
              color: Color(0xff656565),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(2),
            child: Text('Add Expense',
                style: TextStyle(
                  color: Color(0xff656565),
                )),
          )
        ],
      ),
      onPressed: () {},
    );
  }
}
