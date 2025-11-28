// // import 'package:flutter/material.dart';

// // class CustomProjectCard extends StatelessWidget {
// //   var onTap, image, imageUrl, text;

// //   CustomProjectCard(
// //       {super.key, this.image, this.imageUrl, this.onTap, this.text});

// //   @override
// //   Widget build(BuildContext context) {
// //     var size = MediaQuery.of(context).size;
// //     return GestureDetector(
// //       onTap: onTap,
// //       child: MouseRegion(
// //         onEnter: (_) {},
// //         onExit: (_) {},
// //         child: Container(
// //           decoration: BoxDecoration(
// //             borderRadius: BorderRadius.circular(8),
// //             color: Colors.white,
// //             boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4)],
// //           ),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.stretch,
// //             children: [
// //               // 🔹 Image
// //               Expanded(
// //                 flex: 3,
// //                 child: ClipRRect(
// //                   borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
// //                   child: Image.network(
// //                     imageUrl,
// //                     fit: BoxFit.cover,
// //                     width: double.infinity,
// //                   ),
// //                 ),
// //               ),

// //               // 🔹 Project Name (always visible)
// //               Container(
// //                 padding: EdgeInsets.all(8),
// //                 alignment: Alignment.center,
// //                 child: Text(
// //                   text,
// //                   style: TextStyle(
// //                     fontWeight: FontWeight.bold,
// //                     fontSize: size.width < 600 ? 14 : 18,
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:portfolio/globals/app_colors.dart';
// import 'package:portfolio/globals/app_text_styles.dart';

// class CustomProjectCard extends StatelessWidget {
//   const CustomProjectCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var s = MediaQuery.of(context).size;
//     return GridView.builder(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: s.width > 1000
//             ? 3
//             : s.width > 600
//                 ? 2
//                 : 1,
//         crossAxisSpacing: 16,
//         mainAxisSpacing: 16,
//         childAspectRatio: 1, // square ratio
//       ),
//       itemCount: projects.length,
//       itemBuilder: (context, index) {
//         final project = projects[index];
//         return InkWell(
//           onTap: () => _launchUrl(project["link"]!),
//           onHover: (hovering) {
//             setState(() {
//               hoveredIndex = hovering ? index : null;
//             });
//           },
//           child: FadeInUpBig(
//             duration: const Duration(milliseconds: 1200),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       // Image
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(16),
//                         child: Image.asset(
//                           project["image"]!,
//                           fit: BoxFit.cover,
//                           width: double.infinity,
//                           height: double.infinity,
//                         ),
//                       ),

//                       // Project Title with BG (always visible at bottom)
//                       Positioned(
//                         left: 0,
//                         right: 0,
//                         bottom: 0,
//                         child: Container(
//                           padding: const EdgeInsets.symmetric(
//                               vertical: 8, horizontal: 12),
//                           decoration: BoxDecoration(
//                             color: AppColors.white.withOpacity(0.6), // bg strip
//                             borderRadius: const BorderRadius.vertical(
//                               bottom: Radius.circular(16),
//                             ),
//                           ),
//                           child: Text(
//                             project["title"]!,
//                             style: AppTextStyles.HeadingStyle(
//                               color: AppColors.black,
//                               fontsize: s.width < 240 ? 20 : 30,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),

//                       // Hover Overlay
//                       Positioned.fill(
//                         child: AnimatedOpacity(
//                           opacity: hoveredIndex == index ? 1 : 0,
//                           duration: const Duration(milliseconds: 300),
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(16),
//                               gradient: LinearGradient(
//                                 colors: [
//                                   AppColors.white.withOpacity(0.8),
//                                   AppColors.bg.withOpacity(0.6),
//                                 ],
//                                 begin: Alignment.bottomCenter,
//                                 end: Alignment.topCenter,
//                               ),
//                             ),
//                             child: Center(
//                               child: Padding(
//                                 padding: s.width < 172
//                                     ? EdgeInsets.all(0)
//                                     : EdgeInsets.all(8.0),
//                                 child: Column(
//                                   mainAxisAlignment: s.width < 192
//                                       ? MainAxisAlignment.start
//                                       : MainAxisAlignment.spaceEvenly,
//                                   crossAxisAlignment: s.width < 192
//                                       ? CrossAxisAlignment.start
//                                       : CrossAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       project["sub"]!,
//                                       style: AppTextStyles.HeadingStyle(
//                                         color: AppColors.white,
//                                         fontsize: s.width < 229
//                                             ? s.width < 187
//                                                 ? 10
//                                                 : 12
//                                             : 15,
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                     ),

//                                     //  AppButton(
//                                     // color: AppColors.Theme,
//                                     //   text: "view",
//                                     //   fontsize: 18,
//                                     //   // url:
//                                     //   //     "https://github.com/MuqadasTajamal/my-portfolio-files/raw/main/muqadas%20cv.pdf",
//                                     // ),

//                                     Container(
//                                       height: 30,
//                                       width: 60,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(10),
//                                         color: AppColors.bg,
//                                       ),
//                                       child: Center(
//                                         child: Text(
//                                           "View ",
//                                           style: AppTextStyles.HeadingStyle(
//                                             color: AppColors.white,
//                                             fontsize: s.width < 220 ? 15 : 18,
//                                             fontWeight: s.width < 220
//                                                 ? FontWeight.w400
//                                                 : FontWeight.bold,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
