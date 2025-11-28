

import "package:animate_do/animate_do.dart";
import "package:animated_text_kit/animated_text_kit.dart";
import "package:cvtojson/globals/app_button.dart";
import "package:cvtojson/globals/app_colors.dart";
import "package:cvtojson/globals/app_text_styles.dart";
import "package:cvtojson/globals/custom_text_alart.dart";
import "package:flutter/material.dart";



class AboutsScreen extends StatelessWidget {
  const AboutsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;

    return Container(
      width: s.width,
      color: AppColors.white,
      child: LayoutBuilder(
        builder: (context, Constraints) {
          // 📱 Mobile / Tablet
          if (Constraints.maxWidth < 1025) {
            return Padding(
              padding: s.width < 767
                  ? EdgeInsets.symmetric(horizontal: 10)
                  : EdgeInsets.symmetric(horizontal: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomTextAlart(
                        "About",
                        style: AppTextStyles.HeadingStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.bold,
                          fontsize: s.width < 337 ? 30 : 40,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomTextAlart(
                        "Me",
                        style: AppTextStyles.monteseratStyle(
                          color: AppColors.Theme,
                          fontWeight: FontWeight.bold,
                          fontsize: s.width < 337 ? 30 : 40,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),

                  // 📷 Image
                  Container(
                    height: 390,
                    width: s.width < 300 ? 300 : 350,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 3),
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage("images/m1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // 📝 Text Details
                  _buildAboutDetails(s),
                ],
              ),
            );
          } else {
            // 🖥 Desktop
            return Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 50),
                Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage("images/m1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 50),

                // 📝 Text Expanded
                Expanded(
                  child: _buildAboutDetails(s),
                ),
              ],
            );
          }
        },
      ),
    );
  }

  Widget _buildAboutDetails(Size s) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),

        CustomTextAlart(
          "I'm MUQADAS",
          style: AppTextStyles.HeadingStyle(
            color: AppColors.black,
            fontWeight: FontWeight.bold,
            fontsize: s.width < 207 ? 30 : 35,
          ),
        ),
        const SizedBox(height: 10),
        CustomTextAlart(
          "Flutter Developer" "(1 Year)",
          style: AppTextStyles.HeadingStyle(
            color: AppColors.black,
            fontWeight: FontWeight.w600,
            fontsize: 16,
          ),
        ),
        const SizedBox(height: 10),

        // 📝 Experience Paragraph
        FadeInRight(
          duration: const Duration(milliseconds: 1200),
          delay: const Duration(milliseconds: 200),
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CustomTextAlart(
              "A passionate Flutter Developer from Lahore, Pakistan. I love transforming creative ideas into smooth, functional, and visually appealing mobile apps. With a strong foundation in Dart, APIs, and state management (Provider, etc.), I enjoy building apps that not only work flawlessly but also look amazing. I'm always learning new tools, improving my coding skills, and exploring modern UI/UX trends. My goal is simple – to create apps that people enjoy using and leave a lasting impression. When I'm not coding, you'll find me exploring new tech ideas or improving my design skills to make every project better than the last.",
              style: AppTextStyles.simpletextStyle(
                color: AppColors.black,
                fontWeight: FontWeight.bold,
                fontsize: 16,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ),
        const SizedBox(height: 20),

        // ✨ Animated Text
        AnimatedTextKit(
          isRepeatingAnimation: true,
          repeatForever: true,
          animatedTexts: [
            TyperAnimatedText(
              "'Always learning. Always building. Always improving.'",
              textStyle: AppTextStyles.HeadingStyle(
                color: AppColors.Theme,
                fontWeight: FontWeight.bold,
                fontsize: 30,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),

        // 📧 Contact Details
        _buildInfoRow("Email:", " muqadasdevsinn@gmail.com"),
        const SizedBox(height: 20),
        _buildInfoRow("Place:", " Lahore, Pakistan"),
        const SizedBox(height: 20),
        _buildInfoRow("Phone Number:", " +92 322 7834187"),

        const SizedBox(height: 20),

        // 📄 Resume Button
        AppButton(
          color: AppColors.Theme,
          text: "Resume > ",
          fontsize: 18,
          url:
              "https://github.com/MuqadasTajamal/my-portfolio-files/raw/main/muqadas%20cv.pdf",
        ),

        SizedBox(
          height: 10,
        )
      ],
    );
  }

  // Widget _buildInfoRow(String label, String value) {
  //   return RichText(
  //     text: TextSpan(
  //       text: label,
  //       style: AppTextStyles.HeadingStyle(
  //         color: AppColors.light,
  //         fontWeight: FontWeight.w400,
  //         fontsize: 15,
  //       ),
  //       children: [
  //         TextSpan(
  //           text: value,
  //           style: AppTextStyles.simpletextStyle(
  //             color: AppColors.black,
  //             fontWeight: FontWeight.bold,
  //             fontsize: 15,
  //             letterSpacing: 1,
  //             wordSpacing: 1,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Widget _buildInfoRow(String label, String value) {
  //   return CustomTextAlart(
  //     "$label $value",
  //     style: AppTextStyles.simpletextStyle(
  //       color: AppColors.black,
  //       fontWeight: FontWeight.bold,
  //       fontsize: 15,
  //       letterSpacing: 1,
  //       wordSpacing: 1,
  //     ),
  //   );
  // }

  Widget _buildInfoRow(String label, String value) {
    return Wrap(
      children: [
        CustomTextAlart(
          label,
          style: AppTextStyles.HeadingStyle(
            color: const Color(0xff0066CC), // 🔵 blue color
            fontWeight: FontWeight.w500,
            fontsize: 15,
          ),
        ),
        const SizedBox(width: 4), // thoda gap
        CustomTextAlart(
          value,
          style: AppTextStyles.simpletextStyle(
            color: AppColors.black,
            fontWeight: FontWeight.bold,
            fontsize: 15,
            letterSpacing: 1,
            wordSpacing: 1,
          ),
        ),
      ],
    );
  }
}
