import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';
import 'package:cvtojson/globals/app_asset.dart';
import 'package:cvtojson/globals/app_colors.dart';
import 'package:cvtojson/globals/app_sized.dart';
import 'package:cvtojson/globals/app_text_styles.dart';
import 'package:cvtojson/globals/custom_text_alart.dart';
import "package:url_launcher/url_launcher.dart";

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final socialbutton = <String>[
    AppAsset.github,
    AppAsset.linked
    // "images/in1", "images/github"
  ];

  var socialBI;

  final socialLinks = [
    "https://github.com/MuqadasTajamal",
    "https://www.linkedin.com/in/muqadas-tajamal-21a936379/"
  ];

  Future<void> _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return
        //  Scaffold(
        //   backgroundColor: AppColors.bg,
        //   body:
        SingleChildScrollView(
      child: Container(
        height: size.height < 910 ? size.height * 1.2 : size.height,
        width: size.width,
        child: LayoutBuilder(builder: (context, Constraints) {
          if (Constraints.maxWidth < 830) {
            return Padding(
              padding: EdgeInsets.only(
                  left: size.width < 560
                      ? size.width < 455
                          ? 20
                          : 100
                      : 200,
                  top: 50),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildHomePersonalInfo(size),
                  SizedBox(
                    height: size.width < 410
                        ? 20
                        : size.width < 410
                            ? 10
                            : 40,
                  ),
                  Container(
                    height:
                        size.width < 630 ? size.width * 0.6 : size.height * 0.5,
                    width:
                        // size.width < 610
                        // ?
                        size.width < 630
                            ? size.width * 0.6
                            // : size.width * 0.5
                            : size.width * 0.4,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 3),
                        borderRadius: BorderRadius.circular(500),
                        image: DecorationImage(
                            image: AssetImage("images/m1.png"),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            );
          } else {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildHomePersonalInfo(size),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.circular(200),
                      image:
                          DecorationImage(image: AssetImage("images/m1.png"))),
                ),
                SizedBox(
                  height: 880,
                )
              ],
            );
          }
        }),
      ),
    )
        // )
        //
        // )
        ;
  }

  Column buildHomePersonalInfo(Size size) {
    return Column(
      mainAxisAlignment:
          size.width < 240 ? MainAxisAlignment.start : MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInDown(
          duration: Duration(milliseconds: 1200),
          child: CustomTextAlart(
            "Hi, It's me",
            style: AppTextStyles.monteseratTextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
                fontsize: size.width < 830 ? 20 : 40),
          ),
        ),
        SizedBox(height: size.width < 830 ? 10 : 20),
        FadeInRight(
            duration: Duration(milliseconds: 14),
            child: Wrap(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextAlart("I\'m MUQADAS",
                    style: AppTextStyles.HeadingStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                        fontsize: size.width < 830 ? 20 : 40)),
                SizedBox(
                  width: 5,
                ),
                CustomTextAlart("Tajamal",
                    style: AppTextStyles.headerTextStyle(
                        color: AppColors.light,
                        fontWeight: FontWeight.bold,
                        fontsize: size.width < 830 ? 20 : 40))
              ],
            )),
        SizedBox(height: size.width < 830 ? 10 : 20),
        if (size.width > 436)
          FadeInLeft(
            duration: Duration(milliseconds: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextAlart(
                  " I\'m into ",
                  style: AppTextStyles.NormalStyle(
                      color: AppColors.white,
                      fontsize: 30,
                      fontWeight: FontWeight.w500),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      "Flutter Developer",
                      textStyle: AppTextStyles.monteseratStyle(
                          color: AppColors.light,
                          fontsize: 25,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                  totalRepeatCount: 100,
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
              ],
            ),
          ),
        if (size.width < 436)
          FadeInLeft(
            duration: Duration(milliseconds: 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextAlart(
                  " I\'m into ",
                  style: AppTextStyles.NormalStyle(
                      color: AppColors.white,
                      fontsize: size.width < 830 ? 20 : 30,
                      fontWeight: FontWeight.w500),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      "Flutter Developer",
                      textStyle: AppTextStyles.monteseratStyle(
                          color: AppColors.light,
                          fontsize: size.width < 830
                              ? size.width < 245
                                  ? size.width < 170
                                      ? 10
                                      : 15
                                  : 20
                              : 25,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                  totalRepeatCount: 100,
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
              ],
            ),
          ),
        SizedBox(height: 10),
        FadeInDown(
          duration: Duration(milliseconds: 14),
          child: SizedBox(
            width: size.width * 0.5,
            child: CustomTextAlart(
              "Flutter Developer passionate about crafting beautiful, responsive, and high-performance mobile apps.",
              style: AppTextStyles.NormalTextStyle(
                  color: AppColors.white, fontsize: 16),
            ),
          ),
        ),
        SizedBox(height: size.width < 231 ? 20 : 30),
        FadeInUp(
            duration: Duration(milliseconds: 14),
            child: SizedBox(
              height: 47,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: socialbutton.length,
                separatorBuilder: (context, child) => WSize(
                  width: 10,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      _launchURL(socialLinks[index]);
                    },
                    onHover: (value) {
                      setState(() {
                        if (value) {
                          socialBI = index;
                        } else {
                          socialBI = null;
                        }
                      });
                    },
                    borderRadius: BorderRadius.circular(550.0),
                    hoverColor: AppColors.bg1,
                    splashColor: AppColors.c,
                    child: buildSocialButton(
                        asset: socialbutton[index],
                        hover: socialBI == index ? true : false),
                  );
                },
              ),
            )),
        SizedBox(height: 20),
        // AppButton(
        //   color: AppColors.Theme,
        //   text: "About me",
        // ),
      ],
    );
  }

  Ink buildSocialButton({required String asset, required bool hover}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.bg1, width: 5),
          color: AppColors.white,
          shape: BoxShape.circle),
      padding: EdgeInsets.all(6),
      child: Image.asset(
        asset,
        width: 10,
        height: 12,
        color: hover ? AppColors.light : AppColors.bg1,
      ),
    );
  }
}
