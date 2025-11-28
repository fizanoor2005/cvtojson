// import 'package:flutter/material.dart';

// class FreeResumeTemplatesScreen extends StatelessWidget {
//   const FreeResumeTemplatesScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final isMobile = size.width < 800;

//     final templates = [
//       {
//         'title': 'Creative',
//         'desc': 'Land your dream job in a creative industries by using this resume templete,which will make your application stand out',
//         'img': 'flower/cv1.png',
//       },
//       {
//         'title': 'Basic',
//         'desc': 'Easily personalize this basic resume layout that can be completed in under ten minutes through our intutive process',
//         'img': 'flower/cv6.png',
//       },
//       {
//         'title': 'Modern',
//         'desc': 'It can be hard to stand out from the crowd, but this modern resume sample will take care of this.',
//         'img': 'flower/cv3.png',
//       },
//       {
//         'title': 'Executive',
//         'desc': 'Executive resume sample with a contemporary approach and eye-catching design that makes sure  spotted first.',
//         'img': 'flower/cv8.png',
//       },
//       {
//         'title': 'Simple',
//         'desc': 'Simple resume layout for conservative industries, which is a minimalistic upgrade from the traditional resumes.',
//         'img': 'flower/cv5.png',
//       },
//       {
//         'title': 'Functional',
//         'desc': 'A functional resume templete that works for all industries and will emphasize your strengths & work experience.',
//         'img': 'flower/cv7.png',
//       },
//       {
//         'title': 'Professional',
//         'desc': 'A professional resume sample that has been approved by various recruiters and helped numerous people get their dream job.',
//         'img': 'flower/cv2.png',
//       },
//       {
//         'title': 'College',
//         'desc': 'An updated and contemporary version of the 21st-century college resume templete , being an alternative to the old styles.',
//         'img': 'flower/cv4.png',
//       },
//     ];

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // --- Heading ---


//             SizedBox(height: 20,),

//             Container(height: 10,
//             width: 60,
                      
//             decoration: BoxDecoration( 
//                       color: Color(0xFFF4BC4A),
//                       borderRadius: BorderRadius.circular(10)

//             ),
            
            
//             ),
//             SizedBox(height: 20,),
//             RichText(
//               text: const TextSpan(
//                 children: [
//                    TextSpan(
//                     text: 'Free ',
//                     style: TextStyle(
//                       color: Color(0xFFF4BC4A),
//                       fontSize: 38,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: "Sora"
//                     ),
//                   ),
//                   TextSpan(
//                     text: 'resume templates\n',
//                     style: TextStyle(
//                       color: Color(0xFF425061),
//                       fontSize: 38,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: "Sora"

//                     ),
//                   ),
//                   TextSpan(
//                     text: 'to edit and download instantly.',
//                     style: TextStyle(
                      
//                       fontFamily: "Sora",
//                       color: Color(0xFF425061),
                    
//                       fontSize: 29,
//                       height: 1.5
                      
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 30),

//             // --- Grid Section ---
//             GridView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: isMobile ? 1 : (size.width < 1200 ? 2 : 4),
//                 mainAxisSpacing: 30,
//                 crossAxisSpacing: 30,
//                 childAspectRatio: 0.5,
//               ),
//               itemCount: templates.length,
//               itemBuilder: (context, index) {
//                 final t = templates[index];
//                 return _TemplateCard(
//                   title: t['title']!,
//                   desc: t['desc']!,
//                   imagePath: t['img']!,
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // class _TemplateCard extends StatelessWidget {
// //   final String title;
// //   final String desc;
// //   final String imagePath;

// //   const _TemplateCard({
// //     required this.title,
// //     required this.desc,
// //     required this.imagePath,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       decoration: BoxDecoration(
// //        color: Colors.grey[100],
// //         border: Border.all(color: Colors.grey.shade300),
// //         borderRadius: BorderRadius.circular(12),
// //         boxShadow: [
// //           BoxShadow(
// //             color: Colors.grey.shade200,
// //             blurRadius: 5,
// //             offset: const Offset(0, 3),
// //           ),
// //         ],
// //       ),
// //       child: Padding(
// //         padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             // Image Section
// //           Expanded(
// //           flex: 4,
// //           child: Container(
// //             height: 350,
            
// //             decoration: BoxDecoration(
// //         borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// //         image: DecorationImage(
// //           image: AssetImage(imagePath),
// //           fit: BoxFit.fill,
// //         ),
// //             ),
// //             width: double.infinity,
// //           ),
// //         ),
        
        
// //             // Text Section
// //             Expanded(
// //               flex: 2,
// //               child: Padding(
// //                 padding: const EdgeInsets.all(12.0),
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Text(
// //                       title,
// //                       style: const TextStyle(
// //                         fontSize: 25,
// //                         fontWeight: FontWeight.w700,
// //                         fontFamily: "Sora",
// //                          color: Color(0xFF425061),
// //                       ),
// //                     ),
// //                     const SizedBox(height: 6),
// //                     Text(
// //                       desc,
// //                       style: TextStyle(
// //                         fontSize: 14,
// //                         color: Colors.grey.shade700,
// //                         height: 1.4,
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }










// // class _TemplateCard extends StatefulWidget {
// //   final String title;
// //   final String desc;
// //   final String imagePath;

// //   const _TemplateCard({
// //     required this.title,
// //     required this.desc,
// //     required this.imagePath,
// //   });

// //   @override
// //   State<_TemplateCard> createState() => _TemplateCardState();
// // }

// // class _TemplateCardState extends State<_TemplateCard> {
// //   bool _isHovered = false;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       decoration: BoxDecoration(
// //         color: Colors.grey[100],
// //         border: Border.all(color: Colors.grey.shade300),
// //         borderRadius: BorderRadius.circular(12),
// //         boxShadow: [
// //           BoxShadow(
// //             color: Colors.grey.shade200,
// //             blurRadius: 5,
// //             offset: const Offset(0, 3),
// //           ),
// //         ],
// //       ),
// //       child: Padding(
// //         padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             // 🌟 Image Section (with hover effect)
// //             MouseRegion(
// //               onEnter: (_) => setState(() => _isHovered = true),
// //               onExit: (_) => setState(() => _isHovered = false),
// //               child: AnimatedContainer(
// //                 duration: const Duration(milliseconds: 200),
// //                 height: 350,
// //                 width: double.infinity,
// //                 decoration: BoxDecoration(
// //                   borderRadius:
// //                       const BorderRadius.vertical(top: Radius.circular(12)),
// //                   image: DecorationImage(
// //                     image: AssetImage(widget.imagePath),
// //                     fit: BoxFit.fill,
// //                   ),
// //                   boxShadow: _isHovered
// //                       ? [
// //                           BoxShadow(
// //                             color: const Color(0xFFF4BC4A).withOpacity(0.5),
// //                             blurRadius: 20,
// //                             spreadRadius: 3,
// //                             offset: const Offset(0, 3),
// //                           ),
// //                         ]
// //                       : [],
// //                 ),
// //               ),
// //             ),

// //             // 📝 Text Section
// //             Expanded(
// //               child: Padding(
// //                 padding: const EdgeInsets.only(top: 15,left: 12,right: 15),
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Text(
// //                       widget.title,
// //                       style: const TextStyle(
// //                         fontSize: 25,
// //                         fontWeight: FontWeight.w700,
// //                         fontFamily: "Sora",
// //                         color: Color(0xFF425061),
// //                       ),
// //                     ),
// //                     const SizedBox(height: 6),
// //                     Text(
// //                       widget.desc,
// //                       style: TextStyle(
// //                         fontSize: 15,
// //                         color: Colors.grey.shade700,
// //                         height: 1.4,
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }














// class _TemplateCard extends StatefulWidget {
//   final String title;
//   final String desc;
//   final String imagePath;

//   const _TemplateCard({
//     required this.title,
//     required this.desc,
//     required this.imagePath,
//   });

//   @override
//   State<_TemplateCard> createState() => _TemplateCardState();
// }

// class _TemplateCardState extends State<_TemplateCard> {
//   bool _isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.grey[100],
//         border: Border.all(color: Colors.grey.shade300),
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.shade200,
//             blurRadius: 5,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // 🌟 Image Section (with hover effect + button)
//             MouseRegion(
//               onEnter: (_) => setState(() => _isHovered = true),
//               onExit: (_) => setState(() => _isHovered = false),
//               child: AnimatedContainer(
//                 duration: const Duration(milliseconds: 250),
//                 height: 400,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   borderRadius:
//                       const BorderRadius.vertical(top: Radius.circular(12)),
//                   image: DecorationImage(
//                     image: AssetImage(widget.imagePath),
//                     fit: BoxFit.fill,
//                   ),
//                   boxShadow: _isHovered
//                       ? [
//                           BoxShadow(
//                             color: const Color(0xFFF4BC4A).withOpacity(0.5),
//                             blurRadius: 20,
//                             spreadRadius: 3,
//                             offset: const Offset(0, 3),
//                           ),
//                         ]
//                       : [],
//                 ),
//                 child: Stack(
//                   alignment: Alignment.bottomCenter,
//                   children: [
//                     AnimatedOpacity(
//                       opacity: _isHovered ? 1.0 : 0.0,
//                       duration: const Duration(milliseconds: 250),
//                       child: Container(
//                         margin: const EdgeInsets.only(bottom: 15),
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: const Color(0xFF74E8CE),
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 28, vertical: 18),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30),
//                             ),
//                             elevation: 6,
//                             shadowColor:
//                                 const Color(0xFF74E8CE).withOpacity(0.5),
//                           ),
//                           child: const Text(
//                             "Customize",
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontFamily: "Sora",
//                               fontWeight: FontWeight.w600,
//                               color:  Color(0xFF425061),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             // 📝 Text Section
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 20,left: 12,right: 12),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       widget.title,
//                       style: const TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.w700,
//                         fontFamily: "Sora",
//                         color: Color(0xFF425061),
//                       ),
//                     ),
//                     const SizedBox(height: 6),
//                     Text(
//                       widget.desc,
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.grey.shade700,
//                         height: 1.4,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }












// import 'package:flutter/material.dart';

// class FreeResumeTemplatesScreen extends StatelessWidget {
//   const FreeResumeTemplatesScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final isMobile = size.width < 800;

//     final templates = [
//       {
//         'title': 'Creative',
//         'desc':
//             'Land your dream job in a creative industries by using this resume template, which will make your application stand out',
//         'img': 'flower/cv1.png',
//       },
//       {
//         'title': 'Basic',
//         'desc':
//             'Easily personalize this basic resume layout that can be completed in under ten minutes through our intuitive process',
//         'img': 'flower/cv6.png',
//       },
//       {
//         'title': 'Modern',
//         'desc':
//             'It can be hard to stand out from the crowd, but this modern resume sample will take care of this.',
//         'img': 'flower/cv3.png',
//       },
//       {
//         'title': 'Executive',
//         'desc':
//             'Executive resume sample with a contemporary approach and eye-catching design that makes sure spotted first.',
//         'img': 'flower/cv8.png',
//       },
//       {
//         'title': 'Simple',
//         'desc':
//             'Simple resume layout for conservative industries, which is a minimalistic upgrade from the traditional resumes.',
//         'img': 'flower/cv5.png',
//       },
//       {
//         'title': 'Functional',
//         'desc':
//             'A functional resume template that works for all industries and will emphasize your strengths & work experience.',
//         'img': 'flower/cv7.png',
//       },
//       {
//         'title': 'Professional',
//         'desc':
//             'A professional resume sample that has been approved by various recruiters and people get their dream job.',
//         'img': 'flower/cv2.png',
//       },
//       {
//         'title': 'College',
//         'desc':
//             'An updated and contemporary version of the 21st-century college resume template, being an alternative to the old styles.',
//         'img': 'flower/cv4.png',
//       },
//     ];

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         padding: EdgeInsets.symmetric(
//           horizontal: isMobile ? 20 : 50,
//           vertical: isMobile ? 30 : 40,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 20),

//             // --- Yellow bar ---
//             Container(
//               height: 10,
//               width: 60,
//               decoration: BoxDecoration(
//                 color: const Color(0xFFF4BC4A),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//             ),
//             const SizedBox(height: 20),

//             // --- Heading ---
//             RichText(
//               text: TextSpan(
//                 children: [
//                   const TextSpan(
//                     text: 'Free ',
//                     style: TextStyle(
//                       color: Color(0xFFF4BC4A),
//                       fontSize: 38,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: "Sora",
//                     ),
//                   ),
//                   TextSpan(
//                     text: 'resume templates\n',
//                     style: TextStyle(
//                       color: const Color(0xFF425061),
//                       fontSize: isMobile ? 28 : 38,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: "Sora",
//                     ),
//                   ),
//                   TextSpan(
//                     text: 'to edit and download instantly.',
//                     style: TextStyle(
//                       fontFamily: "Sora",
//                       color: const Color(0xFF425061),
//                       fontSize: isMobile ? 20 : 29,
//                       height: 1.5,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 30),

//             // --- Grid Section ---
//             LayoutBuilder(
//               builder: (context, constraints) {
//                 int crossAxisCount;
//                 double aspectRatio;

//                 if (constraints.maxWidth < 700) {
//                   crossAxisCount = 1;
//                   aspectRatio = 0.4;
//                 } else if (constraints.maxWidth < 1200) {
//                   crossAxisCount = 2;
//                   aspectRatio = 0.4;
//                 }
//                  else {
//                   crossAxisCount = 4;
//                   aspectRatio = 0.5;
//                 }

//                 return GridView.builder(
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: crossAxisCount,
//                     mainAxisSpacing: 30,
//                     crossAxisSpacing: 30,
//                     childAspectRatio: aspectRatio,
//                   ),
//                   itemCount: templates.length,
//                   itemBuilder: (context, index) {
//                     final t = templates[index];
//                     return _TemplateCard(
//                       title: t['title']!,
//                       desc: t['desc']!,
//                       imagePath: t['img']!,
//                     );
//                   },
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _TemplateCard extends StatefulWidget {
//   final String title;
//   final String desc;
//   final String imagePath;

//   const _TemplateCard({
//     required this.title,
//     required this.desc,
//     required this.imagePath,
//   });

//   @override
//   State<_TemplateCard> createState() => _TemplateCardState();
// }

// class _TemplateCardState extends State<_TemplateCard> {
//   bool _isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     final isMobile = width < 800;

//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.grey[100],
//         border: Border.all(color: Colors.grey.shade300),
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.shade200,
//             blurRadius: 5,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // 🌟 Image with hover effect
//             MouseRegion(
//               onEnter: (_) => setState(() => _isHovered = true),
//               onExit: (_) => setState(() => _isHovered = false),
//               child: AnimatedContainer(
//                 duration: const Duration(milliseconds: 250),
//                 height: isMobile ? 280 : 400,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   borderRadius:
//                       const BorderRadius.vertical(top: Radius.circular(13)),
//                   image: DecorationImage(
//                     image: AssetImage(widget.imagePath),
//                     fit: BoxFit.fill,
//                   ),
//                   boxShadow: _isHovered
//                       ? [
//                           BoxShadow(
//                             color: const Color(0xFFF4BC4A).withOpacity(0.5),
//                             blurRadius: 20,
//                             spreadRadius: 3,
//                             offset: const Offset(0, 3),
//                           ),
//                         ]
//                       : [],
//                 ),
//                 child: Stack(
//                   alignment: Alignment.bottomCenter,
//                   children: [
//                     AnimatedOpacity(
//                       opacity: _isHovered ? 1.0 : 0.0,
//                       duration: const Duration(milliseconds: 250),
//                       child: Container(
//                         margin: const EdgeInsets.only(bottom: 15),
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: const Color(0xFF74E8CE),
//                             padding: EdgeInsets.symmetric(
//                               horizontal: isMobile ? 20 : 28,
//                               vertical: isMobile ? 12 : 18,
//                             ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30),
//                             ),
//                             elevation: 6,
//                             shadowColor:
//                                 const Color(0xFF74E8CE).withOpacity(0.5),
//                           ),
//                           child: Text(
//                             "Customize",
//                             style: TextStyle(
//                               fontSize: isMobile ? 14 : 16,
//                               fontFamily: "Sora",
//                               fontWeight: FontWeight.w600,
//                               color: const Color(0xFF425061),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             // 📝 Text Section
//             Expanded(
//               child: Padding(
//                 padding:
//                     const EdgeInsets.only(top: 20, left: 12, right: 12, bottom: 10),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       widget.title,
//                       style: TextStyle(
//                         fontSize: isMobile ? 22 : 25,
//                         fontWeight: FontWeight.w700,
//                         fontFamily: "Sora",
//                         color: const Color(0xFF425061),
//                       ),
//                     ),
//                     const SizedBox(height: 6),
//                     Text(
//                       widget.desc,
//                       style: TextStyle(
//                         fontSize: isMobile ? 13.5 : 14,
//                         color: Colors.grey.shade700,
//                         height: 1.4,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }














// import 'package:flutter/material.dart';

// class FreeResumeTemplatesScreen extends StatelessWidget {
//   const FreeResumeTemplatesScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final isMobile = size.width < 800;

//     final templates = [
//       {
//         'title': 'Creative',
//         'desc':
//             'Land your dream job in a creative industries by using this resume template, which will make your application stand out',
//         'img': 'flower/cv1.png',
//       },
//       {
//         'title': 'Basic',
//         'desc':
//             'Easily personalize this basic resume layout that can be completed in under ten minutes through our intuitive process',
//         'img': 'flower/cv6.png',
//       },
//       {
//         'title': 'Modern',
//         'desc':
//             'It can be hard to stand out from the crowd, but this modern resume sample will take care of this.',
//         'img': 'flower/cv3.png',
//       },
//       {
//         'title': 'Executive',
//         'desc':
//             'Executive resume sample with a contemporary approach and eye-catching design that makes sure spotted first.',
//         'img': 'flower/cv8.png',
//       },
//       {
//         'title': 'Simple',
//         'desc':
//             'Simple resume layout for conservative industries, which is a minimalistic upgrade from the traditional resumes.',
//         'img': 'flower/cv5.png',
//       },
//       {
//         'title': 'Functional',
//         'desc':
//             'A functional resume template that works for all industries and will emphasize your strengths & work experience.',
//         'img': 'flower/cv7.png',
//       },
//       {
//         'title': 'Professional',
//         'desc':
//             'A professional resume sample that has been approved by various recruiters and people get their dream job.',
//         'img': 'flower/cv2.png',
//       },
//       {
//         'title': 'College',
//         'desc':
//             'An updated and contemporary version of the 21st-century college resume template, being an alternative to the old styles.',
//         'img': 'flower/cv4.png',
//       },
//     ];

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: EdgeInsets.symmetric(
//             horizontal: isMobile ? 20 : 50,
//             vertical: isMobile ? 30 : 40,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(height: 20),

//               // Yellow bar
//               Container(
//                 height: 10,
//                 width: 60,
//                 decoration: BoxDecoration(
//                   color: const Color(0xFFF4BC4A),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//               const SizedBox(height: 20),

//               // Heading
//               RichText(
//                 text: TextSpan(
//                   children: [
//                     const TextSpan(
//                       text: 'Free ',
//                       style: TextStyle(
//                         color: Color(0xFFF4BC4A),
//                         fontSize: 38,
//                         fontWeight: FontWeight.bold,
//                         fontFamily: "Sora",
//                       ),
//                     ),
//                     TextSpan(
//                       text: 'resume templates\n',
//                       style: TextStyle(
//                         color: const Color(0xFF425061),
//                         fontSize: isMobile ? 28 : 38,
//                         fontWeight: FontWeight.bold,
//                         fontFamily: "Sora",
//                       ),
//                     ),
//                     TextSpan(
//                       text: 'to edit and download instantly.',
//                       style: TextStyle(
//                         fontFamily: "Sora",
//                         color: const Color(0xFF425061),
//                         fontSize: isMobile ? 20 : 29,
//                         height: 1.5,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 40),

//               // Grid Section
//               LayoutBuilder(
//                 builder: (context, constraints) {
//                   int crossAxisCount;
//                   double aspectRatio;

//                   if (constraints.maxWidth <   270) {
//                     crossAxisCount = 1;
//                     aspectRatio = 0.1;
//                   } else if (constraints.maxWidth < 501) {
//                     crossAxisCount = 1;
//                     aspectRatio = 0.4;
//                   }else if (constraints.maxWidth < 596) {
//                     crossAxisCount = 2;
//                     aspectRatio = 0.4;
//                   }else if (constraints.maxWidth < 892) {
//                     crossAxisCount = 2;
//                     aspectRatio = 0.5;
//                   } else if (constraints.maxWidth < 1116) {
//                     crossAxisCount = 3;
//                     aspectRatio = 0.4;
//                   } 
//                   else {
//                     crossAxisCount = 4;
//                     aspectRatio = 0.5;
//                   }

//                   return GridView.builder(
//                     shrinkWrap: true,
//                     physics: const NeverScrollableScrollPhysics(),
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: crossAxisCount,
//                       mainAxisSpacing: 30,
//                       crossAxisSpacing: 30,
//                       childAspectRatio: aspectRatio,
//                     ),
//                     itemCount: templates.length,
//                     itemBuilder: (context, index) {
//                       final t = templates[index];
//                       return _TemplateCard(
//                         title: t['title']!,
//                         desc: t['desc']!,
//                         imagePath: t['img']!,
//                       );
//                     },
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _TemplateCard extends StatefulWidget {
//   final String title;
//   final String desc;
//   final String imagePath;

//   const _TemplateCard({
//     required this.title,
//     required this.desc,
//     required this.imagePath,
//   });

//   @override
//   State<_TemplateCard> createState() => _TemplateCardState();
// }

// class _TemplateCardState extends State<_TemplateCard> {
//   bool _isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     final isMobile = width < 800;
//      final horizontalPadding = width < 540 ?width < 320 ?20.0: 60.0 : 0.0;


//     return


// Padding(
//   padding:  EdgeInsets.symmetric(
//     horizontal: horizontalPadding
//   ),
//   child: Container(
//         decoration: BoxDecoration(
//           color: Colors.grey[100],
//           border: Border.all(color: Colors.grey.shade300),
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.shade200,
//               blurRadius: 5,
//               offset: const Offset(0, 3),
//             ),
//           ],
//         ),
//         child: Padding(
//           padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // 🌟 Image with hover effect
//               MouseRegion(
//                 onEnter: (_) => setState(() => _isHovered = true),
//                 onExit: (_) => setState(() => _isHovered = false),
//                 child: AnimatedContainer(
//                   duration: const Duration(milliseconds: 250),
//                   height: isMobile ? 340 : 400,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     borderRadius:
//                         const BorderRadius.vertical(top: Radius.circular(13)),
//                     image: DecorationImage(
//                       image: AssetImage(widget.imagePath),
//                       fit: BoxFit.fill,
//                     ),
//                     boxShadow: _isHovered
//                         ? [
//                             BoxShadow(
//                               color: const Color(0xFFF4BC4A).withOpacity(0.5),
//                               blurRadius: 20,
//                               spreadRadius: 3,
//                               offset: const Offset(0, 3),
//                             ),
//                           ]
//                         : [],
//                   ),
//                   child: Stack(
//                     alignment: Alignment.bottomCenter,
//                     children: [
//                       AnimatedOpacity(
//                         opacity: _isHovered ? 1.0 : 0.0,
//                         duration: const Duration(milliseconds: 250),
//                         child: Container(
//                           margin: const EdgeInsets.only(bottom: 15),
//                           child: ElevatedButton(
//                             onPressed: () {},
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: const Color(0xFF74E8CE),
//                               padding: EdgeInsets.symmetric(
//                                 horizontal: isMobile ? 20 : 28,
//                                 vertical: isMobile ? 12 : 18,
//                               ),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                               ),
//                               elevation: 6,
//                               shadowColor:
//                                   const Color(0xFF74E8CE).withOpacity(0.5),
//                             ),
//                             child: Text(
//                               "Customize",
//                               style: TextStyle(
//                                 fontSize: isMobile ? 14 : 16,
//                                 fontFamily: "Sora",
//                                 fontWeight: FontWeight.w600,
//                                 color: const Color(0xFF425061),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
  
//               // 📝 Text Section
//               Expanded(
//                 child: Padding(
//                   padding:
//                       const EdgeInsets.only(top: 20, left: 12, right: 12, bottom: 10),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         widget.title,
//                         style: TextStyle(
//                           fontSize: isMobile ? 22 : 25,
//                           fontWeight: FontWeight.w700,
//                           fontFamily: "Sora",
//                           color: const Color(0xFF425061),
//                         ),
//                       ),
//                       const SizedBox(height: 6),
//                       Text(
//                         widget.desc,
//                         style: TextStyle(
//                           fontSize: isMobile ? 13.5 : 14,
//                           color: Colors.grey.shade700,
//                           height: 1.4,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
// );






//     //  AnimatedContainer(
//     //   duration: const Duration(milliseconds: 200),
//     //   decoration: BoxDecoration(
//     //     color: Colors.grey[100],
//     //     border: Border.all(color: Colors.grey.shade300),
//     //     borderRadius: BorderRadius.circular(12),
//     //     boxShadow: [
//     //       BoxShadow(
//     //         color: Colors.grey.shade200,
//     //         blurRadius: 6,
//     //         offset: const Offset(0, 3),
//     //       ),
//     //     ],
//     //   ),
//     //   child: Column(
//     //     crossAxisAlignment: CrossAxisAlignment.start,
//     //     children: [
//     //       // Image
//     //       MouseRegion(
//     //         onEnter: (_) => setState(() => _isHovered = true),
//     //         onExit: (_) => setState(() => _isHovered = false),
//     //         child: Stack(
//     //           children: [
//     //             ClipRRect(
//     //               borderRadius:
//     //                   const BorderRadius.vertical(top: Radius.circular(12)),
//     //               child: AspectRatio(
//     //                 aspectRatio: 3 / 4,
//     //                 child: Image.asset(
//     //                   widget.imagePath,
//     //                   fit: BoxFit.cover,
//     //                   width: double.infinity,
//     //                 ),
//     //               ),
//     //             ),
//     //             if (_isHovered)
//     //               Positioned.fill(
//     //                 child: AnimatedOpacity(
//     //                   opacity: _isHovered ? 1.0 : 0.0,
//     //                   duration: const Duration(milliseconds: 250),
//     //                   child: Container(
//     //                     color: Colors.black.withOpacity(0.3),
//     //                     alignment: Alignment.bottomCenter,
//     //                     padding: const EdgeInsets.only(bottom: 20),
//     //                     child: ElevatedButton(
//     //                       onPressed: () {},
//     //                       style: ElevatedButton.styleFrom(
//     //                         backgroundColor: const Color(0xFF74E8CE),
//     //                         padding: EdgeInsets.symmetric(
//     //                           horizontal: isMobile ? 20 : 28,
//     //                           vertical: isMobile ? 12 : 18,
//     //                         ),
//     //                         shape: RoundedRectangleBorder(
//     //                           borderRadius: BorderRadius.circular(30),
//     //                         ),
//     //                         elevation: 6,
//     //                         shadowColor:
//     //                             const Color(0xFF74E8CE).withOpacity(0.5),
//     //                       ),
//     //                       child: Text(
//     //                         "Customize",
//     //                         style: TextStyle(
//     //                           fontSize: isMobile ? 14 : 16,
//     //                           fontFamily: "Sora",
//     //                           fontWeight: FontWeight.w600,
//     //                           color: const Color(0xFF425061),
//     //                         ),
//     //                       ),
//     //                     ),
//     //                   ),
//     //                 ),
//     //               ),
//     //           ],
//     //         ),
//     //       ),

//     //       // Text section
//     //       Padding(
//     //         padding:
//     //             const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 15),
//     //         child: Column(
//     //           crossAxisAlignment: CrossAxisAlignment.start,
//     //           children: [
//     //             Text(
//     //               widget.title,
//     //               style: TextStyle(
//     //                 fontSize: isMobile ? 22 : 25,
//     //                 fontWeight: FontWeight.w700,
//     //                 fontFamily: "Sora",
//     //                 color: const Color(0xFF425061),
//     //               ),
//     //             ),
//     //             const SizedBox(height: 8),
//     //             Text(
//     //               widget.desc,
//     //               style: TextStyle(
//     //                 fontSize: isMobile ? 13.5 : 14,
//     //                 color: Colors.grey.shade700,
//     //                 height: 1.4,
//     //               ),
//     //             ),
//     //           ],
//     //         ),
//     //       ),
//     //     ],
//     //   ),
//     // );
 
//   }
// }












import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart'; // 👈 added import

class FreeResumeTemplatesScreen extends StatelessWidget {
  const FreeResumeTemplatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 800;

    final templates = [
      {
        'title': 'Creative',
        'desc':
            'Land your dream job in a creative industries by using this resume template, which will make your application stand out',
        'img': 'flower/cv1.png',
      },
      {
        'title': 'Basic',
        'desc':
            'Easily personalize this basic resume layout that can be completed in under ten minutes through our intuitive process',
        'img': 'flower/cv6.png',
      },
      {
        'title': 'Modern',
        'desc':
            'It can be hard to stand out from the crowd, but this modern resume sample will take care of this.',
        'img': 'flower/cv3.png',
      },
      {
        'title': 'Executive',
        'desc':
            'Executive resume sample with a contemporary approach and eye-catching design that makes sure spotted first.',
        'img': 'flower/cv8.png',
      },
      {
        'title': 'Simple',
        'desc':
            'Simple resume layout for conservative industries, which is a minimalistic upgrade from the traditional resumes.',
        'img': 'flower/cv5.png',
      },
      {
        'title': 'Functional',
        'desc':
            'A functional resume template that works for all industries and will emphasize your strengths & work experience.',
        'img': 'flower/cv7.png',
      },
      {
        'title': 'Professional',
        'desc':
            'A professional resume sample that has been approved by various recruiters and people get their dream job.',
        'img': 'flower/cv2.png',
      },
      {
        'title': 'College',
        'desc':
            'An updated and contemporary version of the 21st-century college resume template, being an alternative to the old styles.',
        'img': 'flower/cv4.png',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 20 : 50,
            vertical: isMobile ? 30 : 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              // Yellow bar
              Container(
                height: 10,
                width: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFFF4BC4A),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 20),

              // Heading
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Free ',
                      style: TextStyle(
                        color: Color(0xFFF4BC4A),
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Sora",
                      ),
                    ),
                    TextSpan(
                      text: 'resume templates\n',
                      style: TextStyle(
                        color: const Color(0xFF425061),
                        fontSize: isMobile ? 28 : 38,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Sora",
                      ),
                    ),
                    TextSpan(
                      text: 'to edit and download instantly.',
                      style: TextStyle(
                        fontFamily: "Sora",
                        color: const Color(0xFF425061),
                        fontSize: isMobile ? 20 : 29,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              // Grid Section
              LayoutBuilder(
                builder: (context, constraints) {
                  int crossAxisCount;
                  double aspectRatio;

                  if (constraints.maxWidth < 270) {
                    crossAxisCount = 1;
                    aspectRatio = 0.2;
                  } else if (constraints.maxWidth < 501) {
                    crossAxisCount = 1;
                    aspectRatio = 0.5;
                  } else if (constraints.maxWidth < 596) {
                    crossAxisCount = 2;
                    aspectRatio = 0.5;
                  } else if (constraints.maxWidth < 892) {
                    crossAxisCount = 2;
                    aspectRatio = 0.5;
                  } else if (constraints.maxWidth < 1116) {
                    crossAxisCount = 3;
                    aspectRatio = 0.4;
                  } else {
                    crossAxisCount = 4;
                    aspectRatio = 0.5;
                  }

                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      mainAxisSpacing: 30,
                      crossAxisSpacing: 30,
                      childAspectRatio: aspectRatio,
                    ),
                    itemCount: templates.length,
                    itemBuilder: (context, index) {
                      final t = templates[index];
                      return _TemplateCard(
                        title: t['title']!,
                        desc: t['desc']!,
                        imagePath: t['img']!,
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TemplateCard extends StatefulWidget {
  final String title;
  final String desc;
  final String imagePath;

  const _TemplateCard({
    required this.title,
    required this.desc,
    required this.imagePath,
  });

  @override
  State<_TemplateCard> createState() => _TemplateCardState();
}

class _TemplateCardState extends State<_TemplateCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 800;
    final horizontalPadding = width < 540 ? (width < 320 ? 20.0 : 60.0) : 0.0;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🌟 Image with hover effect
              MouseRegion(
                onEnter: (_) => setState(() => _isHovered = true),
                onExit: (_) => setState(() => _isHovered = false),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  height: isMobile ? 340 : 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(13)),
                    image: DecorationImage(
                      image: AssetImage(widget.imagePath),
                      fit: BoxFit.fill,
                    ),
                    boxShadow: _isHovered
                        ? [
                            BoxShadow(
                              color: const Color(0xFFF4BC4A).withOpacity(0.5),
                              blurRadius: 25,
                              spreadRadius: 4,
                              offset: const Offset(0, 3),
                            ),
                          ]
                        : [],
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      AnimatedOpacity(
                        opacity: _isHovered ? 1.0 : 0.0,
                        duration: const Duration(milliseconds: 250),
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF74E8CE),
                              padding: EdgeInsets.symmetric(
                                horizontal: isMobile ? 20 : 28,
                                vertical: isMobile ? 12 : 18,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              elevation: 6,
                              shadowColor:
                                  const Color(0xFF74E8CE).withOpacity(0.5),
                            ),
                            child: AutoSizeText( // 👈 responsive button text
                              "Customize",
                              style: TextStyle(
                                fontSize: isMobile ? 14 : 16,
                                fontFamily: "Sora",
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF425061),
                              ),
                              maxLines: 1,
                              minFontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // 📝 Text Section
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 12, right: 12, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText( // 👈 responsive title
                        widget.title,
                        style: TextStyle(
                          fontSize: isMobile ? 22 : 25,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Sora",
                          color: const Color(0xFF425061),
                        ),
                        maxLines: 1,
                        minFontSize: 16,
                      ),
                      const SizedBox(height: 6),
                      AutoSizeText( // 👈 responsive description
                        widget.desc,
                        style: TextStyle(
                          fontSize: isMobile ? 13.5 : 14,
                          color: Colors.grey.shade700,
                          height: 1.4,
                        ),
                        minFontSize: 11,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}