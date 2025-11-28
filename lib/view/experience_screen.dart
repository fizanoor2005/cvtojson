// import 'package:flutter/material.dart';


// class ExperienceScreen extends StatelessWidget {
//   const ExperienceScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     final items =  [
//       ExpItem('Weather App', 'Real-time weather with REST API'),
//       ExpItem('ToDo App', 'Task manager with CRUD features'),
//       ExpItem('Chatbot App', 'Conversational UI prototype'),
//       ExpItem('Instagram UI Design', 'Responsive social UI'),
//       ExpItem('Daraz App UI Design', 'E-commerce app UI design'),
//     ];
  

//     return Container(
//        padding:   size.width<380?EdgeInsets.only(top: 20,
//                     left: 20,
//                     right: 10): EdgeInsets.only(top: 20,
//                     left: 100,
//                     right: 10),
//         height:size.width<430?size.width<195?size.width<195?size.width<90?size.height*20:size.height*7:size.height*6:size.height* 2:size.height *0.9,
//                   width: size.width,
//                   color: Colors.grey[200],
//       child: Column(
//         children: [
//            Align(
//             alignment: Alignment.centerLeft,
//             child: 
            
//                             Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           CircleAvatar(
//                             backgroundColor: Color.fromARGB(255, 240, 240, 240),
                           
//                             radius: size.width<384?size.width<256?size.width<209?10: 20: 30: 40,
//                             child: Icon(Icons.work_outline,size: 40,color: Color(0xff0066CC),),
                     
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           if(size.width>123)
//                           Text(
//                             "Experience",
//                             style: TextStyle(
//                                 fontSize: size.width<412?size.width<384?size.width<256?size.width<209?10: 20: 30:35 :40,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
                         
//                         ],
//                       ),
           
//           ),
//           const SizedBox(height: 12),
//           ...items.map((e) => _TimelineTile(item: e)).toList(),
//         ],
//       ),
//     );
//   }
// }

// class ExpItem {
//   final String title;
//   final String subtitle;
//   const ExpItem(this.title, this.subtitle);
// }

// class _TimelineTile extends StatelessWidget {
//   const _TimelineTile({required this.item});
//   final ExpItem item;
//   @override
//   Widget build(BuildContext context) {

//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         // Dot & line
         
//         Column(
          
        
//           children: [
            
//             Container(
//               width: 20,
//               height: 20,
//               decoration: BoxDecoration(
//                 color: Color(0xff0066CC),
//                 shape: BoxShape.circle,
//               ),
//             ),
//             Container(
//               width: 2,
//               height: 36,
//               margin: const EdgeInsets.symmetric(vertical: 4),
//               color: Colors.black,
//             ),
//           ],
//         ),
//         const SizedBox(width: 12),
        
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(item.title, style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold)),
//               const SizedBox(height: 4),
//               Text(item.subtitle, style: TextStyle(color: Colors.black,fontSize: 20)),
//               const SizedBox(height: 16),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }





import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final items = [
      const ExpItem('Weather App', 'Real-time weather with REST API'),
      const ExpItem('ToDo App', 'Task manager with CRUD features'),
      const ExpItem('Chatbot App', 'Conversational UI prototype'),
      const ExpItem('Instagram UI Design', 'Responsive social UI'),
      const ExpItem('Daraz App UI Design', 'E-commerce app UI design'),
    ];

    return Container(
      padding: size.width < 380
          ? const EdgeInsets.only(top: 20, left: 20, right: 10)
          : const EdgeInsets.only(top: 20, left: 100, right: 10),
      width: size.width,
      color: Colors.grey[200],
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  if (size.width > 61)   
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 240, 240, 240),
                  radius: size.width < 384
                      ? size.width < 256
                          ? size.width < 209
                              ? 10
                              : 20
                          : 30
                      : 40,
                  child: const Icon(
                    Icons.work_outline,
                    size: 40,
                    color: Color(0xff0066CC),
                  ),
                ),
                const SizedBox(width: 10),
                if (size.width > 123)
                  Text(
                    "Experience",
                    style: TextStyle(
                      fontSize: size.width < 412
                          ? size.width < 384
                              ? size.width < 256
                                  ? size.width < 209
                                      ? 10
                                      : 20
                                  : 30
                              : 35
                          : 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          ...items.map((e) => _TimelineTile(item: e)).toList(),
        ],
      ),
    );
  }
}

class ExpItem {
  final String title;
  final String subtitle;
  const ExpItem(this.title, this.subtitle);
}

class _TimelineTile extends StatelessWidget {
  const _TimelineTile({required this.item});
  final ExpItem item;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final bool hideTimeline = size.width < 65; // 👈 yahan condition lagayi

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // 👇 Timeline circle & line tabhi dikhayenge jab screen > 65 ho
        if (!hideTimeline)
          Column(
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  color: Color(0xff0066CC),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 2,
                height: 36,
                margin: const EdgeInsets.symmetric(vertical: 4),
                color: Colors.black,
              ),
            ],
          ),
        if (!hideTimeline) const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                item.subtitle,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ],
    );
  }
}
