import 'package:flutter/material.dart';



// 🟣 Headline Widget
class HeadlineText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    double fontSize = 45;
    if (w < 900) fontSize = 30;
    if (w < 500) fontSize = 28;

    return Text(
      'Create a personal website\nwith a single click.',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: "Play1",
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: FontWeight.w300,
        height: 1.05,
        decoration: TextDecoration.none,
      ),
    );
  }
}
