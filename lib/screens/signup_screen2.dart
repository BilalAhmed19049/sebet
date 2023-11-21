import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sebet/screens/dashboard_screen.dart';
import 'package:sebet/screens/signup_screen.dart';

import '../providers/userauth_provider.dart';
import '../utils/colors.dart';
import '../widgets/button_widget.dart';
import '../widgets/dropdownfield_widget.dart';
import '../widgets/text_widget.dart';
import '../widgets/textfield_widget.dart';

class SignupScreen2 extends StatelessWidget {
  SignupScreen2({super.key});

  TextEditingController stateController = TextEditingController();
  TextEditingController zipController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController referralController = TextEditingController();

  UserAuth userAuth = UserAuth();

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
                    MaterialPageRoute(builder: (context) => SignupScreen()));
              },
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/2 transparent 1.png'),
                Text(
                  'A Few more',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: CColors.red,
                  ),
                ),
                TextWidget(
                  color: CColors.white,
                  size: 30,
                  text: 'details to',
                  fontWeight: FontWeight.normal,
                ),
                TextWidget(
                  color: CColors.white,
                  size: 30,
                  text: 'begin',
                  fontWeight: FontWeight.normal,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //  DropdownButtonFormField(items: items, onChanged: (){}),
                    Expanded(
                      child: DropdownWidget(
                        width: double.infinity,
                        suffixIcon: Icons.keyboard_arrow_down,
                        suffixIconColor: Color(0xff01AA45),
                        items: [
                          DropdownMenuItem(
                              value: 'Option 1',
                              child: Text(
                                'Option 1',
                                style: TextStyle(color: CColors.green),
                              )),
                          DropdownMenuItem(
                              value: 'Option 2',
                              child: Text('Option 2',
                                  style: TextStyle(color: CColors.green))),
                        ],
                        fillColor: Colors.grey.shade900,
                      ),
                    ),
                    Expanded(
                      child: TextFieldWidget(
                        labelText: 'Zip Code',
                        controller: zipController,
                      ),
                    ),
                  ],
                ),
                Gap(5),
                TextFieldWidget(
                  labelText: 'City',
                  // height: 51,

                  controller: cityController,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: addressController,
                  style: TextStyle(
                    color: CColors.white,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade900,
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          width: 3,
                        )),
                    labelText: 'Street address',
                    labelStyle: TextStyle(color: CColors.grey5),
                  ),
                  maxLines: 4,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFieldWidget(
                  labelText: 'Referral code (Optional)',
                  // height: 51,

                  controller: referralController,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButtonWidget(
                  onPressed: () async {
                    Map<String, dynamic> updateUserData = {
                      'address': addressController.text,
                      'city': cityController.text,
                      'referalCode': referralController.text,
                      'state': stateController.text,
                      'zipCode': zipController.text
                    };
                    bool dataUpdated = await userAuth.updateData(updateUserData,
                        FirebaseAuth.instance.currentUser!.uid, context);
                    if (dataUpdated) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => DashboardScreen()));
                    }
                  },
                  text: 'Start',
                  buttonColor: CColors.green,
                  width: double.infinity,
                ),
              ],
            )),
      ),
    );
  }
}
