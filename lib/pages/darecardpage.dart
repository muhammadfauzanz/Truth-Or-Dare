import 'package:flutter/material.dart';
import 'package:truthordare/theme/theme.dart';
import 'package:truthordare/theme/truthordarecustomtext.dart';
import 'package:get/get.dart';
import '../controller/darecontrollerfirestore.dart';

class DarePage extends StatelessWidget {
  const DarePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Darecontroller());
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: darkredColor,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.17),
            Truthordarecustomtext("DARE"),
            SizedBox(height: screenHeight * 0.07),
            Container(
              width: screenWidth * 0.8,
              height: screenHeight * 0.40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: creamColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54.withOpacity(0.25),
                    blurRadius: 8,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
                child: Align(
                  alignment: Alignment.center,
                  child: Obx(() {
                    final text = controller.Darequestion.value ?? "Loading...";
                    return Text(
                      text,
                      style: mediumDarkRedTextStyle.copyWith(
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
              onTap: () => controller.fetchRandomDareQuestion(),
              child: Container(
                width: screenWidth * 0.6,
                height: screenHeight * 0.065,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: creamColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54.withOpacity(0.25),
                      blurRadius: 8,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "NEXT",
                    style: semiboldDarkRedTextStyle.copyWith(
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
