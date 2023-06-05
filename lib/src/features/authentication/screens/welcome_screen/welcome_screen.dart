import 'package:database_tutorial/src/constants/colors.dart';
import 'package:database_tutorial/src/constants/text_strings.dart';
import 'package:database_tutorial/src/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../../../constants/image_strings.dart';
import '../signup/signup_screen.dart';

class welcome_screen extends StatelessWidget {
  const welcome_screen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    var height = mediaQuery.size.height;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage(tWelcomeImage), height: height * 0.6),
            Text(tWelcomeTitle),
            Text(tWelcomeSubTitle),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Get.to(() => const LoginScreen()),
                    child: Text(tLogin),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => Get.to(() => const SignUpScreen()),
                  child: Text(tSignup),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
