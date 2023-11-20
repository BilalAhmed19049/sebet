import 'package:flutter/material.dart';

class CreateFundScreen extends StatelessWidget {
  CreateFundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        Text('Create a fund',
            style: TextStyle(
              fontSize: 16,
            )),
      ],
    ));
  }
}
