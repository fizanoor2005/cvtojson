// import 'package:flutter/material.dart';

// class PortfolioPage extends StatefulWidget {
//   final List<Map<String, dynamic>> cvData;

//   const PortfolioPage({super.key, required this.cvData});

//   @override
//   State<PortfolioPage> createState() => _PortfolioPageState();
// }

// class _PortfolioPageState extends State<PortfolioPage> {
//   int _selectedCVIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     if (widget.cvData.isEmpty) {
//       return Scaffold(
//         appBar: AppBar(title: const Text("My Portfolio")),
//         body: const Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.person_outline, size: 64, color: Colors.grey),
//               SizedBox(height: 16),
//               Text(
//                 "No CV Data Available",
//                 style: TextStyle(fontSize: 18, color: Colors.grey),
//               ),
//               SizedBox(height: 8),
//               Text(
//                 "Please convert some CVs first",
//                 style: TextStyle(color: Colors.grey),
//               ),
//             ],
//           ),
//         ),
//       );
//     }

//     final currentCV = widget.cvData[_selectedCVIndex];

//     return Scaffold(
//       backgroundColor: Colors.grey[50],
//       appBar: AppBar(
//         title: const Text("My Portfolio"),
//         backgroundColor: Colors.blue[700],
//         foregroundColor: Colors.white,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             // CV Selector
//             if (widget.cvData.length > 1) ...[
//               _buildCVSelector(),
//               const SizedBox(height: 20),
//             ],

//             // Hero Section
//             _buildHeroSection(currentCV),
//             const SizedBox(height: 30),

//             // Skills Section
//             _buildSkillsSection(currentCV),
//             const SizedBox(height: 30),

//             // Projects Section
//             _buildProjectsSection(currentCV),
//             const SizedBox(height: 30),

//             // Experience Section (if available)
//             if (_hasExperience(currentCV)) _buildExperienceSection(currentCV),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildCVSelector() {
//     return Card(
//       elevation: 2,
//       child: Padding(
//         padding: const EdgeInsets.all(12),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Select CV:",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 color: Colors.grey[700],
//               ),
//             ),
//             const SizedBox(height: 8),
//             Wrap(
//               spacing: 8,
//               children: List.generate(widget.cvData.length, (index) {
//                 final cv = widget.cvData[index];
//                 final name = cv['name'] ?? 'CV ${index + 1}';
//                 final isSelected = index == _selectedCVIndex;
                
//                 return ChoiceChip(
//                   label: Text(name),
//                   selected: isSelected,
//                   onSelected: (selected) {
//                     setState(() {
//                       _selectedCVIndex = index;
//                     });
//                   },
//                   selectedColor: Colors.blue[700],
//                   labelStyle: TextStyle(
//                     color: isSelected ? Colors.white : Colors.black,
//                   ),
//                 );
//               }),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildHeroSection(Map<String, dynamic> cv) {
//     final name = cv['name'] ?? 'Your Name';
//     final role = cv['role'] ?? 'Professional';
//     final skills = _getSkillsList(cv);
    
//     return Card(
//       elevation: 4,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(24),
//         child: Column(
//           children: [
//             // Profile Icon/Image
//             Container(
//               width: 100,
//               height: 100,
//               decoration: BoxDecoration(
//                 color: Colors.blue[100],
//                 shape: BoxShape.circle,
//               ),
//               child: Icon(
//                 Icons.person,
//                 size: 50,
//                 color: Colors.blue[700],
//               ),
//             ),
//             const SizedBox(height: 20),
            
//             // Name
//             Text(
//               name,
//               style: const TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 8),
            
//             // Role
//             Text(
//               role,
//               style: TextStyle(
//                 fontSize: 18,
//                 color: Colors.grey[600],
//               ),
//             ),
//             const SizedBox(height: 16),
            
//             // Skills Preview
//             if (skills.isNotEmpty) ...[
//               Wrap(
//                 spacing: 8,
//                 runSpacing: 8,
//                 children: skills.take(6).map((skill) {
//                   return Chip(
//                     label: Text(skill),
//                     backgroundColor: Colors.blue[50],
//                     labelStyle: TextStyle(color: Colors.blue[700]),
//                   );
//                 }).toList(),
//               ),
//             ],
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildSkillsSection(Map<String, dynamic> cv) {
//     final skills = _getSkillsList(cv);
    
//     if (skills.isEmpty) {
//       return const SizedBox();
//     }

//     return Card(
//       elevation: 2,
//       child: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Icon(Icons.code, color: Colors.blue[700]),
//                 const SizedBox(width: 8),
//                 const Text(
//                   "Skills & Technologies",
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//             Wrap(
//               spacing: 10,
//               runSpacing: 10,
//               children: skills.map((skill) {
//                 return Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                   decoration: BoxDecoration(
//                     color: Colors.blue[700],
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Text(
//                     skill,
//                     style: const TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 );
//               }).toList(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildProjectsSection(Map<String, dynamic> cv) {
//     final projects = _getProjectsList(cv);
    
//     if (projects.isEmpty) {
//       return Card(
//         elevation: 2,
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Icon(Icons.work, color: Colors.blue[700]),
//                   const SizedBox(width: 8),
//                   const Text(
//                     "Projects",
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 16),
//               Text(
//                 "No projects listed in CV",
//                 style: TextStyle(color: Colors.grey[600]),
//               ),
//             ],
//           ),
//         ),
//       );
//     }

//     return Card(
//       elevation: 2,
//       child: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Icon(Icons.work, color: Colors.blue[700]),
//                 const SizedBox(width: 8),
//                 const Text(
//                   "Projects",
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//             ...projects.map((project) {
//               return Container(
//                 margin: const EdgeInsets.only(bottom: 16),
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.grey[300]!),
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // Project Title
//                     Text(
//                       project['title'] ?? 'Untitled Project',
//                       style: const TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
                    
//                     // Project Description (if available)
//                     if (project['description'] != null) ...[
//                       Text(
//                         project['description'],
//                         style: TextStyle(color: Colors.grey[700]),
//                       ),
//                       const SizedBox(height: 8),
//                     ],
                    
//                     // Project Link (if available)
//                     if (project['link'] != null) 
//                       InkWell(
//                         onTap: () {
//                           // You can add URL launching logic here
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(content: Text("Opening: ${project['link']}")),
//                           );
//                         },
//                         child: Text(
//                           project['link'],
//                           style: TextStyle(
//                             color: Colors.blue[700],
//                             decoration: TextDecoration.underline,
//                           ),
//                         ),
//                       ),
//                   ],
//                 ),
//               );
//             }).toList(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildExperienceSection(Map<String, dynamic> cv) {
//     // This would use the enhanced JSON structure from the previous example
//     return Card(
//       elevation: 2,
//       child: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Icon(Icons.business_center, color: Colors.blue[700]),
//                 const SizedBox(width: 8),
//                 const Text(
//                   "Experience",
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//             Text(
//               "Experience data would be displayed here with enhanced JSON structure",
//               style: TextStyle(color: Colors.grey[600]),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper methods
//   List<String> _getSkillsList(Map<String, dynamic> cv) {
//     if (cv['skills'] is List) {
//       return List<String>.from(cv['skills'].where((skill) => skill.toString().isNotEmpty));
//     }
//     return [];
//   }

//   List<dynamic> _getProjectsList(Map<String, dynamic> cv) {
//     if (cv['projects'] is List) {
//       return cv['projects'];
//     }
//     return [];
//   }

//   bool _hasExperience(Map<String, dynamic> cv) {
//     return cv.containsKey('work_experience') || 
//            cv.containsKey('experience') ||
//            cv.containsKey('professional_experience');
//   }
// }