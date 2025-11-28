
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cvtojson/globals/app_button.dart';
import 'package:cvtojson/globals/app_colors.dart';
import 'package:cvtojson/globals/app_text_styles.dart';
import 'package:cvtojson/globals/app_textfield.dart';
import 'package:cvtojson/globals/custom_text_alart.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
          height: s.height * 1.1,
          width: s.width,
          // color: Colors.white,
          alignment: Alignment.center,
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: s.width * 0.2, vertical: 30),
            child: LayoutBuilder(
                // stream: null,
                builder: (context, Constraints) {
              if (Constraints.maxWidth < 760) {
                return Column(
                  children: [
                    // RichText(
                    //     text: TextSpan(
                    //         text: "Contact",
                    //         style: AppTextStyles.HeadingStyle(
                    //             color: AppColors.white,
                    //             fontWeight: FontWeight.bold,
                    //             fontsize: 45),
                    //         children: [
                    //       TextSpan(
                    //           text: " me",
                    //           style: AppTextStyles.monteseratStyle(
                    //               color: AppColors.Theme,
                    //               fontWeight: FontWeight.bold,
                    //               fontsize: 45))
                    //     ])),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextAlart(
                          "Contact",
                          style: AppTextStyles.HeadingStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                            fontsize: 45,
                          ),
                        ),
                        CustomTextAlart(
                          " me",
                          style: AppTextStyles.monteseratStyle(
                            color: AppColors
                                .Theme, // 🎨 theme color same as before
                            fontWeight: FontWeight.bold,
                            fontsize: 45,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 40,
                    ),
                    Expanded(
                      child: AppTextfield(
                        text: "Full Name ",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: AppTextfield(
                        text: "Email Adress",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: AppTextfield(
                        text: "Phone Number ",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: AppTextfield(
                        text: "Email Subject",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AppTextfield(
                      maxLines: 6,
                      text: "Messsage",
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    AppButton(
                      color: AppColors.bg,
                      text: "Send Message",
                      fontsize: s.width < 190 ? 15 : 25,
                    )
                  ],
                );
              } else {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextAlart(
                          "Contact",
                          style: AppTextStyles.HeadingStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                            fontsize: 45,
                          ),
                        ),
                        CustomTextAlart(
                          " me",
                          style: AppTextStyles.monteseratStyle(
                            color: AppColors
                                .Theme, // 🎨 theme color same as before
                            fontWeight: FontWeight.bold,
                            fontsize: 45,
                          ),
                        ),
                      ],
                    ),
                    // RichText(
                    //     text: TextSpan(
                    //         text: "Contact",
                    //         style: AppTextStyles.HeadingStyle(
                    //             color: AppColors.white,
                    //             fontWeight: FontWeight.bold,
                    //             fontsize: 45),
                    //         children: [
                    //       TextSpan(
                    //           text: " me",
                    //           style: AppTextStyles.monteseratStyle(
                    //               color: AppColors.Theme,
                    //               fontWeight: FontWeight.bold,
                    //               fontsize: 45))
                    //     ])),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: AppTextfield(
                            text: "Full Name ",
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: AppTextfield(
                            text: "Email Adress",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: AppTextfield(
                            text: "Phone Number ",
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: AppTextfield(
                            text: "Email Subject",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    AppTextfield(
                      maxLines: 6,
                      text: "Messsage",
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    AppButton(
                      color: AppColors.bg,
                      text: "Send Message",
                    )
                  ],
                );
              }
            }),
          )),
    );
  }
}
