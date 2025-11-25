import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

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
  final String apiKey = "AIzaSyB7njhvD5QMaBIjM1jt9ZgpbFX1fb8Emw8"; 
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

  // Use PdfTextExtractor to get all text
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
  "name": "",
  "title": "",
  "contact": {"phone": "", "email": "", "linkedin": "", "portfolio": ""},
  "about": "",
  "skills": {"technical": [], "soft": []},
  "experience": [{"position": "", "company": "", "duration": "", "details": ""}],
  "education": [{"degree": "", "institution": "", "years": ""}],
  "projects": [{"name": "", "description": "", "technologies": []}],
  "hobbies": []
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
          throw Exception(
              "JSON parsing failed. Raw response: $text \nError: $e");
        }
      } else {
        throw Exception("No candidates returned from Gemini API");
      }
    } else {
      throw Exception("Gemini API Error: ${response.body}");
    }
  }

  /// Pick PDF file and convert to JSON
  Future<void> pickAndConvertFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
      withData: true, // Required for Web
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
      appBar: AppBar(title: const Text("CV → JSON Converter")),
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
