// import 'package:flutter/material.dart';
// import 'package:portfolio/globals/custom_project_card.dart';
// import 'package:url_launcher/url_launcher.dart';

// class ProjectGrid extends StatelessWidget {
//   final List<String> titles = [
//     "Weather App",
//     "To-Do App",
//     "Counter App",
//   ];

//   final List<String> descriptions = [
//     "Weather forecasting app with API",
//     "Manage your daily tasks easily",
//     "Simple counter app with state",
//   ];

//   final List<String> images = [
//     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL-7xHjDQ4EZsz-YSCQfVMKcO3g_AJvefOcw&s",
//     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2hAFT8_3bv1H54JYDAb2b9rykHVdk0mYVHA&s",
//     "https://picsum.photos/400/200",
//   ];

//   final List<String> links = [
//     "https://your-weather-app-link.com",
//     "https://your-todo-app-link.com",
//     "https://your-counter-app-link.com",
//   ];

//   Future<void> _launchURL(String url) async {
//     final Uri uri = Uri.parse(url);
//     if (await canLaunchUrl(uri)) {
//       await launchUrl(uri, mode: LaunchMode.externalApplication);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;

//     // 🔹 responsive grid count
//     int crossAxisCount = 3;
//     if (size.width < 900) crossAxisCount = 2;
//     if (size.width < 600) crossAxisCount = 1;

//     return GridView.builder(
//       shrinkWrap: true,
//       physics: NeverScrollableScrollPhysics(),
//       padding: EdgeInsets.all(16),
//       itemCount: titles.length,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: crossAxisCount,
//         crossAxisSpacing: 16,
//         mainAxisSpacing: 16,
//         childAspectRatio: 1, // 🔹 height/width ka ratio
//       ),
//       itemBuilder: (context, index) {
//         return CustomProjectCard(
//           image: images[index],
//           text: titles[index],
//           // onTap: () => _launchURL(link) ,
//           imageUrl: images[index],
//         );
//         //  _buildProjectCard(
//         //   size: size,
//         //   title: titles[index],
//         //   description: descriptions[index],
//         //   imageUrl: images[index],
//         //   link: links[index],
//         // );
//       },
//     );
//   }

//   // Widget _buildProjectCard({
//   //   required Size size,
//   //   required String title,
//   //   required String description,
//   //   required String imageUrl,
//   //   required String link,
//   // }) {
//   //   return GestureDetector(
//   //     onTap: () => _launchURL(link),
//   //     child: MouseRegion(
//   //       onEnter: (_) {},
//   //       onExit: (_) {},
//   //       child: Container(
//   //         decoration: BoxDecoration(
//   //           borderRadius: BorderRadius.circular(8),
//   //           color: Colors.white,
//   //           boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4)],
//   //         ),
//   //         child: Column(
//   //           crossAxisAlignment: CrossAxisAlignment.stretch,
//   //           children: [
//   //             // 🔹 Image
//   //             Expanded(
//   //               flex: 3,
//   //               child: ClipRRect(
//   //                 borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
//   //                 child: Image.network(
//   //                   imageUrl,
//   //                   fit: BoxFit.cover,
//   //                   width: double.infinity,
//   //                 ),
//   //               ),
//   //             ),

//   //             // 🔹 Project Name (always visible)
//   //             Container(
//   //               padding: EdgeInsets.all(8),
//   //               alignment: Alignment.center,
//   //               child: Text(
//   //                 title,
//   //                 style: TextStyle(
//   //                   fontWeight: FontWeight.bold,
//   //                   fontSize: size.width < 600 ? 14 : 18,
//   //                 ),
//   //               ),
//   //             ),
//   //           ],
//   //         ),
//   //       ),
//   //     ),
//   //   );
//   // }
// }
