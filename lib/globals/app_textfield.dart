
import 'package:cvtojson/globals/app_colors.dart';
import 'package:flutter/material.dart';



class AppTextfield extends StatelessWidget {
  var text, height, width, prefixIcon, maxLines;
  AppTextfield(
      {this.height, this.prefixIcon, this.text, this.width, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.0,
      borderRadius: BorderRadius.circular(12),
      // color: AppColors.white,
      child: TextField(
        // cursorColor: AppColors.c,
        maxLines: maxLines,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          filled: true,
          fillColor: AppColors.bg,
          hintText: text,
          // hintStyle: AppTextStyles.HeadingStyle(color: AppColors.grey),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.white),

            borderRadius: BorderRadius.circular(10),
            // borderSide: BorderSide(color: AppColors.black)
          ),
          focusColor: AppColors.black,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.white),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
