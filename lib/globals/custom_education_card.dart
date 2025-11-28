
import "package:cvtojson/globals/app_colors.dart";
import "package:cvtojson/globals/app_text_styles.dart";
import "package:flutter/material.dart";



class CustomEducationCard extends StatelessWidget {
  var height, image, title, year, school;
  CustomEducationCard(
      {super.key, this.height, this.image, this.title, this.school, this.year});

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: AppColors.black, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.black, width: 1),
              image: DecorationImage(
                image: image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: s.width < 247
                ? s.width < 217
                    ? EdgeInsets.all(0)
                    : EdgeInsets.all(9)
                : const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.headerTextStyle(
                      color: AppColors.Theme,
                      fontWeight: FontWeight.bold,
                      fontsize: s.width < 369 ? 15 : 18),
                ),
                SizedBox(height: s.width < 217 ? 0 : 5),
                Text(
                  school,
                  style: AppTextStyles.simpletextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.normal,
                      fontsize: s.width < 369
                          ? s.width < 166
                              ? 10
                              : 12
                          : 14),
                ),
                SizedBox(height: s.width < 217 ? 0 : 5),
                Text(
                  year,
                  // item["year"]!,
                  style: AppTextStyles.monteseratStyle(
                      color: AppColors.black,
                      fontsize: s.width < 369 ? 12 : 14,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
