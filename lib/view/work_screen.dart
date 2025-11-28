import 'package:animate_do/animate_do.dart';

import 'package:flutter/material.dart';
import 'package:cvtojson/globals/app_colors.dart';
import 'package:cvtojson/globals/app_text_styles.dart';
import 'package:cvtojson/globals/custom_text_alart.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkScreen extends StatefulWidget {
  const WorkScreen({super.key});

  @override
  State<WorkScreen> createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
  int? hoveredIndex;

  final List<Map<String, String>> projects = [
    {
      "image": "images/ai.png",
      "title": "Chatbot App",
      "sub":
          "Built a responsive AI Chatbot using Flutter and Gemini API for real-time conversations.",
      "link": "https://muqadastajamal.github.io/M.AI-preview/"
    },
    {
      "image": "images/w.PNG",
      "title": "Weather App",
      "sub":
          "Developed a responsive Weather App using Flutter, REST API, and Provider for live weather updates. ",
      "link": "https://muqadastajamal.github.io/weather-app-live/"
    },
    {
      "image": "images/todo.PNG",
      "title": "Todo App",
      "sub":
          "Built a responsive To-Do App using Flutter, Provider, SharedPreferences, and Lottie for task management.",
      "link": "https://muqadastajamal.github.io/Todo-preview/"
    },
    {
      "image": "images/c.PNG",
      "title": "Counter App",
      "sub":
          "Crreated a responsive Counter App using Flutter, Provider, and SharedPreferences for state management.",
      "link": "https://muqadastajamal.github.io/counter-app-preview/"
    },
    {
      "image": "images/s.PNG",
      "title": "Select Image",
      "sub":
          "Developed a responsive Flutter web app using Dart that allows users to select and preview images before upload",
      "link": "https://muqadastajamal.github.io/select-image-preview/"
    },
    {
      "image": "images/i.PNG",
      "title": "Instgram",
      "sub":
          "Built a responsive Instagram clone using Flutter and Dart, including login/signup, home screen, GridView, and ListView features.",
      "link": "https://muqadastajamal.github.io/instagram-preview/"
    },
  ];

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;

    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1200),
        padding: s.width < 172 ? EdgeInsets.all(10) : EdgeInsets.all(16),
        child: Column(
          children: [
            // RichText(
            //   text: TextSpan(
            //     text: "Latest",
            //     style: AppTextStyles.HeadingStyle(
            //         color: AppColors.white,
            //         fontWeight: FontWeight.bold,
            //         fontsize: s.width < 600 ? 28 : 45 // ✅ responsive font
            //         ),
            //     children: [
            //       TextSpan(
            //         text: " Projects",
            //         style: AppTextStyles.monteseratStyle(
            //             color: AppColors.Theme,
            //             fontWeight: FontWeight.bold,
            //             fontsize: s.width < 600 ? 28 : 45 // ✅ responsive font
            //             ),
            //       )
            //     ],
            //   ),
            // ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextAlart(
                  "Latest",
                  style: AppTextStyles.HeadingStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                    fontsize: s.width < 600 ? 28 : 45, // responsive font
                  ),
                ),
                CustomTextAlart(
                  " Projects",
                  style: AppTextStyles.monteseratStyle(
                    color: AppColors.Theme, // 🎨 same theme color
                    fontWeight: FontWeight.bold,
                    fontsize: s.width < 600 ? 28 : 45, // responsive font
                  ),
                ),
              ],
            ),

            SizedBox(
              height: s.width < 172 ? 10 : 20,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: s.width > 1000
                    ? 3
                    : s.width > 600
                        ? 2
                        : 1,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1, // square ratio
              ),
              itemCount: projects.length,
              itemBuilder: (context, index) {
                final project = projects[index];
                return InkWell(
                  onTap: () => _launchUrl(project["link"]!),
                  onHover: (hovering) {
                    setState(() {
                      hoveredIndex = hovering ? index : null;
                    });
                  },
                  child: FadeInUpBig(
                    duration: const Duration(milliseconds: 1200),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              // Image
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  project["image"]!,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                              ),

                              // Project Title with BG (always visible at bottom)
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 0,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 12),
                                  decoration: BoxDecoration(
                                    color: AppColors.white
                                        .withOpacity(0.6), // bg strip
                                    borderRadius: const BorderRadius.vertical(
                                      bottom: Radius.circular(16),
                                    ),
                                  ),
                                  child: CustomTextAlart(
                                    project["title"]!,
                                    style: AppTextStyles.HeadingStyle(
                                      color: AppColors.black,
                                      fontsize: s.width < 240 ? 20 : 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),

                              // Hover Overlay
                              Positioned.fill(
                                child: AnimatedOpacity(
                                  opacity: hoveredIndex == index ? 1 : 0,
                                  duration: const Duration(milliseconds: 300),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      gradient: LinearGradient(
                                        colors: [
                                          AppColors.white.withOpacity(0.8),
                                          AppColors.bg.withOpacity(0.6),
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                      ),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: s.width < 172
                                            ? EdgeInsets.all(0)
                                            : EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment: s.width < 192
                                              ? MainAxisAlignment.start
                                              : MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment: s.width < 192
                                              ? CrossAxisAlignment.start
                                              : CrossAxisAlignment.center,
                                          children: [
                                            CustomTextAlart(
                                              project["sub"]!,
                                              style: AppTextStyles.HeadingStyle(
                                                color: AppColors.white,
                                                fontsize: s.width < 229
                                                    ? s.width < 187
                                                        ? 10
                                                        : 12
                                                    : 15,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),

                                            //  AppButton(
                                            // color: AppColors.Theme,
                                            //   text: "view",
                                            //   fontsize: 18,
                                            //   // url:
                                            //   //     "https://github.com/MuqadasTajamal/my-portfolio-files/raw/main/muqadas%20cv.pdf",
                                            // ),

                                            Container(
                                              height: 30,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: AppColors.bg,
                                              ),
                                              child: Center(
                                                child: CustomTextAlart(
                                                  "View ",
                                                  style: AppTextStyles
                                                      .HeadingStyle(
                                                    color: AppColors.white,
                                                    fontsize:
                                                        s.width < 220 ? 15 : 18,
                                                    fontWeight: s.width < 220
                                                        ? FontWeight.w400
                                                        : FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
