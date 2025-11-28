import 'package:animate_do/animate_do.dart';

import 'package:flutter/material.dart';
import 'package:cvtojson/globals/app_colors.dart';
import 'package:cvtojson/globals/app_container.dart';
import 'package:cvtojson/globals/app_text_styles.dart';
import 'package:cvtojson/globals/custom_text_alart.dart';

class SkillScreen extends StatelessWidget {
  const SkillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;

    return LayoutBuilder(builder: (context, constraints) {
      // ----------- Small Screen Layout -----------
      if (constraints.maxWidth < 935) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FadeInUp(
              duration: const Duration(milliseconds: 1400),
              child: Container(
                color: AppColors.bg1,
                width: s.width * 0.9,
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextAlart(
                          "My ",
                          style: AppTextStyles.HeadingStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                            fontsize: s.width < 440 ? 35 : 45,
                          ),
                        ),
                        CustomTextAlart(
                          "Skills",
                          style: AppTextStyles.monteseratStyle(
                            color: AppColors.bg, // 🔵 blue
                            fontWeight: FontWeight.bold,
                            fontsize: s.width < 440 ? 35 : 45,
                          ),
                        ),
                      ],
                    ),
                    // RichText(
                    //   text: TextSpan(
                    //     text: "My ",
                    //     style: AppTextStyles.HeadingStyle(
                    //       color: AppColors.white,
                    //       fontWeight: FontWeight.bold,
                    //       fontsize: 45,
                    //       //  s.width < 440 ? 35 :
                    //     ),
                    //     children: [
                    //       TextSpan(
                    //         text: "Skills",
                    //         style: AppTextStyles.monteseratStyle(
                    //           color: AppColors.bg,
                    //           fontWeight: FontWeight.bold,
                    //           fontsize: s.width < 440 ? 35 : 45,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // const SizedBox(height: 40),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      alignment: WrapAlignment.center,
                      children: [
                        AppContainer(
                          image:
                              "https://arham-portfolio-phi.vercel.app/static/media/arhamflutter.ae7f97aae26959fefbe7.png",
                          text: "Flutter",
                        ),
                        AppContainer(
                          image:
                              "https://static.vecteezy.com/system/resources/previews/001/871/258/non_2x/illustration-for-cloud-provider-for-network-internet-connection-communication-hosting-server-data-center-design-can-be-used-for-landing-page-template-ui-ux-web-website-banner-flyer-free-vector.jpg",
                          text: "Provider",
                        ),
                        AppContainer(
                          image:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOZdMC_FB3iUt9yQZujx9L8Etp5FdbP75UJQ&s",
                          text: "Dart",
                        ),
                        AppContainer(
                          image:
                              "https://img.icons8.com/fluent-systems-regular/512/228BE6/github.png",
                          text: "GitHub",
                        ),
                        AppContainer(
                          image:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTURXtRLQ0OOcOdB_MvvfI3ZEYONoEBPjPrDg&s",
                          text: "MVC",
                        ),
                        AppContainer(
                          image:
                              "https://img.icons8.com/external-flaticons-flat-flat-icons/512/external-api-web-development-flaticons-flat-flat-icons.png",
                          text: "REST API",
                        ),
                        AppContainer(
                          image:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrQHVAKk9F6iM2_JNGAAPV1mSBQB1o525qiDzN7A9SYwA29DVy2WFmWakzvdOMcndalaA&usqp=CAU",
                          text: "Postman",
                        ),
                        AppContainer(
                          image: "https://img.icons8.com/color/512/git.png",
                          text: "Git",
                        ),
                        AppContainer(
                          image:
                              "https://img.icons8.com/fluent/512/visual-studio-code-2019.png",
                          text: "VS Code",
                        ),
                        // AppContainer(
                        //   image:
                        //       "https://img.icons8.com/color/512/figma--v1.png",
                        //   text: "Figma",
                        // ),
                        AppContainer(
                          image:
                              "https://images-eds-ssl.xboxlive.com/image?url=4rt9.lXDC4H_93laV1_eHHFT949fUipzkiFOBH3fAiZZUCdYojwUyX2aTonS1aIwMrx6NUIsHfUHSLzjGJFxxo4K81Ei7WzcnqEk8W.MgwY5h6KNeSLSGHeDWlVnASafgeaLKpe.fY9O4ULbqDB.3NzP5yjlrsyDzAm792PDQvE-&format=source",
                          text: "Canva",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      }

      // ----------- Large Screen Layout -----------
      else {
        return Column(
          children: [
            FadeInUp(
              duration: const Duration(milliseconds: 1400),
              child: Container(
                color: AppColors.bg1,
                width: s.width * 0.8,
                padding:
                    const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
                child: Column(
                  children: [
                    // RichText(
                    //   text: TextSpan(
                    //     text: "My ",
                    //     style: AppTextStyles.HeadingStyle(
                    //       color: AppColors.white,
                    //       fontWeight: FontWeight.bold,
                    //       fontsize: 45,
                    //     ),
                    //     children: [
                    //       TextSpan(
                    //         text: "Skills",
                    //         style: AppTextStyles.monteseratStyle(
                    //           color: AppColors.bg,
                    //           fontWeight: FontWeight.bold,
                    //           fontsize: 45,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextAlart(
                          "My ",
                          style: AppTextStyles.HeadingStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                            fontsize: s.width < 440 ? 35 : 45,
                          ),
                        ),
                        CustomTextAlart(
                          "Skills",
                          style: AppTextStyles.monteseratStyle(
                            color: AppColors.bg, // 🔵 blue
                            fontWeight: FontWeight.bold,
                            fontsize: s.width < 440 ? 35 : 45,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),

                    Wrap(
                      spacing: 40,
                      runSpacing: 30,
                      alignment: WrapAlignment.center,
                      children: [
                        AppContainer(
                          image:
                              "https://arham-portfolio-phi.vercel.app/static/media/arhamflutter.ae7f97aae26959fefbe7.png",
                          text: "Flutter",
                        ),
                        AppContainer(
                          image:
                              "https://static.vecteezy.com/system/resources/previews/001/871/258/non_2x/illustration-for-cloud-provider-for-network-internet-connection-communication-hosting-server-data-center-design-can-be-used-for-landing-page-template-ui-ux-web-website-banner-flyer-free-vector.jpg",
                          text: "Provider",
                        ),
                        AppContainer(
                          image:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOZdMC_FB3iUt9yQZujx9L8Etp5FdbP75UJQ&s",
                          text: "Dart",
                        ),
                        AppContainer(
                          image:
                              "https://img.icons8.com/fluent-systems-regular/512/228BE6/github.png",
                          text: "GitHub",
                        ),
                        AppContainer(
                          image:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTURXtRLQ0OOcOdB_MvvfI3ZEYONoEBPjPrDg&s",
                          text: "MVC",
                        ),
                        AppContainer(
                          image:
                              "https://img.icons8.com/external-flaticons-flat-flat-icons/512/external-api-web-development-flaticons-flat-flat-icons.png",
                          text: "REST API",
                        ),
                        AppContainer(
                          image:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrQHVAKk9F6iM2_JNGAAPV1mSBQB1o525qiDzN7A9SYwA29DVy2WFmWakzvdOMcndalaA&usqp=CAU",
                          text: "Postman",
                        ),
                        AppContainer(
                          image: "https://img.icons8.com/color/512/git.png",
                          text: "Git",
                        ),
                        AppContainer(
                          image:
                              "https://img.icons8.com/fluent/512/visual-studio-code-2019.png",
                          text: "VS Code",
                        ),
                        // AppContainer(
                        //   image:
                        //       "https://img.icons8.com/color/512/figma--v1.png",
                        //   text: "Figma",
                        // ),
                        AppContainer(
                          image:
                              "https://images-eds-ssl.xboxlive.com/image?url=4rt9.lXDC4H_93laV1_eHHFT949fUipzkiFOBH3fAiZZUCdYojwUyX2aTonS1aIwMrx6NUIsHfUHSLzjGJFxxo4K81Ei7WzcnqEk8W.MgwY5h6KNeSLSGHeDWlVnASafgeaLKpe.fY9O4ULbqDB.3NzP5yjlrsyDzAm792PDQvE-&format=source",
                          text: "Canva",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      }
    });
  }
}
