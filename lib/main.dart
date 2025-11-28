

import 'package:cvtojson/view/cvtojson.dart';
import 'package:cvtojson/view/portfolio_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1920, 1080),
      splitScreenMode: true,
      minTextAdapt: true,
      child: MaterialApp(
       home: CVToJSONPage(),
        routes: {
          '/portfolio': (context) => PortfolioDesign(),
        },
      ),
    );
  }
}
