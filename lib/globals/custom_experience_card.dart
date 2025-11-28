// import 'package:flutter/material.dart';
// import 'package:portfolio/globals/app_colors.dart';
// import 'package:portfolio/globals/app_text_styles.dart';

// class CustomExperienceCard extends StatelessWidget {

//     final List<Map<String, String>> list = [
//     {
//       "image": "https://www.devsinntechnologies.com/icon.png",
//       "text": "Devsinn Technologies",
//       "subtext": "Flutter Developer",
//       "date": "2024-present"
//     },
//     {
//       "image":
//           "https://upload.wikimedia.org/wikipedia/en/thumb/b/bb/Canva_Logo.svg/2560px-Canva_Logo.svg.png",
//       "text": "Freelance",
//       "subtext": "Create simple and professional designs",
//       "date": "2024"
//     },
//     {
//       "image":
//           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW0vnsBuhcrTYNFjng9nYnLDMQywo7wOKELg&s",
//       "text": "Brainy & Bright",
//       "subtext": "1 year of teaching experience.",
//       "date": "2024"
//     }
//   ];

//   var itemcount, crossAxisCount, index, childAspectRatio, height
//   // image ,text,subtext,texta
//   ;
//   CustomExperienceCard(
//       {super.key,
//       this.crossAxisCount,
//       // this.subtext,this.texta,
//       // this.text,
//       // this.index,this.image,
//       this.itemcount,
//       this.childAspectRatio,
//       this.height});

//   @override
//   Widget build(BuildContext context) {
//     var s = MediaQuery.of(context).size;
//     return GridView.builder(
//       shrinkWrap: true,
//       physics: NeverScrollableScrollPhysics(),
//       itemCount: itemcount,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: crossAxisCount(s.width),
//         crossAxisSpacing: 20,
//         mainAxisSpacing: 20,
//         childAspectRatio: childAspectRatio,
//       ),
//       itemBuilder: (context, index) {
//         final item =List [index];

//         return Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(10),
//             side: BorderSide(color: AppColors.black, width: 1),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 height: height,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                   border: Border.all(color: AppColors.black, width: 1),
//                   image: DecorationImage(
//                     image: NetworkImage(item["image"] ?? ""),
//                     fit: BoxFit.contain,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       item["text"] ?? "",
//                       style: AppTextStyles.headerTextStyle(
//                         color: AppColors.Theme,
//                         fontWeight: FontWeight.bold,
//                         fontsize:
//                             s.width < 500 ? (s.width < 296 ? 12 : 18) : 22,
//                       ),
//                     ),
//                     SizedBox(height: 5),
//                     Text(
//                       item["subtext"] ?? "",
//                       style: AppTextStyles.simpletextStyle(
//                         color: AppColors.black,
//                         fontWeight: FontWeight.normal,
//                         fontsize:
//                             s.width < 500 ? (s.width < 296 ? 12 : 14) : 16,
//                       ),
//                     ),
//                     SizedBox(height: 5),
//                     Text(
//                       item["date"] ?? "",
//                       style: AppTextStyles.monteseratStyle(
//                         color: AppColors.black,
//                         fontsize:
//                             s.width < 500 ? (s.width < 296 ? 12 : 14) : 16,
//                         fontWeight: FontWeight.normal,
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:cvtojson/globals/app_colors.dart';
import 'package:cvtojson/globals/app_text_styles.dart';
import 'package:flutter/material.dart';



class CustomExperienceCard extends StatelessWidget {
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

  var crossAxisCount, childAspectRatio, height;
  CustomExperienceCard(
      {super.key, this.childAspectRatio, this.crossAxisCount, this.height});

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount(s.width),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: childAspectRatio,
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
                height: height,
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
                    Text(
                      item["text"] ?? "",
                      style: AppTextStyles.headerTextStyle(
                        color: AppColors.Theme,
                        fontWeight: FontWeight.bold,
                        fontsize:
                            s.width < 500 ? (s.width < 296 ? 12 : 18) : 22,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      item["subtext"] ?? "",
                      style: AppTextStyles.simpletextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.normal,
                        fontsize:
                            s.width < 500 ? (s.width < 296 ? 12 : 14) : 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      item["date"] ?? "",
                      style: AppTextStyles.monteseratStyle(
                        color: AppColors.black,
                        fontsize:
                            s.width < 500 ? (s.width < 296 ? 12 : 14) : 16,
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
    );
  }
}
