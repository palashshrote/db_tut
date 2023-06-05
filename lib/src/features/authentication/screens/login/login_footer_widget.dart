import 'package:database_tutorial/src/constants/image_strings.dart';
import 'package:database_tutorial/src/constants/sizes.dart';
import 'package:database_tutorial/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text.rich(TextSpan(text: tDontHaveAnAccount, children: const [
        TextSpan(
          text: tSignup,
          style: TextStyle(color: Colors.blue),
        )
      ])),
    );
  }
}
