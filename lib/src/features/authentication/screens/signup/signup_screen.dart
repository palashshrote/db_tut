import 'package:database_tutorial/src/common_widgets/form/form_header_widget.dart';
import 'package:database_tutorial/src/constants/image_strings.dart';
import 'package:database_tutorial/src/constants/sizes.dart';
import 'package:database_tutorial/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'widgets/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              FormHeaderWidget(
                image: tWelcomeImage,
                title: tSignUpTitle,
                subTitle: tSignUpSubTitle,
              ),
              SignUpFormWidget(),
              Column(
                children: [
                  Text("OR"),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Image(
                        image: AssetImage(tGoogleLogoImage),
                        width: 20.0,
                      ),
                      label: const Text(tSignInWithGoogle),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(tAlreadyHaveAnAccount),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
