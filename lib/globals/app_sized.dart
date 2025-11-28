import 'package:flutter/material.dart';

class WSize extends StatelessWidget {
  var width;
  WSize({this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}

class HSize extends StatelessWidget {
  var height;
  HSize({this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}
