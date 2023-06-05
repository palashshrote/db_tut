import 'package:database_tutorial/src/constants/image_strings.dart';
import 'package:database_tutorial/src/constants/sizes.dart';
import 'package:database_tutorial/src/constants/text_strings.dart';
import 'package:database_tutorial/src/features/authentication/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../forget_password/forget_password_option/forget_password_btn_widget.dart';
import '../forget_password/forget_password_option/forget_password_model_bottom_sheet.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    final _formKey = GlobalKey<FormState>();
    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: controller.email,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: tEmail,
                  hintText: tEmail,
                  border: OutlineInputBorder()),
            ),
            TextFormField(
              controller: controller.password,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: tPassword,
                hintText: tPassword,
                border: OutlineInputBorder(),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: Text(tForgotPassword),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //code here
                if (_formKey.currentState!.validate()) {
                  LoginController.instance.loginUser(
                      controller.email.text.trim(),
                      controller.password.text.trim());
                }
              },
              child: Text(tLogin),
            )
          ],
        ));
  }
}
