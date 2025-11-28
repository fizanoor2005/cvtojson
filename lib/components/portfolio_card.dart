// import 'package:flutter/material.dart';

// class PortfolioCard extends StatefulWidget {
//   final String imagePath;
//   final double width;
//   final double height;

//   const PortfolioCard({
//     required this.imagePath,
//     required this.width,
//     required this.height,
//   });

//   @override
//   State<PortfolioCard> createState() => PortfolioCardState();
// }

// class PortfolioCardState extends State<PortfolioCard> {
//   bool isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onEnter: (_) => setState(() => isHovered = true),
//       onExit: (_) => setState(() => isHovered = false),
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 200),
//         curve: Curves.easeInOut,
//         transform: isHovered
//             ? (Matrix4.identity()..scale(1.02)) // zoom on hover
//             : Matrix4.identity(),
//         child: Stack(
//           children: [
//             // background image
//             ClipRRect(
//               borderRadius: BorderRadius.circular(10),
//               child: Image.asset(
//                 widget.imagePath,
//                 width: widget.width,
//                 height: widget.height,
//                 fit: BoxFit.fitWidth,
//               ),
//             ),

//             // buttons overlay (visible on hover)
//             AnimatedOpacity(
//               duration: const Duration(milliseconds: 200),
//               opacity: isHovered ? 1 : 0,
//               child: Container(
//                 width: widget.width,
//                 height: widget.height,
//                 decoration: BoxDecoration(
//                   color: Colors.black.withOpacity(0.5),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     _HoverButton(text: "Preview"),
//                     _HoverButton(text: "Use Template"),
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

// // 🟥 Red Buttons (reusable)
// class _HoverButton extends StatelessWidget {
//   final String text;

//   const _HoverButton({required this.text});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
//       decoration: BoxDecoration(
//         color: Colors.red,
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Center(
//         child: Text(
//           text,
//           style: const TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.w600,
//             letterSpacing: 0.5,
//           ),
//         ),
//       ),
//     );
//   }
// }











import 'package:flutter/material.dart';

class PortfolioCard extends StatefulWidget {
  final String imagePath;
  final double width;
  final double height;
  final VoidCallback? onTap;
  final String link;
  final Function(String id)? onpreview;
  final Function(String id)? onselect;


  const PortfolioCard({
    required this.imagePath,
    required this.width,
    required this.height,
    this.onTap,
    required this.link,
    this.onpreview,
    this.onselect
  });

  @override
  State<PortfolioCard> createState() => PortfolioCardState();
}

class PortfolioCardState extends State<PortfolioCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          width: widget.width,
          height: widget.height,
          transformAlignment: Alignment.center,
          transform: isHovered
              ? (Matrix4.identity()..scale(1.02))
              : Matrix4.identity(),
          clipBehavior: Clip.hardEdge, // ✅ ensures scaling doesn’t go outside
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              // background image
              Image.asset(
                widget.imagePath,
                width: widget.width,
                height: widget.height,
                fit: BoxFit.fill,
              ),

              // overlay buttons (on hover)
              AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: isHovered ? 1 : 0,
                child: Container(
                  width: widget.width,
                  height: widget.height,
                  color: Colors.black.withOpacity(0.5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _HoverButton(text: "Preview",
                      onTap: (){
                    //  Navigator.push(context, MaterialPageRoute(builder: (context) => PortfolioScreen(),));
                      if (widget.onpreview != null) {
                          widget.onpreview!(widget.link);
                        }
                      }
                      ),
                      const SizedBox(height: 12),
                      _HoverButton(text: "Use Template",
                      onTap: (){
                      if(widget.onselect !=null){
                        widget.onselect!(widget.link);
                      }
                      }
                      
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

class _HoverButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const _HoverButton({
    required this.text,
    required this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
