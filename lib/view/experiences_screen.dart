
import 'package:flutter/material.dart';
import 'package:cvtojson/globals/app_colors.dart';
import 'package:cvtojson/globals/app_text_styles.dart';
import 'package:cvtojson/globals/custom_text_alart.dart';


class ExperienceScreen extends StatelessWidget {
  final List<Map<String, String>> list = [
    {
      "image": "https://www.devsinntechnologies.com/icon.png",
      "text": "Devsinn Technologies",
      "subtext": "Flutter Developer",
      "date": "2024-present"
    },
    {
      "image":
          "https://upload.wikimedia.org/wikipedia/en/thumb/b/bb/Canva_Logo.svg/2560px-Canva_Logo.svg.png",
      "text": "Freelance",
      "subtext": "Create simple and professional designs",
      "date": "2024"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW0vnsBuhcrTYNFjng9nYnLDMQywo7wOKELg&s",
      "text": "Brainy & Bright",
      "subtext": "1 year of teaching experience.",
      "date": "2024"
    }
  ];

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;

    int crossAxisCount(double width) {
      if (width < 500) return 1;
      if (width < 900) return 2;
      return 3;
    }

    double cardHeight(double width) {
      if (width < 500) return 300;
      if (width < 900) return 350;
      return 400;
    }

    double cardWidth(double width) {
      if (width < 500) return width * 0.9;
      if (width < 900) return width * 0.45;
      return width * 0.3;
    }

    return SingleChildScrollView(
      // padding: EdgeInsets.all(20),
      child: Container(
        color: AppColors.white,
        child: Column(
          children: [
            CustomTextAlart(
              "Experience",
              textAlign: TextAlign.center,
              style: AppTextStyles.HeadingStyle(
                color: AppColors.black,
                fontsize: s.width < 500 ? 30 : 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            // Responsive Grid
            // CustomExperienceCard(
            //   childAspectRatio: cardWidth(s.width) / cardHeight(s.width),
            //   crossAxisCount: crossAxisCount(s.width),
            //   height: s.width < 296
            //       ? cardHeight(s.width) * 0.2
            //       : cardHeight(s.width) * 0.5,
            // ),

            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: list.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount(s.width),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: cardWidth(s.width) / cardHeight(s.width),
              ),
              itemBuilder: (context, index) {
                final item = list[index];

                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: AppColors.black, width: 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: s.width < 296
                            ? cardHeight(s.width) * 0.2
                            : cardHeight(s.width) * 0.5,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.black, width: 1),
                          image: DecorationImage(
                            image: NetworkImage(item["image"] ?? ""),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextAlart(
                              item["text"] ?? "",
                              style: AppTextStyles.headerTextStyle(
                                color: AppColors.Theme,
                                fontWeight: FontWeight.bold,
                                fontsize: s.width < 500
                                    ? (s.width < 296 ? 12 : 18)
                                    : 22,
                              ),
                            ),
                            SizedBox(height: 5),
                            CustomTextAlart(
                              item["subtext"] ?? "",
                              style: AppTextStyles.simpletextStyle(
                                color: AppColors.black,
                                fontWeight: FontWeight.normal,
                                fontsize: s.width < 500
                                    ? (s.width < 296 ? 12 : 14)
                                    : 16,
                              ),
                            ),
                            SizedBox(height: 5),
                            CustomTextAlart(
                              item["date"] ?? "",
                              style: AppTextStyles.monteseratStyle(
                                color: AppColors.black,
                                fontsize: s.width < 500
                                    ? (s.width < 296 ? 12 : 14)
                                    : 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),

            SizedBox(height: 30),

            // Extra Lines you wanted
          ],
        ),
      ),
    );
  }
}
