// import 'package:flutter/material.dart';
// import 'package:portfolio/globals/app_colors.dart';
// import 'package:portfolio/globals/app_text_styles.dart';

// class AppButton extends StatelessWidget {
//   var text, color, fontsize,url;
//   AppButton({this.text, this.color, this.fontsize,this.url});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialButton(
//       animationDuration: Duration(milliseconds: 6000),
//       splashColor: AppColors.light,
//       elevation: 6,
//       focusElevation: 12,
//       hoverColor: AppColors.bg,
//       height: 55,
//       padding: EdgeInsets.symmetric(
//         horizontal: 14,
//         vertical: 12,
//       ),
//       shape: OutlineInputBorder(
//         borderSide: BorderSide.none,
//         borderRadius: BorderRadius.circular(30),
//       ),
//       color: color,
//       onPressed: () {
//         url
//       },
//       child: Text(
//         text,
//         style: AppTextStyles.headerTextStyle(
//             color: AppColors.white,
//             fontsize: fontsize,
//             fontWeight: FontWeight.w500),
//       ),
//     );
//   }
// }


import 'package:cvtojson/globals/app_colors.dart';
import 'package:cvtojson/globals/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart'; // [NEW] ← url_launcher import

class AppButton extends StatelessWidget {
  var text, color, fontsize;
  final String? url; // [NEW] ← optional url param add

  AppButton(
      {this.text, this.color, this.fontsize, this.url}); // [NEW] ← ctor me url

  Future<void> _launchURL(String link) async {
    // [NEW] ← open link helper
    final uri = Uri.parse(link);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $uri');
    }
  }

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;

    return MaterialButton(
      animationDuration: Duration(milliseconds: 6000),
      splashColor: AppColors.light,
      elevation: 6,
      focusElevation: 12,
      hoverColor: AppColors.bg,
      height: s.width < 155 ? 40 : 55,
      padding: EdgeInsets.symmetric(
        horizontal: s.width < 155 ? 10 : 14,
        vertical: s.width < 155 ? 10 : 12,
      ),
      shape: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(30),
      ),
      color: color,
      onPressed: () async {
        // [CHANGED] ← yahan url open kar rahe
        if (url != null && url!.isNotEmpty) {
          await _launchURL(url!);
        }
      },
      child: Text(
        text,
        style: AppTextStyles.headerTextStyle(
          color: AppColors.white,
          fontsize: fontsize,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
