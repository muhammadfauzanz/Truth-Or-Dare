import 'package:flutter/material.dart';
import 'package:truthordare/pages/homepage.dart';
import 'package:truthordare/theme/theme.dart';
import 'package:get/get.dart';
import 'package:truthordare/theme/truthordarecustomtext.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Get.off(
          HomePage(),
          transition: Transition.fadeIn,
          duration: Duration(milliseconds: 100),
        );
      },
      child: Scaffold(
        body: Container(
          color: orangeColor,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.18),
              Text(
                "Berani Gak?",
                style: mediumcreamTextStyle.copyWith(
                  fontSize: screenWidth * 0.05,
                  letterSpacing: 5,
                ),
              ),
              SizedBox(height: screenHeight * 0.1),
              Truthordarecustomtext("TRUTH"),
              SizedBox(height: screenHeight * 0.008),
              Truthordarecustomtext("OR"),
              SizedBox(height: screenHeight * 0.008),
              Truthordarecustomtext("DARE"),
              SizedBox(height: screenHeight * 0.15),
              Text(
                "Mainkan Sekarang!",
                style: mediumcreamTextStyle.copyWith(
                  fontSize: screenWidth * 0.05,
                  letterSpacing: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
