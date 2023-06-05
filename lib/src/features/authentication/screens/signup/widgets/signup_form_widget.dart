import 'package:database_tutorial/src/common_widgets/form/form_header_widget.dart';
import 'package:database_tutorial/src/constants/image_strings.dart';
import 'package:database_tutorial/src/constants/sizes.dart';
import 'package:database_tutorial/src/constants/text_strings.dart';
import 'package:database_tutorial/src/features/authentication/controller/signup_controller.dart';
import 'package:database_tutorial/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return Container(
      padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.firstName,
              decoration: const InputDecoration(
                label: Text(tFName),
                prefixIcon: Icon(Icons.person_outline_rounded),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              controller: controller.lastName,
              decoration: const InputDecoration(
                label: Text(tLName),
                prefixIcon: Icon(Icons.person_outline_rounded),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                label: Text(tEmail),
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                label: Text(tContact),
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                label: Text(tPassword),
                prefixIcon: Icon(Icons.fingerprint),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // SignUpController.instance.registerUser(
                    //     controller.email.text.trim(),
                    //     controller.password.text.trim());
                    SignUpController.instance
                        .phoneAuthentication(controller.phoneNo.text.trim());
                    Get.to(() => const OTPScreen());
                  }
                },
                child: const Text(tSignup),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
