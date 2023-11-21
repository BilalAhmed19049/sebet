import 'package:flutter/material.dart';
import 'package:sebet/models/user_data_model.dart';
import 'package:sebet/providers/userauth_provider.dart';
import 'package:sebet/screens/signup_screen.dart';

import '../widgets/button_widget.dart';
import '../widgets/text_widget.dart';
import '../widgets/textfield_widget.dart';
import 'dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  UserAuth userAuth = UserAuth();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/2 transparent 1.png'),
                const Text(
                  'Hello again,',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.red,
                  ),
                ),
                const TextWidget(
                  color: Colors.white,
                  size: 30,
                  text: 'welcome',
                ),
                const TextWidget(
                  color: Colors.white,
                  size: 30,
                  text: 'back!',
                ),
                SizedBox(
                  height: 20,
                ),
                TextFieldWidget(
                  labelText: 'Email',
                  // height: 51,
                  width: double.infinity,
                  controller: emailController,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFieldWidget(
                  labelText: 'Phone',
                  // height: 51,
                  width: double.infinity,
                  controller: passwordController,
                ),
                const SizedBox(
                  height: 35,
                ),
                ElevatedButtonWidget(
                  onPressed: () async {
                    bool signInSuccessful = await userAuth.logIn(
                        context: context,
                        userData: UserDataModel(
                            firstname: '',
                            lastname: '',
                            email: emailController.text,
                            id: '',
                            password: passwordController.text));
                    if (signInSuccessful) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardScreen(),
                        ),
                      );
                    }
                  },
                  text: 'Sign in',
                  buttonColor: Colors.green,
                  width: double.infinity,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forget password?',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => SignupScreen()));
                        },
                        child: const Text(
                          'SignUp',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
