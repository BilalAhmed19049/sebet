import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

import '../providers/userauth_provider.dart';
import '../utils/colors.dart';
import '../widgets/button_widget.dart';
import '../widgets/textfield_widget.dart';

class EditProfile extends StatelessWidget {
  EditProfile({super.key});

  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<UserAuth>(builder: (context, userAuth, child) {
      firstnameController.text = userAuth.userData!.firstname;
      lastnameController.text = userAuth.userData!.lastname;
      addressController.text = userAuth.userData!.address!;
      cityController.text = userAuth.userData!.city!;
      zipCodeController.text = userAuth.userData!.zipCode!;

      return Scaffold(
        backgroundColor: CColors.black,
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
                  Navigator.pop(context);
                },
              );
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFieldWidget(
                    labelText: 'First name',
                    // height: 51,
                    controller: firstnameController,
                  ),
                  Gap(10),
                  divider(),
                  Gap(10),
                  TextFieldWidget(
                    labelText: 'Last name',
                    // height: 51,
                    controller: lastnameController,
                  ),
                  Gap(10),
                  divider(),
                  Gap(10),
                  TextFieldWidget(
                    labelText: 'Address',
                    // height: 51,
                    controller: addressController,
                  ),
                  Gap(10),
                  divider(),
                  Gap(10),
                  TextFieldWidget(
                    labelText: 'City',
                    // height: 51,
                    controller: cityController,
                  ),
                  Gap(10),
                  divider(),
                  Gap(10),
                  TextFieldWidget(
                    labelText: 'Zip Code',
                    // height: 51,
                    controller: zipCodeController,
                  ),
                  Gap(10),
                  divider(),
                  Gap(10),
                  ElevatedButtonWidget(
                    onPressed: () {
                      userAuth.updateData(
                        {
                          'firstname': firstnameController.text,
                          'lastname': lastnameController.text,
                          'address': addressController.text,
                          'city': cityController.text,
                          'zipCode': zipCodeController.text,
                        },
                        userAuth.userData!.id!,
                        context,
                      );
                    },
                    text: 'Update',
                    buttonColor: CColors.green,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  Widget divider() {
    return Divider(
      height: 12,
      thickness: 2,
      color: CColors.grey8,
      indent: 3,
      endIndent: 10,
    );
  }
}
