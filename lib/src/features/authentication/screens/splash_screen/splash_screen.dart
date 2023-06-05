import 'package:database_tutorial/src/constants/colors.dart';
import 'package:database_tutorial/src/constants/image_strings.dart';
import 'package:database_tutorial/src/constants/sizes.dart';
import 'package:database_tutorial/src/constants/text_strings.dart';
import 'package:database_tutorial/src/features/authentication/controller/splash_screen_controller.dart';
import 'package:database_tutorial/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.statAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashController.animate.value ? 0 : -30,
              left: splashController.animate.value ? 0 : -30,
              child: Image(
                image: AssetImage(tSplashTopIcon),
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: tDefaultSize,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tAppName,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  tAppTagLine,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            child: Image(
              image: AssetImage(tSplashTopIcon),
            ),
          ),
          Positioned(
            bottom: 10,
            right: tDefaultSize,
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              // color: tPrimaryColor,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: tPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
