import 'package:flutter/material.dart';
import 'package:truthordare/pages/darecardpage.dart';
import 'package:truthordare/pages/truthcardpage.dart';
import 'package:truthordare/theme/theme.dart';
import 'package:truthordare/theme/truthordarecustomtext.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: orangeColor,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.15),
            Truthordarecustomtext("TRUTH"),
            SizedBox(height: screenHeight * 0.008),
            Truthordarecustomtext("OR"),
            SizedBox(height: screenHeight * 0.008),
            Truthordarecustomtext("DARE"),
            SizedBox(height: screenHeight * 0.10),
            Text(
              "Pilih Salah Satu",
              style: semiboldCreamTextStyle.copyWith(
                fontSize: screenWidth * 0.06,
              ),
            ),
            SizedBox(height: screenHeight * 0.07),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(
                      TruthPage(),
                      transition: Transition.fadeIn,
                      duration: Duration(milliseconds: 50),
                    ); // Navigate to another page
                  },
                  child: Container(
                    width: screenWidth * 0.40,
                    height: screenHeight * 0.20,
                    decoration: BoxDecoration(
                      color: darkgreenColor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54.withOpacity(25 / 100),
                          blurRadius: 8,
                          offset: Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "TRUTH",
                        style: blackCreamTextStyle.copyWith(
                          fontSize: screenWidth * 0.08,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  "OR",
                  style: semiboldCreamTextStyle.copyWith(
                    fontSize: screenWidth * 0.06,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      DarePage(),
                      transition: Transition.fadeIn,
                      duration: Duration(milliseconds: 50),
                    ); // Navigate to another page
                  },
                  child: Container(
                    width: screenWidth * 0.40,
                    height: screenWidth * 0.43,
                    decoration: BoxDecoration(
                      color: darkredColor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54.withOpacity(25 / 100),
                          blurRadius: 8,
                          offset: Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "DARE",
                        style: blackCreamTextStyle.copyWith(
                          fontSize: screenWidth * 0.08,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
