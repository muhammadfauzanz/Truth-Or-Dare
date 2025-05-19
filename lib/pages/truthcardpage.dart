import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truthordare/theme/theme.dart';
import 'package:truthordare/theme/truthordarecustomtext.dart';
import '../controller/truthcontrollerfirestore.dart';

class TruthPage extends StatelessWidget {
  const TruthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Truthcontroller());
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: darkgreenColor,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.17),
            Truthordarecustomtext("TRUTH"),
            SizedBox(height: screenHeight * 0.07),
            Container(
              width: screenWidth * 0.8,
              height: screenHeight * 0.40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: creamColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54.withOpacity(25 / 100),
                    blurRadius: 8,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Align(
                  alignment: Alignment.center,
                  child: Obx(() {
                    final text = controller.Truthquestion.value ?? "Loading...";
                    return Text(
                      text,
                      style: mediumDarkGreenTextStyle.copyWith(
                        fontSize: screenWidth * 0.06,
                      ),
                      textAlign: TextAlign.center,
                    );
                  }),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.07),
            GestureDetector(
              onTap: () {
                controller.fetchRandomTruthQuestion();
              },
              child: Container(
                width: screenWidth * 0.6,
                height: screenHeight * 0.065,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: creamColor,
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
                    "Next",
                    style: semiboldDarkGreenTextStyle.copyWith(
                      fontSize: screenWidth * 0.06,
                      letterSpacing: 6,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
