import 'package:animate_do/animate_do.dart';
import 'package:cvtojson/globals/app_colors.dart';
import 'package:cvtojson/globals/app_text_styles.dart';
import 'package:cvtojson/globals/custom_text_alart.dart';

import 'package:flutter/material.dart';



class AppContainer extends StatelessWidget {
  final String image, text;
  AppContainer({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      splashColor: AppColors.bg1,
      hoverColor: AppColors.bg1,
      focusColor: AppColors.bg1,
      hoverDuration: Duration(milliseconds: 200),
      child: AnimatedContainer(
        height: size.height < 630 ? 110 : 140,
        width: size.width < 465 ? 150 : 140,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: AppColors.black,
                spreadRadius: 0.2,
                blurRadius: 6.1,
                offset: Offset(2.1, 3.1))
          ],
          borderRadius: BorderRadius.circular(20),
          color: AppColors.white,
        ),
        duration: Duration(milliseconds: 1400),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.black,
              backgroundImage: NetworkImage(image),
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextAlart(
              text,
              style: AppTextStyles.simpletextStyle(
                  color: AppColors.black, fontsize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
