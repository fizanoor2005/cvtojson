

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cvtojson/components/portfolio_card.dart';
import 'package:cvtojson/view/fizaportfolio.dart';
import 'package:cvtojson/view/kabeerportfolio.dart';
import 'package:cvtojson/view/main_dashboard_screen.dart';
import 'package:cvtojson/view/portfolio_screen.dart';


class PortfolioDesign extends StatelessWidget {
  final List<Map<String,dynamic>>?cvData;
  const PortfolioDesign({super.key,this.cvData});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final images = [
      'flower/p1.png',
      'flower/p4.png',
      'flower/p3.png',
      'flower/p2.png',
      'flower/p5.png',
    ];
  final imageslinks = {
      'flower/p1.png':'p1',
      'flower/p4.png':'p2',
      'flower/p3.png':'p3',
      'flower/p2.png':'p4',
      'flower/p5.png':'p5',
  };

    final double cardWidth = 435.w;
    final double cardHeight = 320.h;
    
    void openportfolio(BuildContext context, String id){
      switch(id){
       case 'p1':
       Navigator.push(context, MaterialPageRoute(builder: (context)=> Portfolio()));
       break;
         case 'p2':
       Navigator.push(context, MaterialPageRoute(builder: (context)=> Potfoliotwo()));
       break;
         case 'p3':
       Navigator.push(context, MaterialPageRoute(builder: (context)=> Portfolio()));
       break;  case 'p4':
       Navigator.push(context, MaterialPageRoute(builder: (context)=> MainDashboardScreen()));
       break;  case 'p5':
       Navigator.push(context, MaterialPageRoute(builder: (context)=> PortfolioScreen()));
       break;
       default:
        ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Portfolio not found")),
      );
      }
      
    }
 void selecttemplate(BuildContext context, String id){
      switch(id){
       case 'p1':
       Navigator.push(context, MaterialPageRoute(builder: (context)=> Portfolio(cvData:cvData)));
       break;
         case 'p2':
       Navigator.push(context, MaterialPageRoute(builder: (context)=> Potfoliotwo(cvData:cvData)));
       break;
         case 'p3':
       Navigator.push(context, MaterialPageRoute(builder: (context)=> Portfolio(cvData:cvData)));
       break;  case 'p4':
       Navigator.push(context, MaterialPageRoute(builder: (context)=> MainDashboardScreen(cvData:cvData)));
       break;  case 'p5':
       Navigator.push(context, MaterialPageRoute(builder: (context)=> PortfolioScreen(cvData:cvData)));
       break;
       default:
        ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Portfolio not found")),
      );
      }
      
    }

 
    return Scaffold(
      backgroundColor: const Color(0xff081430),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100.h),

            /// Headline
            Text(
              "Create a personal website\nwith a single click.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Play1",
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 43.sp,
                height: 1.2,
              ),
            ),

            SizedBox(height: 25.h),

            /// Subtitle
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                "Pick a template. Customize it. Our website templates are designed to stand out no matter what.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Sora",
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 16.sp,
                  height: 1.6,
                ),
              ),
            ),

            SizedBox(height: 60.h),

            /// Cards Grid
            LayoutBuilder(
              builder: (context, constraints) {
                double spacing = 16.w;
                double verticalSpacing = 30.h;

                // 🔹 CASE 1: width ≤ 510 → 1 card per row
                if (screenWidth <= 510) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Column(
                      children: images
                          .map(
                            (img) => Padding(
                              padding: EdgeInsets.only(bottom: verticalSpacing),
                              child: SizedBox(
                                width: double.infinity,
                                height: cardHeight,
                                child: PortfolioCard(
                                  imagePath: img,
                                  width: double.infinity,
                                  height: cardHeight,
                                  link: imageslinks[img]!,
                                  onpreview: (id) => openportfolio(context, id),
                                  onselect:(id)=>selecttemplate(context, id)
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  );
                }

                // 🔹 CASE 2: width < 960 → 2 cards per row (adjust spacing dynamically)
                if (screenWidth < 960) {
                  double cardW = (screenWidth / 2) - (spacing * 2);
                  if (screenWidth < 700) cardW = (screenWidth / 2) - (spacing * 1.5);
                  if (screenWidth < 600) cardW = (screenWidth / 2) - (spacing);

                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Wrap(
                      spacing: spacing,
                      runSpacing: verticalSpacing,
                      alignment: WrapAlignment.center,
                      children: images
                          .map(
                            (img) => SizedBox(
                              width: cardW,
                              height: cardHeight,
                              child: PortfolioCard(
                                imagePath: img,
                                width: cardW,
                                height: cardHeight,
                                link: imageslinks[img]!,
                                onpreview: (id)=> openportfolio(context, id),
                                  onselect:(id)=>selecttemplate(context, id)

                              ),
                            ),
                          )
                          .toList(),
                    ),
                  );
                }

                // 🔹 CASE 3: width ≥ 960 → fixed centered layout (2 per row)
                double totalWidth = (cardWidth * 2) + spacing;
                return Center(
                  child: SizedBox(
                    width: totalWidth,
                    child: Wrap(
                      spacing: spacing,
                      runSpacing: verticalSpacing,
                      alignment: WrapAlignment.center,
                      children: images
                          .map(
                            (img) => SizedBox(
                              width: cardWidth,
                              height: cardHeight,
                              child: PortfolioCard(
                                imagePath: img,
                                width: cardWidth,
                                height: cardHeight,
                                link: imageslinks[img]!,
                                onpreview: (id) => openportfolio(context, id),
                                  onselect:(id)=>selecttemplate(context, id)

                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                );
              },
            ),

            SizedBox(height: 80.h),
          ],
        ),
      ),
    );
  }
}
