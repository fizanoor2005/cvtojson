
import 'package:flutter/material.dart';
import 'package:cvtojson/globals/app_colors.dart';
import 'package:cvtojson/globals/app_text_styles.dart';
import 'package:cvtojson/globals/custom_education_card.dart';
import 'package:cvtojson/globals/custom_text_alart.dart';


class EducationScreen extends StatelessWidget {
  final List<Map<String, String>> educationList = [
    {
      "title": "Matric",
      "school": "Govt Girls High School Lahore",
      "year": "2020-2022 | Completed",
      "image": "images/pg2.jpg"
    },
    {
      "title": "F.Sc Pre Medical",
      "school": "Govt Graduate College Samanabad Lahore",
      "year": "2022-2024 | Completed",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQFrYxcLNV3ihx8hVGUN6YHnnDXldOcXdB8Q&s"
    },
    {
      "title": "BS Microbiology",
      "school": "University of Veterinary and Animal Sciences (UVAS), Lahore",
      "year": "2025 - Present | Ongoing",
      "image": "images/uvas.webp"
    }
  ];

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;

    double cardHeight(double width) {
      if (width < 500) return 260;
      if (width < 900) return 300;
      return 350;
    }

    double cardWidth(double width) {
      if (width < 500) return width * 0.9;
      if (width < 900) return width * 0.45;
      return width * 0.3;
    }

    return SingleChildScrollView(
      // padding:s EdgeIn.sets.all(20),
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.school,
                  size: s.width < 220 ? 35 : 50,
                  color: AppColors.light,
                ),
                SizedBox(width: s.width < 220 ? 5 : 10),
                CustomTextAlart(
                  "Education",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.HeadingStyle(
                      color: AppColors.black,
                      fontsize: s.width < 500
                          ? s.width < 220
                              ? 25
                              : 30
                          : 50,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: s.width < 217 ? 10 : 20),
            CustomTextAlart(
              "Education is the foundation that builds the path to endless possibilities.",
              textAlign: TextAlign.center,
              style: AppTextStyles.HeadingStyle(
                  color: AppColors.light,
                  fontWeight: FontWeight.w400,
                  fontsize: s.width < 500 ? 16 : 20),
            ),
            SizedBox(height: s.width < 217 ? 10 : 20),

            // ✅ Centered Cards
            Align(
              alignment: Alignment.center,
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children: educationList.map((item) {
                  return SizedBox(
                      width: cardWidth(s.width),
                      height: cardHeight(s.width),
                      child: CustomEducationCard(
                        height: cardHeight(s.width) * 0.5,
                        image: item["image"]!.startsWith("http")
                            ? NetworkImage(item["image"]!)
                            : AssetImage(item["image"]!),
                        title: item["title"]!,
                        school: item["school"],
                        year: item["year"],
                      ));
                }).toList(),
              ),
            ),

            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
