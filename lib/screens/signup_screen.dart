import 'package:flutter/material.dart';
import 'package:sebet/screens/login_screen.dart';

import '../widgets/button_widget.dart';
import '../widgets/text_widget.dart';
import '../widgets/textfield_widget.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  TextEditingController fisrtNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emialController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            );
          },
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/2 transparent 1.png'),
              const Text(
                'Hello,',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.red,
                ),
              ),
              const TextWidget(
                color: Colors.white,
                size: 30,
                text: 'Signup to',
              ),
              const TextWidget(
                color: Colors.white,
                size: 30,
                text: 'get started!',
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFieldWidget(
                    labelText: 'First name',
                    // height: 51,
                    width: 140,
                    controller: fisrtNameController,
                  ),
                  TextFieldWidget(
                    labelText: 'Last name',
                    // height: 51,
                    width: 140,
                    controller: lastNameController,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              TextFieldWidget(
                labelText: 'Email',
                // height: 51,
                width: double.infinity,
                controller: lastNameController,
              ),
              const SizedBox(
                height: 5,
              ),
              TextFieldWidget(
                labelText: 'Phone',
                // height: 51,
                width: double.infinity,
                controller: lastNameController,
              ),
              const SizedBox(
                height: 5,
              ),
              TextFieldWidget(
                labelText: 'Password',
                // height: 51,
                width: double.infinity,
                controller: lastNameController,
              ),
              const SizedBox(
                height: 5,
              ),
              TextFieldWidget(
                labelText: 'Confirm Password',
                // height: 51,
                width: double.infinity,
                controller: lastNameController,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButtonWidget(
                onPressed: () {},
                text: 'Sign Up',
                buttonColor: Colors.green,
                width: double.infinity,
                height: 51,
              ),
            ],
          )),
    );
  }
}
