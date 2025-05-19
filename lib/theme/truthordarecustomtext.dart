import 'package:flutter/material.dart';
import 'package:truthordare/theme/theme.dart';

class Truthordarecustomtext extends StatelessWidget {
  final String text;

  const Truthordarecustomtext(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25),
      child: Text(
        text,
        style: extraboldCreamTextStyle.copyWith(
          fontSize: 50,
          letterSpacing: 25,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
