import 'package:database_tutorial/src/common_widgets/form/form_header_widget.dart';
import 'package:database_tutorial/src/constants/image_strings.dart';
import 'package:database_tutorial/src/constants/sizes.dart';
import 'package:database_tutorial/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'login_footer_widget.dart';
import 'login_form_widget.dart';
import 'login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              // LoginHeaderWidget(),
              FormHeaderWidget(
                  image: tWelcomeImage,
                  title: tLoginTitle,
                  subTitle: tLoginSubTitle),
              LoginForm(),
              LoginFooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
