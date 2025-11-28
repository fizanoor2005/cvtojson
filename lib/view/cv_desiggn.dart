
import 'package:flutter/material.dart';

class ResumeHomePage extends StatelessWidget {
 
  
  

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      // 🔹 Responsive AppBar

appBar: PreferredSize(
  preferredSize: const Size.fromHeight(40),
  child: LayoutBuilder(
    builder: (context, constraints) {
      final width = constraints.maxWidth;
      final isTiny = width < 320; // 👈 Very small screen
      final isMobile = width < 600;

      return 
      
      
      AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: isMobile ? 45 : 55,
        title: LayoutBuilder(
          builder: (context, box) {
            // 👇 If screen is too narrow, switch to a Compact AppBar
            if (isTiny) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Resume Builder",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ],
              );
            }

            // 👇 Normal AppBar Layout
            return Row(
              children: [
                Text(
                  "Resume Builder",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: isMobile ? 14 : 16,
                  ),
                ),
                const Spacer(),
                if (!isTiny) ...[
                  Text(
                    "Sign in",
                    style: TextStyle(
                      color: const Color(0xFF512DA8),
                      fontWeight: FontWeight.bold,
                      fontSize: isMobile ? 13 : 15,
                    ),
                  ),
                  SizedBox(width: isMobile ? 8 : 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(
                        horizontal: isMobile ? 10 : 18,
                        vertical: isMobile ? 6 : 10,
                      ),
                      minimumSize: Size(0, 32),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Create Resume",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isMobile ? 11 : 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ],
            );
          },
        ),
      );
    },
  ),
),










 // 🔹 Body
      body: LayoutBuilder(
        builder: (context, constraints) {
           
          final isMobile = constraints.maxWidth < 700;
          final isTablet = constraints.maxWidth >= 700 && constraints.maxWidth < 1100;
          final isDesktop = constraints.maxWidth >= 1100;

          // 🔸 Responsive font scaling
          double headingSize = isMobile
              ? 25
              : isTablet
                  ? 28
                  : 32;
          double subHeadingSize = isMobile
              ? 11
              : isTablet
                  ? 14
                  : 16;

          return SingleChildScrollView(
            child: Column(
              children: [



// 🔹 HERO SECTION
Container(
  width: double.infinity,
  constraints: BoxConstraints(
    // ✅ Minimum height chhoti screen ke hisaab se
    minHeight: isMobile ? 240 : 260,
    // ✅ Maximum height optional (overflow prevent karne ke liye)
    maxHeight: isMobile ? double.infinity : 300,
  ),
  padding: EdgeInsets.symmetric(
    horizontal: isMobile
        ? 20
        : isTablet
            ? 60
            : 100,
    vertical: isMobile ? 50 : 30, // extra padding instead of fixed height
  ),
  decoration: const BoxDecoration(
    gradient: LinearGradient(
      colors: [Color(0xFF1565C0), Color(0xFF512DA8)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  child: Center(
    child: Column(
      mainAxisSize: MainAxisSize.min, // ✅ prevent overflow vertically
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [


        Container(
          height: 26,
          width: 300,
          decoration: BoxDecoration(color: Colors.transparent,border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20)),

          child: Center(child: Text("Upload Your existing resume & auto-fill",style: TextStyle(color: const Color.fromARGB(255, 248, 243, 243)),)),
        ),
        SizedBox(height: 13),
        Text(
          'Create Your Perfect',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: headingSize,
            fontWeight: FontWeight.bold,
            fontFamily: "Lato",
          ),
        ),
        Text(
          'Resume',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: headingSize + 2,
            fontWeight: FontWeight.bold,
            fontFamily: "Lato",
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'Build a modern, ATS-friendly resume in minutes and start landing more interviews with less effort.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white70,
            fontSize: subHeadingSize,
            height: 1.4,
          ),
        ),
        const SizedBox(height: 18),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 12,
          runSpacing: 10,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 12 : 24,
                  vertical: isMobile ? 6 : 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Update Your Resume',
                style: TextStyle(
                  color: Colors.deepPurple.shade700,
                  fontSize: isMobile ? 12 : 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.white),
                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 12 : 24,
                  vertical: isMobile ? 6 : 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Start From Scratch',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isMobile ? 12 : 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
),






            // 🔹 BODY PLACEHOLDER
                Container(
                  height: isDesktop ? 600 : isTablet ? 500 : 400,
                  color: Colors.grey[50],
                  alignment: Alignment.center,
                 
                ),
              ],
            ),
          );
        },
      ),
    );
 
 
  }
}