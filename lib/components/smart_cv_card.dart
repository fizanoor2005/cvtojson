// // import 'package:flutter/material.dart';





// // class SmartCvCard extends StatelessWidget {
// //   final String imagePath;
// //   final String title;
// //   final String desc;
// //   final double width;

// //   const SmartCvCard({
// //     required this.imagePath,
// //     required this.title,
// //     required this.desc,
// //     required this.width,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       width: width,
// //       constraints: const BoxConstraints(minHeight: 240, maxWidth: 270),
// //       padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 35),
// //       decoration: BoxDecoration(
// //         color: Colors.white.withOpacity(0.1),
// //         borderRadius: BorderRadius.circular(12),
// //         border: Border.all(color: Colors.white.withOpacity(0.5)),
// //       ),
// //       child: Column(
// //         mainAxisSize: MainAxisSize.min,
// //         children: [
// //           // 🔹 Image instead of Icon
// //           Image.asset(
// //             imagePath,
// //             width: 48,
// //             height: 48,
// //             // fit: BoxFit.fil,
// //           ),
// //           const SizedBox(height: 20),
// //           Text(
// //             title,
// //             textAlign: TextAlign.center,
// //             style: const TextStyle(
// //               fontSize: 16,
// //               color: Colors.white,
// //               fontWeight: FontWeight.bold,
// //             ),
// //           ),
// //           const SizedBox(height: 10),
// //           Text(
// //             desc,
// //             textAlign: TextAlign.center,
// //             style: const TextStyle(
// //               fontFamily: "Sora",
// //               fontSize: 14,
// //               color: Colors.white70,
// //               height: 1.4,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }



import 'package:flutter/material.dart';

class SmartCvCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String desc;
  final double width;

  const SmartCvCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.desc,
    required this.width,
  });

 

  @override
    Widget build(BuildContext context) {
    return Container(
      width: width,
      constraints: const BoxConstraints(minHeight: 240, maxWidth: 270),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 35),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.5)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 🔹 Image (no alert)
          Image.asset(
            imagePath,
            width: 48,
            height: 48,
          ),
          const SizedBox(height: 20),

          // 🔹 Title (alert on tap)
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),   

       
          Text(
            desc,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: "Sora",
              fontSize: 14,
              color: Colors.white70,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
