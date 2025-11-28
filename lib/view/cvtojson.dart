// import 'dart:convert';
// import 'dart:io';
// import 'dart:typed_data';

// import 'package:cvtojson/portfoliopage.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:http/http.dart' as http;
// import 'package:syncfusion_flutter_pdf/pdf.dart';

// class CVToJSONPage extends StatefulWidget {
//   const CVToJSONPage({super.key});

//   @override
//   State<CVToJSONPage> createState() => _CVToJSONPageState();
// }

// class _CVToJSONPageState extends State<CVToJSONPage> {
//   final String apiKey = "AIzaSyCKHtdnsyda0-KwBM0OoNJI1VY-QLFPArw"; 
//   bool isLoading = false;
//   String? errorMessage;

//   List<Map<String, dynamic>> allJsonData = [];

//   Future<String> extractTextFromPdf(File? file, Uint8List? fileBytes) async {
//   PdfDocument document;

//   if (kIsWeb) {
//     document = PdfDocument(inputBytes: fileBytes!);
//   } else {
//     final bytes = await file!.readAsBytes();
//     document = PdfDocument(inputBytes: bytes);
//   }

//   // Use PdfTextExtractor to get all text
//   String fullText = PdfTextExtractor(document).extractText();

//   document.dispose();
//   return fullText;
// }
 

//   Future<Map<String, dynamic>> convertToJson(String cvText) async {
//    final url = Uri.parse(
//     "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=$apiKey");

//     final prompt = """
// Convert the following CV text into a structured JSON with clear keys:
// {
//   "name": "",
//   "role": "",
//   "skills": [""],
//   "projects": [
//     {"title": "", "link": ""},
    
//   ]
// }


// CV text:
// $cvText
// """;

//     final response = await http.post(
//       url,
//       headers: {"Content-Type": "application/json"},
//       body: jsonEncode({
//         "contents": [
//           {
//             "parts": [
//               {"text": prompt}
//             ]
//           }
//         ]
//       }),
//     );

//     print("Gemini API Response: ${response.body}");

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       if (data["candidates"] != null && data["candidates"].isNotEmpty) {
//         final text = data["candidates"][0]["content"]["parts"][0]["text"];
//         try {
//           return jsonDecode(text.replaceAll(RegExp(r"```json|```"), "").trim());
//         } catch (e) {
//           throw Exception(
//               "JSON parsing failed. Raw response: $text \nError: $e");
//         }
//       } else {
//         throw Exception("No candidates returned from Gemini API");
//       }
//     } else {
//       throw Exception("Gemini API Error: ${response.body}");
//     }
//   }

//   /// Pick PDF file and convert to JSON
//   Future<void> pickAndConvertFile() async {
//     final result = await FilePicker.platform.pickFiles(
//       type: FileType.custom,
//       allowedExtensions: ['pdf'],
//       withData: true, // Required for Web
//     );

//     if (result != null) {
//       setState(() {
//         isLoading = true;
//         errorMessage = null;
//       });

//       try {
//         File? file;
//         Uint8List? fileBytes;

//         if (kIsWeb) {
//           fileBytes = result.files.single.bytes;
//         } else {
//           file = File(result.files.single.path!);
//         }

//         final text = await extractTextFromPdf(file, fileBytes);
//         if (text.trim().isEmpty) {
//           throw Exception("PDF text is empty. Cannot process CV.");
//         }

//         final jsonResult = await convertToJson(text);

//         setState(() => allJsonData.add(jsonResult));
//       } catch (e) {
//         print("Error: $e");
//         setState(() => errorMessage = e.toString());
//         ScaffoldMessenger.of(context)
//             .showSnackBar(SnackBar(content: Text("Error: $e")));
//       } finally {
//         setState(() => isLoading = false);
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     appBar: AppBar(
//       title: const Text("CV → JSON Converter"),
//       actions: [
//         if (allJsonData.isNotEmpty)
//           IconButton(
//             icon: const Icon(Icons.person),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => PortfolioPage(cvData: allJsonData),
//                 ),
//               );
//             },
//             tooltip: "View Portfolio",
//           ),
//       ],
//     ),

//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             ElevatedButton.icon(
//               icon: const Icon(Icons.upload_file),
//               label: const Text("Upload CV PDF"),
//               onPressed: pickAndConvertFile,
//             ),
//             const SizedBox(height: 20),
//             if (isLoading) const CircularProgressIndicator(),
//             if (errorMessage != null) ...[
//               Text(
//                 "Error: $errorMessage",
//                 style: const TextStyle(color: Colors.red),
//               ),
//               const SizedBox(height: 10),
//             ],
//             if (allJsonData.isNotEmpty)
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: allJsonData.length,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.only(bottom: 16),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "CV ${index + 1}",
//                             style: const TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 16),
//                           ),
//                           const SizedBox(height: 8),
//                           SingleChildScrollView(
//                             scrollDirection: Axis.vertical,
//                             child: Column(
//                               children: [
//                                 Text(
//                                   const JsonEncoder.withIndent('  ')
//                                       .convert(allJsonData[index]),
//                                   style: const TextStyle(
//                                       fontFamily: 'monospace', fontSize: 14),
//                                 ),
                              
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:cvtojson/view/portfolio_design.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;
import 'package:syncfusion_flutter_pdf/pdf.dart';

class CVToJSONPage extends StatefulWidget {
  const CVToJSONPage({super.key});

  @override
  State<CVToJSONPage> createState() => _CVToJSONPageState();
}

class _CVToJSONPageState extends State<CVToJSONPage> {
  final String apiKey = "AIzaSyCKHtdnsyda0-KwBM0OoNJI1VY-QLFPArw"; 
  bool isLoading = false;
  String? errorMessage;

  List<Map<String, dynamic>> allJsonData = [];

  Future<String> extractTextFromPdf(File? file, Uint8List? fileBytes) async {
    PdfDocument document;

    if (kIsWeb) {
      document = PdfDocument(inputBytes: fileBytes!);
    } else {
      final bytes = await file!.readAsBytes();
      document = PdfDocument(inputBytes: bytes);
    }

    String fullText = PdfTextExtractor(document).extractText();
    document.dispose();
    return fullText;
  }

  Future<Map<String, dynamic>> convertToJson(String cvText) async {
    final url = Uri.parse(
    "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=$apiKey");

    final prompt = """
Convert the following CV text into a structured JSON with clear keys:
{
  "common": {
    "name": "Fiza Noor",
    "prefix": "I'm",
    "profession": "Flutter Developer",
    "profile_image1": "assets/fiza1.png",
    "profile_image2": "assets/fiza1.png",
    "email": "fiza28320@gmail.com",
    "phone": "+92 305-433-4454",
    "location": "Lahore, Punjab, Pakistan",
    "social_links": [
      {
        "platform": "GitHub",
        "url": "https://github.com/fizanoor2005",
        "icon": "assets/github.png"
      },
      {
        "platform": "LinkedIn",
        "url": "https://www.linkedin.com/in/fizanoor/",
        "icon": "assets/linkedn1.png"
      }
    ]
  },

  "home_section": {
    "greetings": "Hi!",
    "intro_line": "",
    "resume": {
      "label": "Download Resume",
      "url": "https://drive.google.com/file/d/1s7qm8xsnB2oVNFLlGNcNFZ669fEobLZ2/view?usp=drive_link"
    }
  },

  "about_section": {
    "title": { "icon": "person", "text_main": "About", "text_highlight": "Me" },
     "experience":"",
    "description": "I am a dedicated Flutter developer with a passion for building modern, high-quality mobile applications that deliver smooth performance and great user experiences. I enjoy turning ideas into functional products, solving complex problems, and continuously learning new technologies.",
    "quote_line":"",   
   "contact": {
      "email": "fiza28320@gmail.com",
      "phone": "+92 305-433-4454",
      "location": "Lahore, Punjab, Pakistan"
    }
  },

  "skills_section": {
    "title": { "icon": "laptop", "text_main": "Skills &", "text_highlight": "Course" },
    "skills": [
      { "name": "Flutter", "icon": "assets/flutter.png" },
      { "name": "GitHub", "icon": "assets/github.png" },
      { "name": "HTML5", "icon": "assets/html.png" },
      { "name": "CSS3", "icon": "assets/css.png" },
      { "name": "JavaScript", "icon": "assets/js.png" },
      { "name": "Figma", "icon": "assets/figma.png" },
      { "name": "Postman", "icon": "assets/post1.png" },
      { "name": "Visual Studio", "icon": "assets/vs.png" },
      { "name": "Git", "icon": "assets/git.png" }
    ],
    "side_image1": "assets/image1.png"
    "side_image2": "assets/image1.png"
  },

  "education_section": {
    "title": { "icon": "school", "text_main": "My", "text_highlight": "Education" },
    "education_list": [
      {
        "level": "BSCS",
        "years": "2022-2026",
        "institution": "Lahore College for Women University",
        "image": "assets/uni.jpeg"
      },
      {
        "level": "ICS",
        "years": "2020-2022",
        "institution": "Govt. Graduate College for Women",
        "image": "assets/college.png"
      },
      {
        "level": "Matric",
        "years": "2018-2020",
        "institution": "Govt. Girls High School, Lahore",
        "image": "assets/school.png"
      }
    ]
  },

  "projects_section": {
    "title": { "icon": "laptop", "text_main": "Projects", "text_highlight": "Made" },
    "projects": [
      {
        "name": "Weather Forecast",
        "description": "A sleek and responsive weather app built with Flutter and Provider.",
        "preview_url": "https://fizanoor2005.github.io/Weather_app-preview/",
        "image": "assets/weather.png",
        "technologies": ["Flutter", "Provider", "API"],
        "github_url": "https://github.com/fizanoor2005/WeatherApp"
      },
      {
        "name": "Lootlo",
        "description": "A modern E-commerce application with categories, cart, and checkout flow.",
        "preview_url": "https://fizanoor2005.github.io/Ecommercepreview/",
        "image": "assets/lootlo.png",
        "technologies": ["Flutter", "Provider", "UI/UX"],
        "github_url": "https://github.com/fizanoor2005/Lootlo"
      },
      {
        "name": "Xefag",
        "description": "A modern responsive UI built using reusable widgets and MVC architecture.",
        "preview_url": "https://fizanoor2005.github.io/Xefagpreview/",
        "image": "assets/xefag.png",
        "technologies": ["Flutter", "MVC", "Responsive Design"],
        "github_url": "https://github.com/fizanoor2005/Xefag"
      },
      {
        "name": "Noza",
        "description": "An AI-powered chatbot using Flutter and Provider.",
        "preview_url": "https://fizanoor2005.github.io/ChatbotAi-preview/",
        "image": "assets/noza.png",
        "technologies": ["Flutter", "Provider", "AI Chatbot"],
        "github_url": "https://github.com/fizanoor2005/Noza"
      }
    ]
  },

  "experience": [
    {
      "company": "Devsinn Technologies",
      "companyLogo": "assets/devsinn.png",
      "companyWebsite": "https://www.devsinntechnologies.com/",
      "role": "Flutter Developer",
      "duration": "March 2025 - Present",
      "description": "Developing cross-platform mobile apps using Flutter and Provider. Integrating APIs and building responsive UIs.",
      "technologies_used": ["Flutter", "Provider", "REST APIs"]
    }
  ],

  "contact_section": {
    "title": "Get in Touch",
    "icon": "headphones",
    "form": {
      "fields": [
        { "type": "text", "name": "name", "placeholder": "Name", "icon": "person" },
        { "type": "email", "name": "email", "placeholder": "Email", "icon": "email" },
        { "type": "tel", "name": "phone", "placeholder": "Phone", "icon": "call" },
        { "type": "textarea", "name": "message", "placeholder": "Message", "maxLines": 5 }
      ],
      "submitButton": { "text": "Submit"}
    },
    "image": "assets/login.jpg"
  },

  "footer": {
    "quickLinks": [
      { "label": "Home", "scrollTo": "home" },
      { "label": "About", "scrollTo": "about" },
      { "label": "Skills", "scrollTo": "skills" },
      { "label": "Education", "scrollTo": "education" },
      { "label": "Work", "scrollTo": "work" },
      { "label": "Experience", "scrollTo": "experience" },
      { "label": "Contact", "scrollTo": "contact" }
    ],
    "aboutText": {
      "title": "Fiza's Portfolio",
      "description": "Thank you for visiting my portfolio! I appreciate your time and interest."
    },
    "contactInfo": {
      "phone": "+92 305-433-4454",
      "email": "fiza28320@gmail.com",
      "location": "Lahore, Pakistan-540000"
    },
    "socialLinks": [
      { "platform": "GitHub", "url": "https://github.com/fizanoor2005", "icon": "assets/github.png" },
      { "platform": "LinkedIn", "url": "https://www.linkedin.com/in/fizanoor/", "icon": "assets/linkedn1.png" }
    ],
    "bottomBar": {
      "text": "Designed By Fiza Noor",
      "icon":  "heart",
      "link": "https://www.linkedin.com/in/fizanoor/"
    }
  }
}


CV text:
$cvText
""";

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "contents": [
          {
            "parts": [
              {"text": prompt}
            ]
          }
        ]
      }),
    );

    print("Gemini API Response: ${response.body}");

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data["candidates"] != null && data["candidates"].isNotEmpty) {
        final text = data["candidates"][0]["content"]["parts"][0]["text"];
        try {
          return jsonDecode(text.replaceAll(RegExp(r"```json|```"), "").trim());
        } catch (e) {
          throw Exception("JSON parsing failed. Raw response: $text \nError: $e");
        }
      } else {
        throw Exception("No candidates returned from Gemini API");
      }
    } else {
      throw Exception("Gemini API Error: ${response.body}");
    }
  }

  Future<void> pickAndConvertFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
      withData: true,
    );

    if (result != null) {
      setState(() {
        isLoading = true;
        errorMessage = null;
      });

      try {
        File? file;
        Uint8List? fileBytes;

        if (kIsWeb) {
          fileBytes = result.files.single.bytes;
        } else {
          file = File(result.files.single.path!);
        }

        final text = await extractTextFromPdf(file, fileBytes);
        if (text.trim().isEmpty) {
          throw Exception("PDF text is empty. Cannot process CV.");
        }

        final jsonResult = await convertToJson(text);
        setState(() => allJsonData.add(jsonResult));
      } catch (e) {
        print("Error: $e");
        setState(() => errorMessage = e.toString());
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Error: $e")));
      } finally {
        setState(() => isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CV → JSON Converter"),
        actions: [
          if (allJsonData.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PortfolioDesign(cvData: allJsonData),
                  ),
                );
              },
              tooltip: "View Portfolio",
            ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.upload_file),
              label: const Text("Upload CV PDF"),
              onPressed: pickAndConvertFile,
            ),
            const SizedBox(height: 20),
            if (isLoading) const CircularProgressIndicator(),
            if (errorMessage != null) ...[
              Text(
                "Error: $errorMessage",
                style: const TextStyle(color: Colors.red),
              ),
              const SizedBox(height: 10),
            ],
            if (allJsonData.isNotEmpty)
              Expanded(
                child: ListView.builder(
                  itemCount: allJsonData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CV ${index + 1}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(height: 8),
                          SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                Text(
                                  const JsonEncoder.withIndent('  ')
                                      .convert(allJsonData[index]),
                                  style: const TextStyle(
                                      fontFamily: 'monospace', fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}