// import 'package:flutter/material.dart';

// class HelperScreen extends StatelessWidget {
//   final Widget mobile;
//   final Widget tablet;
//   final Widget desktop;
//   const HelperScreen(
//       {Key? key,
//       required this.mobile,
//       required this.tablet,
//       required this.desktop})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var Size = MediaQuery.of(context).size;

//     return  LayoutBuilder(
//             builder: (context, Constraints) {
//              if (Constraints.maxWidth < 768) {}
//             }) ;
//   }
// }

import 'package:flutter/material.dart';

class HelperScreen extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const HelperScreen({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 768) {
          return mobile; // 👈 mobile view return
        } else if (constraints.maxWidth < 1200) {
          return tablet; // 👈 tablet view return
        } else {
          return desktop; // 👈 desktop view return
        }
      },
    );
  }
}
