
import 'package:flutter/material.dart';
import 'package:cvtojson/globals/app_asset.dart';
import 'package:cvtojson/globals/app_colors.dart';
import 'package:cvtojson/globals/app_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterScreen extends StatelessWidget {
  final Function(int) onTap; // index receive karega

  const FooterScreen({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return
        //  Scaffold(
        // child:
        // body:
        SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(children: [
          Column(
            children: [
              if (s.width >= 1000)
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        height: s.height * 0.6,
                        margin: EdgeInsets.all(50),
                        padding: EdgeInsets.only(left: 10, right: 10),
                        width: s.width * 0.3,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15),
                            Text(
                              "Muqadas portfolio ☺",
                              textAlign: TextAlign.center,
                              style: AppTextStyles.monteseratStyle(
                                color: AppColors.black,
                                fontsize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 10),

                            // --- Thank You Line ---
                            Text(
                              "Thank you for watching my portfolio! 💜 ",
                              textAlign: TextAlign.start,
                              style: AppTextStyles.monteseratStyle(
                                color: AppColors.black,
                                fontsize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 10),

                            // --- Motivational Quote ---
                            Text(
                              "“The future belongs to those who code it.”",
                              textAlign: TextAlign.start,
                              style: AppTextStyles.monteseratStyle(
                                color: AppColors.bg.withOpacity(0.8),
                                fontsize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 15),

                            // --- Your existing Quote ---
                            Text(
                              "✨ Let’s build something amazing together! ✨",
                              textAlign: TextAlign.start,
                              style: AppTextStyles.monteseratStyle(
                                color: AppColors.bg,
                                fontsize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),

                    // --- Quick Links Section ---
                    Flexible(
                      child: Container(
                        height: s.height * 0.5,
                        // margin: EdgeInsets.all(20),
                        padding: EdgeInsets.only(left: 10, right: 10),
                        width: s.width * 0.3,
                        decoration: BoxDecoration(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text(
                              "Quick links",
                              style: AppTextStyles.monteseratStyle(
                                color: AppColors.black,
                                fontsize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 5),
                            TextButton(
                              onPressed: () => onTap(0), // 👈 1 = AboutScreen
                              child: Text(
                                "Home",
                                style: AppTextStyles.monteseratStyle(
                                  color: AppColors.bg,
                                  fontsize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () => onTap(1), // 👈 1 = AboutScreen
                              child: Text(
                                "About",
                                style: AppTextStyles.monteseratStyle(
                                  color: AppColors.bg,
                                  fontsize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () => onTap(2),
                              // scrollToSection(500), // Skills section offset
                              child: Text(
                                "Skills",
                                style: AppTextStyles.monteseratStyle(
                                  color: AppColors.bg,
                                  fontsize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () => onTap(3),
                              // scrollToSection(1000), // Education
                              child: Text(
                                "Education",
                                style: AppTextStyles.monteseratStyle(
                                  color: AppColors.bg,
                                  fontsize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () => onTap(4),
                              // scrollToSection(1500), // Work
                              child: Text(
                                "Work",
                                style: AppTextStyles.monteseratStyle(
                                  color: AppColors.bg,
                                  fontsize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () => onTap(5),
                              // scrollToSection(2000), // Experience
                              child: Text(
                                "Experience",
                                style: AppTextStyles.monteseratStyle(
                                  color: AppColors.bg,
                                  fontsize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () => onTap(6),
                              //  scrollToSection(2500), // Context
                              child: Text(
                                "Context",
                                style: AppTextStyles.monteseratStyle(
                                  color: AppColors.bg,
                                  fontsize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Flexible(
                      child: Container(
                          height: s.height * 0.5,
                          // margin: EdgeInsets.all(20),
                          padding: EdgeInsets.only(left: 10, right: 10),
                          width: s.width * 0.3,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 15),
                              Flexible(
                                child: Text(
                                  "Contact Info",
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.monteseratStyle(
                                    color: AppColors.black,
                                    fontsize: 25,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),

                              // --- Thank You Line ---
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {}, icon: Icon(Icons.call)),
                                  Flexible(
                                    child: Text(
                                      "03227834187",
                                      textAlign: TextAlign.center,
                                      style: AppTextStyles.monteseratStyle(
                                        color: AppColors.bg,
                                        fontsize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // const SizedBox(height: 10),

                              // --- Motivational Quote ---
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.email)),
                                  Flexible(
                                    child: Text(
                                      "muqadasdevsinn@gmail.com",
                                      textAlign: TextAlign.start,
                                      style: AppTextStyles.monteseratStyle(
                                        color: AppColors.bg,
                                        fontsize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.location_on)),
                                  Flexible(
                                    child: Text(
                                      "Lahore,Pakistan",
                                      textAlign: TextAlign.start,
                                      style: AppTextStyles.monteseratStyle(
                                        color: AppColors.bg,
                                        fontsize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              Row(
                                mainAxisAlignment: s.width < 166
                                    ? MainAxisAlignment.start
                                    : MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                      focusColor: AppColors.bgimage,
                                      hoverColor: AppColors.black,
                                      splashColor: AppColors.white,
                                      highlightColor: AppColors.grey,
                                      onTap: () => _launchUrl(
                                          "https://github.com/MuqadasTajamal"),
                                      child: CircleAvatar(
                                        backgroundColor: AppColors.bg,
                                        maxRadius: 20,
                                        child: Image.asset(
                                          AppAsset.github,
                                          fit: BoxFit.cover,
                                          height: 26,
                                          width: 26,
                                        ),
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                      focusColor: AppColors.bgimage,
                                      hoverColor: AppColors.black,
                                      splashColor: AppColors.white,
                                      highlightColor: AppColors.grey,
                                      onTap: () => _launchUrl(
                                          "https://www.linkedin.com/in/muqadas-tajamal-21a936379/"),
                                      child: CircleAvatar(
                                        backgroundColor: AppColors.bg,
                                        maxRadius: 20,
                                        child: Image.asset(
                                          AppAsset.linked,
                                          fit: BoxFit.cover,
                                          height: 26,
                                          width: 26,
                                        ),
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CircleAvatar(
                                    maxRadius: 20,
                                    backgroundColor: AppColors.bg,
                                    child: IconButton(
                                      onPressed: () => _launchUrl(
                                          "mailto:muqadas@example.com"),
                                      icon: Icon(Icons.email,
                                          color: AppColors.light, size: 26),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ),
                  ],
                ),

              // Column(
              //   children: [

              // 🔹 UPPER COLUMN → sirf 815 ya usse zyada par show hoga
              if (s.width < 1000 && s.width > 659)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: s.height * 0.5,
                          margin: EdgeInsets.only(left: 50),
                          // padding: EdgeInsets.only(left: 10, right: 10),
                          width: s.width * 0.3,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 15),
                              Text(
                                "Muqadas portfolio ☺",
                                textAlign: TextAlign.center,
                                style: AppTextStyles.monteseratStyle(
                                  color: AppColors.black,
                                  fontsize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              // const SizedBox(height: 10),
                              Text(
                                "Thank you for watching my portfolio! 💜 ",
                                textAlign: TextAlign.start,
                                style: AppTextStyles.monteseratStyle(
                                  color: AppColors.black,
                                  fontsize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "“The future belongs to those who code it.”",
                                textAlign: TextAlign.start,
                                style: AppTextStyles.monteseratStyle(
                                  color: AppColors.bg.withOpacity(0.8),
                                  fontsize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 15),
                              Text(
                                "Let’s build something amazing together! ",
                                textAlign: TextAlign.start,
                                style: AppTextStyles.monteseratStyle(
                                  color: AppColors.bg,
                                  fontsize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                        const SizedBox(width: 30),

                        // --- Quick Links Section ---
                        Container(
                          height: s.height * 0.5,
                          padding: EdgeInsets.only(left: 10, right: 10),
                          width: s.width * 0.3,
                          decoration: BoxDecoration(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 15),
                              Text(
                                "Quick links",
                                style: AppTextStyles.monteseratStyle(
                                  color: AppColors.black,
                                  fontsize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextButton(
                                onPressed: () => onTap(0), // 👈 1 = AboutScreen
                                child: Text(
                                  "Home",
                                  style: AppTextStyles.monteseratStyle(
                                    color: AppColors.bg,
                                    fontsize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () => onTap(1), // 👈 1 = AboutScreen

                                child: Text(
                                  "About",
                                  style: AppTextStyles.monteseratStyle(
                                    color: AppColors.bg,
                                    fontsize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: TextButton(
                                  onPressed: () => onTap(2),
                                  child: Text(
                                    "Skills",
                                    style: AppTextStyles.monteseratStyle(
                                      color: AppColors.bg,
                                      fontsize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () => onTap(3),
                                child: Text(
                                  "Education",
                                  style: AppTextStyles.monteseratStyle(
                                    color: AppColors.bg,
                                    fontsize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () => onTap(4),
                                child: Text(
                                  "Work",
                                  style: AppTextStyles.monteseratStyle(
                                    color: AppColors.bg,
                                    fontsize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () => onTap(5),
                                child: Text(
                                  "Experience",
                                  style: AppTextStyles.monteseratStyle(
                                    color: AppColors.bg,
                                    fontsize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () => onTap(6),
                                child: Text(
                                  "Context",
                                  style: AppTextStyles.monteseratStyle(
                                    color: AppColors.bg,
                                    fontsize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: s.height * 0.5,
                      padding: EdgeInsets.only(left: 10, right: 10),
                      width: s.width * 0.3,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15),
                          Flexible(
                            child: Text(
                              "Contact Info",
                              textAlign: TextAlign.center,
                              style: AppTextStyles.monteseratStyle(
                                color: AppColors.black,
                                fontsize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.call)),
                              Flexible(
                                child: Text(
                                  "03227834187",
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.monteseratStyle(
                                    color: AppColors.bg,
                                    fontsize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.email)),
                              Flexible(
                                child: Text(
                                  "muqadasdevsinn@gmail.com",
                                  textAlign: TextAlign.start,
                                  style: AppTextStyles.monteseratStyle(
                                    color: AppColors.bg,
                                    fontsize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.location_on)),
                              Flexible(
                                child: Text(
                                  "Lahore,Pakistan",
                                  textAlign: TextAlign.start,
                                  style: AppTextStyles.monteseratStyle(
                                    color: AppColors.bg,
                                    fontsize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // --- Social Icons Row ---
                          Row(
                            mainAxisAlignment: s.width < 166
                                ? MainAxisAlignment.start
                                : MainAxisAlignment.center,
                            children: [
                              InkWell(
                                  focusColor: AppColors.bgimage,
                                  hoverColor: AppColors.black,
                                  splashColor: AppColors.white,
                                  highlightColor: AppColors.grey,
                                  onTap: () => _launchUrl(
                                      "https://github.com/MuqadasTajamal"),
                                  child: CircleAvatar(
                                    backgroundColor: AppColors.bg,
                                    maxRadius: 20,
                                    child: Image.asset(
                                      AppAsset.github,
                                      fit: BoxFit.cover,
                                      height: 26,
                                      width: 26,
                                    ),
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                  focusColor: AppColors.bgimage,
                                  hoverColor: AppColors.black,
                                  splashColor: AppColors.white,
                                  highlightColor: AppColors.grey,
                                  onTap: () => _launchUrl(
                                      "https://www.linkedin.com/in/muqadas-tajamal-21a936379/"),
                                  child: CircleAvatar(
                                    backgroundColor: AppColors.bg,
                                    maxRadius: 20,
                                    child: Image.asset(
                                      AppAsset.linked,
                                      fit: BoxFit.cover,
                                      height: 26,
                                      width: 26,
                                    ),
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                maxRadius: 20,
                                backgroundColor: AppColors.bg,
                                child: IconButton(
                                  onPressed: () =>
                                      _launchUrl("mailto:muqadas@example.com"),
                                  icon: Icon(Icons.email,
                                      color: AppColors.light, size: 26),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

              // 🔹 LOWER COLUMN → sirf 560 ya usse chhoti screen par show hoga
              if (s.width <= 659)
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // 👉 yahan neeche wala code tumhara bilkul same hai (kuch change nahi kiya)

                    Container(
                      height: s.height * 0.5,
                      margin: EdgeInsets.only(left: s.width < 307 ? 0 : 50),
                      padding: EdgeInsets.only(
                          left: s.width < 227 ? 0 : 10,
                          right: s.width < 227 ? 0 : 10),
                      width: s.width,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: s.width < 307
                                  ? s.width < 177
                                      ? 0
                                      : 10
                                  : 15),
                          Wrap(children: [
                            Text(
                              "Muqadas portfolio ☺",
                              textAlign: TextAlign.start,
                              style: AppTextStyles.monteseratStyle(
                                color: AppColors.black,
                                fontsize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ]),
                          SizedBox(height: s.width < 307 ? 0 : 10),
                          // --- Thank You Line ---
                          Wrap(children: [
                            Text(
                              "Thank you for watching my portfolio! 💜 ",
                              textAlign: TextAlign.start,
                              style: AppTextStyles.monteseratStyle(
                                color: AppColors.black,
                                fontsize: s.width < 177 ? 14 : 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            SizedBox(height: s.width < 307 ? 0 : 10),
                            // --- Motivational Quote ---
                            Text(
                              "“The future belongs to those who code it.”",
                              textAlign: TextAlign.start,
                              style: AppTextStyles.monteseratStyle(
                                color: AppColors.bg.withOpacity(0.8),
                                fontsize: s.width < 227 ? 20 : 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            // const SizedBox(height: 15),
                            // --- Your existing Quote ---
                            Text(
                              " Let’s build something amazing together! ",
                              textAlign: TextAlign.start,
                              style: AppTextStyles.monteseratStyle(
                                color: AppColors.bg,
                                fontsize: s.width < 177 ? 14 : 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: s.width < 307 ? 0 : 20),
                          ]),
                        ],
                      ),
                    ),

                    // --- Quick Links Section ---

                    Container(
                      height: s.height * 0.5,
                      margin: EdgeInsets.only(left: s.width < 307 ? 0 : 50),
                      padding: EdgeInsets.only(
                          left: s.width < 307 ? 0 : 10,
                          right: s.width < 307 ? 0 : 10),
                      width: s.width,
                      decoration: BoxDecoration(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Text(
                            "Quick links",
                            style: AppTextStyles.monteseratStyle(
                              color: AppColors.black,
                              fontsize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Flexible(
                            child: TextButton(
                              // onPressed: () =>
                              onPressed: () => onTap(0), // About section offset
                              child: Text(
                                "Home",
                                style: AppTextStyles.monteseratStyle(
                                  color: AppColors.bg,
                                  fontsize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: TextButton(
                              // onPressed: () =>
                              onPressed: () => onTap(1), // About section offset
                              child: Text(
                                "About",
                                style: AppTextStyles.monteseratStyle(
                                  color: AppColors.bg,
                                  fontsize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: TextButton(
                              onPressed: () => onTap(2),
                              // scrollToSection(500), // Skills section offset
                              child: Text(
                                "Skills",
                                style: AppTextStyles.monteseratStyle(
                                  color: AppColors.bg,
                                  fontsize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: TextButton(
                              onPressed: () => onTap(3),
                              // scrollToSection(1000), // Education
                              child: Text(
                                "Education",
                                style: AppTextStyles.monteseratStyle(
                                  color: AppColors.bg,
                                  fontsize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: TextButton(
                              onPressed: () => onTap(4),
                              //  scrollToSection(1500), // Work
                              child: Text(
                                "Work",
                                style: AppTextStyles.monteseratStyle(
                                  color: AppColors.bg,
                                  fontsize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: TextButton(
                              onPressed: () => onTap(5),
                              // scrollToSection(2000), // Experience
                              child: Text(
                                "Experience",
                                style: AppTextStyles.monteseratStyle(
                                  color: AppColors.bg,
                                  fontsize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: TextButton(
                              onPressed: () => onTap(6),
                              // scrollToSection(2500), // Context
                              child: Text(
                                "Context",
                                style: AppTextStyles.monteseratStyle(
                                  color: AppColors.bg,
                                  fontsize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                        height: s.height * 0.4,
                        margin: EdgeInsets.only(left: s.width < 307 ? 0 : 50),
                        padding: EdgeInsets.only(
                            left: s.width < 312 ? 0 : 10,
                            right: s.width < 312 ? 0 : 10),
                        width: s.width,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: s.width < 312 ? 5 : 15),
                            Text(
                              "Contact Info",
                              textAlign: TextAlign.start,
                              style: AppTextStyles.monteseratStyle(
                                color: AppColors.black,
                                fontsize: s.width < 249 ? 20 : 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: s.width < 312 ? 0 : 10),

                            // --- Thank You Line ---
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.call)),
                                Flexible(
                                  child: Text(
                                    "03227834187",
                                    textAlign: TextAlign.center,
                                    style: AppTextStyles.monteseratStyle(
                                      color: AppColors.bg,
                                      fontsize: s.width < 195 ? 15 : 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // --- Motivational Quote ---
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.email)),
                                Flexible(
                                  child: Text(
                                    "muqadasdevsinn@gmail.com",
                                    textAlign: TextAlign.start,
                                    style: AppTextStyles.monteseratStyle(
                                      color: AppColors.bg,
                                      fontsize: s.width < 195 ? 14 : 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.location_on)),
                                Flexible(
                                  child: Text(
                                    "Lahore,Pakistan",
                                    textAlign: TextAlign.start,
                                    style: AppTextStyles.monteseratStyle(
                                      color: AppColors.bg,
                                      fontsize: s.width < 195 ? 14 : 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                    focusColor: AppColors.bgimage,
                                    hoverColor: AppColors.black,
                                    splashColor: AppColors.white,
                                    highlightColor: AppColors.grey,
                                    onTap: () => _launchUrl(
                                        "https://github.com/MuqadasTajamal"),
                                    child: CircleAvatar(
                                      backgroundColor: AppColors.bg,
                                      maxRadius: 20,
                                      child: Image.asset(
                                        AppAsset.github,
                                        fit: BoxFit.cover,
                                        height: 26,
                                        width: 26,
                                      ),
                                    )),
                                SizedBox(
                                  width: s.width < 307 ? 4 : 10,
                                ),
                                InkWell(
                                    focusColor: AppColors.bgimage,
                                    hoverColor: AppColors.black,
                                    splashColor: AppColors.white,
                                    highlightColor: AppColors.grey,
                                    onTap: () => _launchUrl(
                                        "https://www.linkedin.com/in/muqadas-tajamal-21a936379/"),
                                    child: CircleAvatar(
                                      backgroundColor: AppColors.bg,
                                      maxRadius: 20,
                                      child: Image.asset(
                                        AppAsset.linked,
                                        fit: BoxFit.cover,
                                        height: 26,
                                        width: 26,
                                      ),
                                    )),
                                SizedBox(
                                  width: s.width < 307 ? 4 : 10,
                                ),
                                CircleAvatar(
                                  maxRadius: 20,
                                  backgroundColor: AppColors.bg,
                                  child: IconButton(
                                    onPressed: () => _launchUrl(
                                        "mailto:muqadas@example.com"),
                                    icon: Icon(Icons.email,
                                        color: AppColors.light, size: 26),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
            ],
          ),
          if (s.width > 166)
            Container(
                height: s.height * 0.1,
                width: double.infinity,
                color: AppColors.Theme,
                alignment: Alignment.centerRight,
                padding:
                    EdgeInsets.symmetric(horizontal: s.width < 307 ? 0 : 40),
                child: Row(
                  children: [
                    Text(
                      "ThankYou",
                      style: AppTextStyles.HeadingStyle(
                          color: Colors.white,
                          fontWeight:
                              s.width < 270 ? FontWeight.w400 : FontWeight.bold,
                          fontsize: s.width < 407 ? 25 : 30),
                    ),
                    Spacer(),
                    InkWell(
                        onTap: onTap(
                          0,
                        ), // [FIX] ↓ click par provided callback run
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.bg,
                          ),
                          child: InkWell(
                            onTap: () {
                              onTap(0);
                            },
                            child: Icon(
                              Icons.arrow_upward,
                              size: 25,
                              color: AppColors.black,
                            ),
                          ),
                        )),
                  ],
                )),
          if (s.width < 165)
            Container(
                height: s.height * 0.1,
                width: double.infinity,
                color: AppColors.Theme,
                alignment: Alignment.centerRight,
                padding:
                    EdgeInsets.symmetric(horizontal: s.width < 307 ? 0 : 40),
                child: Wrap(
                  children: [
                    Text(
                      "ThankYou",
                      style: AppTextStyles.HeadingStyle(
                          color: Colors.white,
                          fontWeight:
                              s.width < 270 ? FontWeight.w400 : FontWeight.bold,
                          fontsize: s.width < 407 ? 25 : 30),
                    ),
                    Spacer(),
                    InkWell(
                        onTap: onTap(
                          0,
                        ), // [FIX] ↓ click par provided callback run
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.bg,
                          ),
                          child: InkWell(
                            onTap: () {
                              onTap(0);
                            },
                            child: Icon(
                              Icons.arrow_upward,
                              size: 25,
                              color: AppColors.black,
                            ),
                          ),
                        )),
                  ],
                )),
        ]),
      ),
    );
    // );
  }

  void _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}
