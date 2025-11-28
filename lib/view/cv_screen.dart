// // import 'package:cv_design/components/secondary_button.dart';
// // import 'package:cv_design/components/smart_cv_card.dart';
// // import 'package:flutter/material.dart';

// // class CvScreen extends StatelessWidget {
// //   const CvScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     final size = MediaQuery.of(context).size;
// //     final isMobile = size.width < 800;

// //     return Scaffold(
// //       body: Container(
// //         width: double.infinity,
// //         height: double.infinity,
// //         decoration: const BoxDecoration(
// //           gradient: LinearGradient(
// //             colors: [Color(0xFF1565C0), Color(0xFF512DA8)],
// //             begin: Alignment.topLeft,
// //             end: Alignment.bottomRight,
// //           ),
// //         ),
// //         child: SingleChildScrollView(
// //           child: Padding(
// //             padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.center,
// //               children: [
// //                 const Text(
// //                   "Smart CV Upload & Parsing",
// //                   textAlign: TextAlign.center,
// //                   style: TextStyle(
// //                     fontFamily: "Sora",
// //                     fontSize: 28,
// //                     fontWeight: FontWeight.bold,
// //                     color: Colors.white,
// //                   ),
// //                 ),
// //                 const SizedBox(height: 10),
// //                 const Text(
// //                   "Upload your old resume in PDF, Word, or Text file — our system\ninstantly extracts and organizes your details.",
// //                   textAlign: TextAlign.center,
// //                   style: TextStyle(
// //                     fontFamily: "Sora",
// //                     fontSize: 15,
// //                     color: Colors.white70,
// //                     height: 1.4,
// //                   ),
// //                 ),
// //                 const SizedBox(height: 50),

// //                 // ✅ Cards Section (improved layout)
// //                 LayoutBuilder(
// //                   builder: (context, constraints) {
// //                     double maxWidth = constraints.maxWidth;
// //                     double cardWidth = isMobile
// //                         ? maxWidth * 0.9
// //                         : (maxWidth / 3) - 30;
// //                     return Wrap(
// //                       spacing: 40,
// //                       runSpacing: 20,
// //                       alignment: WrapAlignment.center,
// //                       children: [
// //                         SmartCvCard(
// //                           width: cardWidth,
// //                           imagePath: 'flower/W.png',
// //                           title: "Word Support",
// //                           desc: "Easily parse resumes from Word documents",
// //                         ),
// //                         SmartCvCard(
// //                           width: cardWidth,
// //                           imagePath: 'flower/w2.png',
// //                           title: "PDF Support",
// //                           desc: "Upload your resume as\n a PDF",
// //                         ),
// //                         SmartCvCard(
// //                           width: cardWidth,
// //                           imagePath: 'flower/a.png',
// //                           title: "Auto Fill",
// //                           desc: "Instantly fill resumes with your data",
// //                         ),
// //                       ],
// //                     );
// //                   },
// //                 ),

// //                 const SizedBox(height: 90), 

// //                 // Start  Button
// //                 SecondaryButton(
// //                   text: "Start Now",
// //                   color: Colors.white,
// //                   textColor: Color(0xFF512DA8),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }


import 'package:flutter/material.dart';
import 'package:cvtojson/components/secondary_button.dart';
import 'package:cvtojson/components/smart_cv_card.dart';


class CvScreen extends StatelessWidget {
  const CvScreen({super.key});



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 800;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1565C0), Color(0xFF512DA8)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // 🔹 Main heading with alert
                const Text(
                  "Smart CV Upload & Parsing",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Sora",
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),

                // 🔹 Subtitle with alert
                const Text(
                  "Upload your old resume in PDF, Word, or Text file — our system\ninstantly extracts and organizes your details.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Sora",
                    fontSize: 15,
                    color: Colors.white70,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 50),

                // 🔹 Cards Section
                LayoutBuilder(
                  builder: (context, constraints) {
                    double maxWidth = constraints.maxWidth;
                    double cardWidth =
                        isMobile ? maxWidth * 0.9 : (maxWidth / 3) - 30;

                    return Wrap(
                      spacing: 40,
                      runSpacing: 20,
                      alignment: WrapAlignment.center,
                      children: [
                        SmartCvCard(
                       
                          width: cardWidth,
                          imagePath: 'flower/W.png',
                          title: "Word Support",
                          desc: "Easily parse resumes from Word documents",
                        ),
                        SmartCvCard(
                     
                          
                          width: cardWidth,
                          imagePath: 'flower/w2.png',
                          title: "PDF Support",
                          desc: "Upload your resume as a PDF",
                        ),
                        SmartCvCard(
                    
                          width: cardWidth,
                          imagePath: 'flower/a.png',
                          title: "Auto Fill",
                          desc: "Instantly fill resumes with your data",
                        ),
                      ],
                    );
                  },
                ),

                const SizedBox(height: 90),

                // 🔹 Start Button (text already shows alert internally)
                SecondaryButton(
                  text: "Start Now",
                  color: Colors.white,
                  textColor: const Color(0xFF512DA8),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}