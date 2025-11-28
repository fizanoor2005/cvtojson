

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UploadResume extends StatelessWidget {
  const UploadResume({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isMobile = constraints.maxWidth < 900;
          double horizontalPadding = constraints.maxWidth < 700 ? 200.w : 50.w;

          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 40.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30.h),

                  Text(
                    'Get Started with Showskill',
                    style: TextStyle(
                      fontSize: 33.sp,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "Choose how you'd like to create your CV",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 55.h),

                  // ✅ Responsive Layout
                  isMobile
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildCard(
                              title: 'Upload CV',
                              innerTitle: 'Upload Your Resume',
                              description:
                                  'Upload your existing CV or resume (PDF/DOC)',
                              icon: Icons.upload,
                              iconColor: Colors.white,
                              buttonText: 'Select File',
                              isPrimary: false,
                              innerIconColor: Colors.grey,
                            ),
                            SizedBox(height: 20.h),
                            _buildCard(
                              title: 'Create from Scratch',
                              innerTitle: 'Start with a blank canvas',
                              description:
                                  'Use our guided editor to build your CV step by step',
                              icon: Icons.edit_document,
                              iconColor: Colors.white,
                              buttonText: 'Start CV Builder',
                              isPrimary: true,
                              innerIconColor: const Color(0xffEF2C00),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildCard(
                              width: 480.w,
                              title: 'Upload CV',
                              innerTitle: 'Drag and drop your CV here',
                              description:
                                  'Upload your existing CV or resume (PDF/DOC)',
                              icon: Icons.upload,
                              iconColor: Colors.white,
                              buttonText: 'Select File',
                              isPrimary: false,
                              innerIconColor: Colors.grey,
                            ),
                            SizedBox(width: 35.w),
                            _buildCard(
                              width: 480.w,
                              title: 'Create from Scratch',
                              innerTitle: 'Start with a blank canvas',
                              description:
                                  'Use our guided editor to build your CV step by step',
                              icon: Icons.edit_document,
                              iconColor: Colors.white,
                              buttonText: 'Start CV Builder',
                              isPrimary: true,
                              innerIconColor: const Color(0xffEF2C00),
                            ),
                          ],
                        ),

SizedBox(height: 50,),
                                       ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:  const Color(0xffEF2C00),
                          side: BorderSide(color: Colors.orange),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 25.w, vertical: 25.h),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Generate my website",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      SizedBox(height: 20,),
                      Text("Upload a CV or create one to continue",style: TextStyle(color: Colors.grey[600],fontSize: 15),)
         
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // 🔹 Card Builder Widget
  Widget _buildCard({
    required String title,
    required String innerTitle,
    required String description,
    required IconData icon,
    required Color iconColor,
    required String buttonText,
    required bool isPrimary,
    required Color innerIconColor,
    double? width,
  }) {
    return SizedBox(
      width: width ?? double.infinity,
      height: 810.h,
      child: Container(
        padding: EdgeInsets.all(20.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: Colors.grey.shade300),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 8.r,
              spreadRadius: 2.r,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔸 Top-left small orange icon box
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: const Color(0xffEF2C00),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, size: 25.sp, color: iconColor),
            ),
            SizedBox(height: 35),
            Text(
              title,
              style: TextStyle(
                fontSize: 23.sp,
              ),
            ),
            SizedBox(height: 25),
            Text(
              description,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15.sp, color: Colors.grey[700]),
            ),
            SizedBox(height: 30),

            // 🔸 Inner container
            Container(
              height: 360.h,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: isPrimary ? Colors.orange : Colors.grey.shade400,
                  // Use dotted border here if needed with package
                ),
                borderRadius: BorderRadius.circular(12.r),
                color: isPrimary ? Colors.orange.shade50 : Colors.grey.shade50,
              ),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      icon,
                      size: 50.sp,
                      color: innerIconColor,
                    ),
                    SizedBox(height: 20.h),

                    // 🔹 If second card → 2 lines, else → 1 line
                    if (isPrimary) ...[
                      Text(
                        innerTitle,
                        style: TextStyle(
                          fontSize: 17.sp,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'Fill in your details step by step',
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.grey[600],
                        ),
                      ),
                    ] else ...[
                      Text(
                        innerTitle,
                        style: TextStyle(
                          fontSize: 17.sp,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(height: 20.h),

                      // ✅ Button stays inside the container for 1st card
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.grey.shade400),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.w, vertical: 12.h),
                        ),
                        onPressed: () {},
                        child: Text(
                          buttonText,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),

            // ✅ Button outside container for 2nd card only
            if (isPrimary) ...[
              SizedBox(height: 35.h),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffEE4600),
                    padding: EdgeInsets.symmetric(
                        horizontal: 157.w, vertical: 14.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    buttonText,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),


              
            ],
          ],
        ),
      ),
    );
  }
}
