
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:cvtojson/view/Skills_screen.dart';
import 'package:cvtojson/view/about_screen.dart';
import 'package:cvtojson/view/contact_screen.dart';
import 'package:cvtojson/view/education_screen.dart';
import 'package:cvtojson/view/experience_screen.dart';
import 'package:cvtojson/view/project_screen.dart';


import 'package:url_launcher/url_launcher.dart';

class PortfolioScreen extends StatefulWidget {
  // const PortfolioScreen({super.key, List<Map<String, dynamic>>? cvData});
final List<Map<String, dynamic>>? cvData;
  const PortfolioScreen({super.key,this.cvData});
  
  
  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  final GlobalKey _aboutKey = GlobalKey();

  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _educationKey = GlobalKey();
  final GlobalKey _projectkey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();
  final GlobalKey _PortfolioKey = GlobalKey();




  Future<void> _launchURL(String? url) async {
  if (url == null || url.isEmpty) {
    print('URL is null or empty');
    return;
  }
  
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $url');
  }
}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    String name = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['common']['name'] ?? 'Zainab Batool' 
    : 'Zainab Batool';

String prefix = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['common']['prefix'] ?? "I'm " 
    : "I'm ";

String profession = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['common']['profession'] ?? 'Flutter Developer' 
    : 'Flutter Developer';

String email = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['common']['email'] ?? 'zainab@example.com' 
    : 'zainab@example.com';

String phone = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['common']['phone'] ?? '+92 XXX-XXX-XXXX' 
    : '+92 XXX-XXX-XXXX';

String location = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['common']['location'] ?? 'Lahore, Pakistan' 
    : 'Lahore, Pakistan';

// Home section data
String greetings = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['home_section']['greetings'] ?? 'Hi There,' 
    : 'Hi There,';

String intro_line = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['home_section']['intro_line'] ?? '' 
    : '';

// About section data
String about_description = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['about_section']['description'] ?? 'I am an enthusiastic and dedicated Flutter developer, starting my professional journey with a deep passion for mobile app development. As a fresher, I bring strong knowledge of Dart and Flutter, along with a curious mindset and the ability to quickly learn and adapt to new technologies...' 
    : 'I am an enthusiastic and dedicated Flutter developer, starting my professional journey with a deep passion for mobile app development. As a fresher, I bring strong knowledge of Dart and Flutter, along with a curious mindset and the ability to quickly learn and adapt to new technologies...';

// Skills section data
final skillsSection = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['skills_section'] ?? {'skills': []}
    : {'skills': []};

List<dynamic> skill = skillsSection['skills'] ?? [
  {"name": "Flutter", "icon": "assets/images/flutter.png"},
  {"name": "Git", "icon": "assets/images/git.png"},
  {"name": "GitHub", "icon": "assets/images/github.png"},
  {"name": "Postman", "icon": "assets/images/postman.png"},
  {"name": "HTML", "icon": "assets/images/html.png"},
  {"name": "Java", "icon": "assets/images/java.png"},
  {"name": "CSS", "icon": "assets/images/css.png"},
  {"name": "Canva", "icon": "assets/images/canva.png"}
];

// Education section data
final educationSection = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['education_section'] ?? {} 
    : {};

List<dynamic> educations = educationSection['education_list'] ?? [
  {
    "level": "BS Computer Science",
    "years": "2024-2028",
    "institution": "Virtual University",
    "image": "assets/images/virtual.jpg"
  },
  {
    "level": "ICS (Physics)", 
    "years": "2022-2024",
    "institution": "Superior College",
    "image": "assets/images/sup.jpg"
  },
  {
    "level": "Matric",
    "years": "2020-2022",
    "institution": "Center Model School",
    "image": "assets/images/center.jpg"
  }
];

// Projects section data
final projectsSection = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['projects_section'] ?? {} 
    : {};

List<dynamic> projects = projectsSection['projects'] ?? [
  {
    "name": "Weather App",
    "description": "A weather application built with Flutter",
    "preview_url": "https://zainab-portfolio.github.io/WeatherAppPreview/",
    "image": "assets/images/ss.png",
    "technologies": ["Flutter", "API"],
    "github_url": "https://github.com/zainab-portfolio/WeatherApp"
  },
  {
    "name": "ShopHere",
    "description": "E-commerce application",
    "preview_url": "https://zainab-portfolio.github.io/ShopHerePreview/",
    "image": "assets/images/sw.png",
    "technologies": ["Flutter", "UI/UX"],
    "github_url": "https://github.com/zainab-portfolio/ShopHere"
  },
  {
    "name": "Chatbot",
    "description": "AI Chatbot application",
    "preview_url": "https://zainab-portfolio.github.io/ChatbotPreview/",
    "image": "assets/images/swa.png",
    "technologies": ["Flutter", "AI"],
    "github_url": "https://github.com/zainab-portfolio/Chatbot"
  }
];

// Experience data
final experienceData = widget.cvData?.isNotEmpty == true ? 
    widget.cvData![0]['experience'] ?? [] : [];
    
List<dynamic> experiences = experienceData.isNotEmpty ? experienceData : [
  {
    "company": "Devsinn Technologies",
    "companyLogo": "assets/images/Devsinn.jpg",
    "companyWebsite": "https://www.devsinntechnologies.com/",
    "role": "Flutter Developer",
    "duration": "March 2025 - Present",
    "description": "Developing cross-platform mobile apps using Flutter and Provider. Integrating APIs and building responsive UIs.",
    "technologies_used": ["Flutter", "Provider", "REST APIs"]
  }
];

// Social links
final socialLinks = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['common']['social_links'] ?? []
    : [];

// Resume URL
String resumeUrl = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['home_section']['resume']['url'] ?? 'https://drive.google.com/file/d/your-resume-link/view'
    : 'https://drive.google.com/file/d/your-resume-link/view';

// Profile images
String profileImage1 = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['common']['profile_image1'] ?? 'assets/images/zainab.png'
    : 'assets/images/zainab.png';

String profileImage2 = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['common']['profile_image2'] ?? 'assets/images/profile1.png'
    : 'assets/images/profile1.png';
    return
    
     Scaffold(





      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Row(
            children: [

              Container(
                 key: _PortfolioKey,
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Color(0xff0066CC),
                    image: DecorationImage(
                      image: AssetImage("flower/doll.png"),
                    ),
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                width: 15
              ),
              Text(
                name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  // fontFamily: "Noto"
                ),
              ),
              Spacer(),
                     
                SizedBox(
                width: size.width<=888?20:  40,
              ),

if (size.width <=870) ...[

       Drawer(

    child: ListView(
      children: [
                  InkWell(
                onTap: () {
                  Scrollable.ensureVisible(
                    _aboutKey
                        .currentContext!, // 👈 jis section par scroll karna hai
                    duration: Duration(seconds: 1), // scroll speed
                  );
                },
               
                child: Text(
                  "About",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width<=927? 16:18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    // fontFamily: "Noto"
                  ),
                ),
              ),
              SizedBox(height: 20,),
                     InkWell(
                onTap: () {
                  Scrollable.ensureVisible(
                    _skillsKey.currentContext!,
                    duration: Duration(seconds: 1),
                  );
                },
                child: Text(
                  "Skills",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width<=927? 16:18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    // fontFamily: "Noto"
                  ),
                ),
              ),   SizedBox(height: 20,),
                      InkWell(
                  onTap: () {
                  Scrollable.ensureVisible(
                    _educationKey
                        .currentContext!, // 👈 jis section par scroll karna hai
                    duration: Duration(seconds: 1), // scroll speed
                  );
                },
                child: Text(
                  "Education",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize:size.width<=927? 16:18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    // fontFamily: "Noto"
                  ),
                ),
              ),   SizedBox(height: 20,),
                                InkWell(
                  onTap: () {
                  Scrollable.ensureVisible(
                    _projectkey
                        .currentContext!, // 👈 jis section par scroll karna hai
                    duration: Duration(seconds: 1), // scroll speed
                  );
                },
                child: Text(
                  "Project",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width<=927? 16:18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    // fontFamily: "Noto"
                  ),
                ),
              ),   SizedBox(height: 20,),
                      InkWell(
                     onTap: () {
                  Scrollable.ensureVisible(
                    _experienceKey
                        .currentContext!, // 👈 jis section par scroll karna hai
                    duration: Duration(seconds: 1), // scroll speed
                  );},
                child: Text(
                  "Experience",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width<=927? 16:18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    // fontFamily: "Noto"
                  ),
                ),
              ),   SizedBox(height: 20,),
                    InkWell(
                  onTap: () {
                  Scrollable.ensureVisible(
                    _contactKey
                        .currentContext!, // 👈 jis section par scroll karna hai
                    duration: Duration(seconds: 1), // scroll speed
                  );
                },
                child: Text(
                  "Contact",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width<=927? 16:18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    // fontFamily: "Noto"
                  ),
                ),
              )
    
        
        
        
    
      ],
    ),
  ) 






    
      ] else ...[
        // Small screen pe drawer icon yahan show karo
         InkWell(
                onTap: () {
                  Scrollable.ensureVisible(
                    _aboutKey
                        .currentContext!, // 👈 jis section par scroll karna hai
                    duration: Duration(seconds: 1), // scroll speed
                  );
                },
               
                child: Text(
                  "About",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width<=927? 16:18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    // fontFamily: "Noto"
                  ),
                ),
              ),
              SizedBox(
                width: size.width<=888?20:  40,
              ),
              InkWell(
                onTap: () {
                  Scrollable.ensureVisible(
                    _skillsKey.currentContext!,
                    duration: Duration(seconds: 1),
                  );
                },
                child: Text(
                  "Skills",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width<=927? 16:18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    // fontFamily: "Noto"
                  ),
                ),
              ),
              SizedBox(
                width: size.width<=888?20:  40,
              ),
              InkWell(
                  onTap: () {
                  Scrollable.ensureVisible(
                    _educationKey
                        .currentContext!, // 👈 jis section par scroll karna hai
                    duration: Duration(seconds: 1), // scroll speed
                  );
                },
                child: Text(
                  "Education",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize:size.width<=927? 16:18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    // fontFamily: "Noto"
                  ),
                ),
              ),
              SizedBox(
                width: size.width<=888?20:  40,
              ),
                       InkWell(
                  onTap: () {
                  Scrollable.ensureVisible(
                    _projectkey
                        .currentContext!, // 👈 jis section par scroll karna hai
                    duration: Duration(seconds: 1), // scroll speed
                  );
                },
                child: Text(
                  "Project",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width<=927? 16:18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    // fontFamily: "Noto"
                  ),
                ),
              ),
           SizedBox(
                width: size.width<=888?20:  40,
              ),
              InkWell(
                     onTap: () {
                  Scrollable.ensureVisible(
                    _experienceKey
                        .currentContext!, // 👈 jis section par scroll karna hai
                    duration: Duration(seconds: 1), // scroll speed
                  );},
                child: Text(
                  "Experience",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width<=927? 16:18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    // fontFamily: "Noto"
                  ),
                ),
              ),
                SizedBox(
                width: size.width<=888?20:  40,
              ),
                           InkWell(
                  onTap: () {
                  Scrollable.ensureVisible(
                    _contactKey
                        .currentContext!, // 👈 jis section par scroll karna hai
                    duration: Duration(seconds: 1), // scroll speed
                  );
                },
                child: Text(
                  "Contact",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width<=927? 16:18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    // fontFamily: "Noto"
                  ),
                ),
              )
    
        
             
          
      ],
              
       
            ],
          ),
        ),
      ),
  
  
  endDrawer:

  size.width<=870?
  Drawer(

    child: ListView(
      children: [
                  InkWell(
                onTap: () {
                  Scrollable.ensureVisible(
                    _aboutKey
                        .currentContext!, // 👈 jis section par scroll karna hai
                    duration: Duration(seconds: 1), // scroll speed
                  );
                },
               
                child: Text(
                  "About",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width<=927? 16:18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    // fontFamily: "Noto"
                  ),
                ),
              ),
              SizedBox(height: 20,),
                     InkWell(
                onTap: () {
                  Scrollable.ensureVisible(
                    _skillsKey.currentContext!,
                    duration: Duration(seconds: 1),
                  );
                },
                child: Text(
                  "Skills",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width<=927? 16:18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    // fontFamily: "Noto"
                  ),
                ),
              ),   SizedBox(height: 20,),
                      InkWell(
                  onTap: () {
                  Scrollable.ensureVisible(
                    _educationKey
                        .currentContext!, // 👈 jis section par scroll karna hai
                    duration: Duration(seconds: 1), // scroll speed
                  );
                },
                child: Text(
                  "Education",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize:size.width<=927? 16:18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    // fontFamily: "Noto"
                  ),
                ),
              ),   SizedBox(height: 20,),
                                InkWell(
                  onTap: () {
                  Scrollable.ensureVisible(
                    _projectkey
                        .currentContext!, // 👈 jis section par scroll karna hai
                    duration: Duration(seconds: 1), // scroll speed
                  );
                },
                child: Text(
                  "Project",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width<=927? 16:18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    // fontFamily: "Noto"
                  ),
                ),
              ),   SizedBox(height: 20,),
                      InkWell(
                     onTap: () {
                  Scrollable.ensureVisible(
                    _experienceKey
                        .currentContext!, // 👈 jis section par scroll karna hai
                    duration: Duration(seconds: 1), // scroll speed
                  );},
                child: Text(
                  "Experience",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width<=927? 16:18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    // fontFamily: "Noto"
                  ),
                ),
              ),   SizedBox(height: 20,),
                    InkWell(
                  onTap: () {
                  Scrollable.ensureVisible(
                    _contactKey
                        .currentContext!, // 👈 jis section par scroll karna hai
                    duration: Duration(seconds: 1), // scroll speed
                  );
                },
                child: Text(
                  "Contact",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width<=927? 16:18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    // fontFamily: "Noto"
                  ),
                ),
              )
    
        
        
        
    
      ],
    ),
  ) :null,


  
      body: SingleChildScrollView(
        child:
         Column(
          children: [
          
            Column(
              children: [
          
          size.width<=870?
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 60, right: 60),
                  child:
                  
                  
                   Wrap(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi There,",
                            style: TextStyle(
                              color: Color(0xff002057),
                              fontSize: size.width<=489?30: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if(size.width>344)
                          Row(
                            children: [
                              Text(
                                "$name ",
                                style: TextStyle(
                                  color: Color(0xff002057),
                                  fontSize: size.width<=489?30: 50,
                                  fontWeight: FontWeight.bold,
                                  // fontFamily: "Noto",
                                ),
                              ),
                              // Text(
                              //   "Batool",
                              //   style: TextStyle(
                              //     color: Color(0xff0066CC),
                              //     fontSize: size.width<=489?30: 50,
                              //     fontWeight: FontWeight.bold,
                              //     // fontFamily: "Noto",
                              //   ),
                              // ),
                           
                            ],
                          ),
          
                        if(size.width<344) 
                         
                            Column(
                            children: [
                              Text(
                                "$prefix $name ",
                                style: TextStyle(
                                  color: Color(0xff002057),
                                  fontSize: size.width<=489?30: 50,
                                  fontWeight: FontWeight.bold,
                                  // fontFamily: "Noto",
                                ),
                              ),
                              // Text(
                              //   "Batool",
                              //   style: TextStyle(
                              //     color: Color(0xff0066CC),
                              //     fontSize: size.width<=489?30: 50,
                              //     fontWeight: FontWeight.bold,
                              //     // fontFamily: "Noto",
                              //   ),
                              // ),
                            ],
                          ),
                         
                       
                         
                      if(size.width>285)
                          Row(
                            children: [
                              Text(
                                "I,m into ",
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.w600),
                              ),
                              Container(
                                width: size.width*0.3,

                                
                                // key: _PortfolioKey,
                                color: Color(0xff0066CC),
                                child: AnimatedTextKit(
                                  animatedTexts: [
                                    TyperAnimatedText(
                                      " $profession",
                                      textStyle: const TextStyle(
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.bold,
                                        // fontFamily: "Noto",
                                        color: Colors.white,
                                      ),
                                      speed: const Duration(milliseconds: 400),
                                    ),
                                    TyperAnimatedText(
                                      " Front end developer",
                                      textStyle: const TextStyle(
                                          fontSize: 32.0,
                                          fontWeight: FontWeight.bold,
                                          // fontFamily: "Noto",
                                          color: Colors.white),
                                      speed: const Duration(milliseconds: 200),
                                    )
                                  ],
                                  totalRepeatCount: 4,
                                  // pause: const Duration(milliseconds: 500),
                                  displayFullTextOnTap: true,
                                  stopPauseOnTap: true,
                                ),
                              ),
                            ],
                          ),
                        
                         if(size.width<285)  
                               Column(
                            children: [
                              Text(
                                "I,m into ",
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.w600),
                              ),
                              Container(
                                width: size.width*0.3,

                                
                                // key: _PortfolioKey,
                                color: Color(0xff0066CC),
                                child: AnimatedTextKit(
                                  animatedTexts: [
                                    TyperAnimatedText(
                                      " $profession",
                                      textStyle: const TextStyle(
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.bold,
                                        // fontFamily: "Noto",
                                        color: Colors.white,
                                      ),
                                      speed: const Duration(milliseconds: 400),
                                    ),
                                    TyperAnimatedText(
                                      " Front end developer",
                                      textStyle: const TextStyle(
                                          fontSize: 32.0,
                                          fontWeight: FontWeight.bold,
                                          // fontFamily: "Noto",
                                          color: Colors.white),
                                      speed: const Duration(milliseconds: 200),
                                    )
                                  ],
                                  totalRepeatCount: 4,
                                  // pause: const Duration(milliseconds: 500),
                                  displayFullTextOnTap: true,
                                  stopPauseOnTap: true,
                                ),
                              ),
                            ],
                          ),
                    
                         
                          SizedBox(
                            height: 10,
                          ),

                          if(size.width>250)
                          Container(
                            height:  50,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Color(0xff0066CC),
                                borderRadius: BorderRadius.circular(37)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: (){
                                      Scrollable.ensureVisible(
                    _aboutKey
                        .currentContext!, // 👈 jis section par scroll karna hai
                    duration: Duration(seconds: 1), // scroll speed
                  );
                                    
                                  },
                                  child: Text(
                                    "About Me",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.arrow_circle_down_sharp,
                                  color: Colors.white,
                                  size: 25,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          if(size.width>250)
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                  
                                  _launchURL("https://github.com/zainab808");
                  
                                },
                                child: CircleAvatar(
                                  child: Image.network(
                                      "data:image/png;base64,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"),
                                  radius: 22,
                                  backgroundColor: Color(0xff0066CC),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                onTap: (){
                                    _launchURL("https://www.linkedin.com/in/zainab-batool-034094369/");
                                },
                                child: CircleAvatar(
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    color: Colors.white,
                                    child: Center(
                                      child: Text(
                                        "in",
                                        style: TextStyle(
                                            color: Color(0xff2187DF),
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  //  Image.network(
                                  //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSSwscr3u33zUFMKwyeWyb3LF4-636AXmHqQ&s"),
                                
                                  radius: 20,
                                  backgroundColor: Color(0xff2187DF),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                            SizedBox(
                                width: 15,
                              ),
                            ],
                          )
                       ,
                       if(size.width<250)
                                Wrap(
                            children: [
                              InkWell(
                                onTap: () {
                  
                                  _launchURL("https://github.com/zainab808");
                  
                                },
                                child: CircleAvatar(
                                  child: Image.network(
                                      "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAdVBMVEX///8ii+YAhOUAg+XE2vYbieYUh+X7/f/o8vwAgeTT5vnw9/3J4PiqzvR7tO71+v6TwfEqj+eEue+hyfPh7vuNvvBGmulPn+pepevZ6foxkuebxfK82PY5lehorO1Zo+u11PV0sO7M4vhNnOmw0fVtru0AfOPpLnHYAAAK7klEQVR4nO1d26KqKhRdYpBlq4uVpZVd9/n/TzxZq5uijImAPTge9n5ZIUNg3pn+/HTo0KFDhw4dOnTo0KFDhw4dOpDRv6HtWRjHJFj0fqfRcb2Kd2mO+LzPxsvNYRiEbc+tMRaj+XG18xhjQnDBucdz3P4VgvkiPWfT3qLtWepiOM9mnN1oeVXImTIxW8+Hbc+WisV8fV2hamYFntf1ZOtL0PasUfSHy9hnKLsXTcbO06TtyQNIljsGL155LePNd5/Kye+Vnh67J0m2OnytOknGgr45JSSZt/nKIzlaa+/OEkfBj193IrexieV74yiyr+K43fkm+d1JDvZfw/F09k3Tu3Nk4684j4vM6P78gPCW7cvVpT1+Xr6M6ahdfqOUWeR3g5+1uFXD48A2Py/fqpe2CI5mzewXFJxl7fiRRzsSVAbBWziNyc7NAt7B/aVrgr/cpgiVgO3d7tSxVR0hBfccxgHClXUdIYPvTKYmM+cLeAebuiE4MuUkaVA8uiB4cX8E3yju7dupc/N+EgViNbFMcONOzVdQjO1SnLZN0DbF1lcwh4jtncX5NxDMz6Itir/fQfBKcW2H4LYVQ0YKNrZB8NSeoi+DbcwTDGpyZC2AHYwzdOoOqsGZ6WBq9l0ErxRnZtXiplbK5Els03s4Tw7X5rHMCtRR7Qqyy+myzFJmzCTPycXH6WG4qXuuSWkT1s8nvv1Rf3FZa6R+JfR8L+qFN6Ue1A7nm3P69/VL+Pv8w/5hL5rtV85m0ZsMOdcONjNl2/zWHkLufcSkk8jTF0qcnS8fsx7XjiUMKf5FfViN7wt/Hy6FHkfO4mJY9FBvR7GtEYar+m0nysGT8KhzHoV3KI00VLwrIypjrjBH2UnyoySmGrGcRZJTFSh+ZWKfhirJweXlIRuaxBEVWTSVreg3N23WKoJexQ+TVBT+8FbMdgUvF4L5WcV22ynezJ+qaoCRcrftqn7azx6/FSK3eWZ5ReI4Go+z/XmWa3XxEGHcr1TeCiHwoau00I9VTyiJ0jdsrgLnyiRdL7fDoHDKgmFvmsX8Zu7xapGYKff6rFk+o14V3hhmNT8/MLbeJNXyrh/0onhQlzr7p2TYLBDeV8fveW0YeghkqJM6YVGv8m8TEE0WcaqW+absigqoGXqiQah/Aii19hl6A/1ShiUwvIgM8ikDYaj/kkMkNPMFa8i57iLWO/aP4e0mvI6IZaS7jyYpMHi9tmgOtT7M56CpExWey2P0Go1vACqj8Q5Nw6bev34yrLTajEBpUzWYxBCr6OIz06Q+AJYM+DIXTgXojOcug806lz4YaecaocU+6t8Jm5W8CzQeomG6XVAn3VCsRA618/aYBV3W7FEXXdisOJuia8hX1KEDuG6NPjYB8Hv2BPWujdox1B8bhyKQ+Q5yjB/TtPex7dV+9vC8OnUrKSNsbwRtFpst8a3EaOY3nrO3VTXwhzUcPme0ykXEabnDWHZEDiCO8geiCwCPK414m4Qqrv+CoAy7QG8ZWPbwcwCxor+XTUknYo7TFantSsEf1L24vu05YVDQ6rZrsT0wBF83yfpWZQseb82u9/vAP+woUvw4tDrIQOIHmg66iPh0TtiQlkM0LyBRTY90ZkCjlCS8mgDcUwQvB9P3jk4hYUK4qMF8FieC9A5Q7e9Q+2qCiVLL9toHoLhfoe6lBti2d2DOvIBJBli2L7DhXDZcCSEzEj43UPiHc6uUioBMN4H6+VCYzXLOqYjaKsXnnNCDAwW4LJQh12GExDNgEyRCGPpu75BPkDnBsRp1/YNH0D1moC57oUwKibPpJAoaAXHouAcyVNYheY61YQ7I+mYgQ2RDkBxqE4B0/gALOfRTgKFjUQrGN0HxBwXwrMfYioB8Vh9LMEAMndpsOYaIQgQv0kB5V0cBjBcShCE4K4zhV64hOCuI4XeeQ3SXQrLUnYN/ByRLGShpEBeffaU+BGUppvFd94uBbBrUHUCsNmex0gegAjffoOXt3LeAomMcnBQUnWRuW/4EkAeMhv8wM96tMIVEKXy9BIuJuI3TQPsKdlqh/CgnJZUbAyqsgeuVIRPQ8122UIMCUbgKC6AsgVN9AekKvHwvRMy2BhXydIBVdngdLVb/7DBUA8U3rzOC3zlWqICnepoCzJDyFNbRc/CVuVIYR7BUAS/eQytzterH6TiBFYqEN17fyuANTpKk/Rk4G0olNHRbhvbW9AFXEQpCZAXKXNxem/1mjXBJPeleBFwDzS0WCN8xgpsX8DNh2AVcfcytXre4WpB4sTIt7IA3heKeTYoJoTsVbTuhxYk3ivZ0xonSfmtAEuxwgWkO/2CJ4IHSAo94TTAk9V/x7ZTrL0k9/qj5PsJ9Cy9vnGreRA32tPYoYDT4CVXPlgK4aNieooQLsRsTuQXIgthCh/tGv7eR7KmtbukhavxO1YOjiExt1WBMb6dFMdnugI2lt4fwyEQQdbLU6KWl0acGKtEpPkawcdOLbIuxVv8+ncoJLPhTehJbb/XvYEy2a80vYhHvdd2A+p0ljv5srGflnKJUt2ef3v2yiiQbV8a9uBCz45boHI/GM802bzn0XBypC3WdfOqpOwdeT6S/mo6w/To5bVYNu2emOgR/QknViTgm4SQYTpHvr3A/xVTkqXHXTN2MdLnO9Nm6bAJc7mRrVOQkzfhpd/6QhSnFU4YoHRvK4R82W0T92LQk1Oyn0Z/xENTH/kkxBR374u1R+vmFUKYwhL8FKFID4mDQV4omET9pvoA/TMBFzVOpQbgQDYpKMGhgK4ZS3fc82NV1SvQ7UaSowuezGmWI5K2inkKk0ovUKOxDL8MW0bB9zGQnfe7jKFb5WDq9MraaVmLTltAVm+dhQ1SkLrUy4JpfIGp82VpeIPWsNZGL+VQnY0MMnBRnog35Na9XXYfsGrLe2cfKB4oTMXDNU3rj/2Un9SUnVTOZQYvv3TEw0DpGflvlRaJsoOuaiWDq+WMaRjrPS6+ovl2EC4ofhtDtOpSQD2LzLsJ3yPbpezVNuP4U9LoqGKty+XiSqWrzuLyKnL8L6Y3/5r+K/3TTpkhh6zvMNf8JJP7356WZMPLy1s55g+f0qP1iCRmv21s22INLUvtY9I4m2yjLjtElaVC8APcuu8/AaFFWVKZo4cYFocGYZ7zCdVV6vRZaKpC+KMUM19JPylaj+SrhHoGh+ReclG1svIwMBIEht9DdaFuKFgnTFaYUhjYa/ZXdCNPZbZghF3bKeMoOv2/2bhDM0NoN1rLOMNtSEGVo+MW+Q0IRDmwDABla/UZ3VAqmCP5rrAQTY2haERZQpsjZbl4wn3QpQwwtE5R+TZYzbzXtJUEYBoth73cc9zTHRhg6+Iz8XJJFuTkV4vahnOv/vj2G3MbHK0vYqnKZzBpD3vS7OSCGisimPYZCd2QqSpEZNwy55/CKfO2H1SwxZCunlzrnNYfRCkNu5xvANRhW71QbDM0XP6rR/1c1HwsMBVjWYRiHipoT8wyZ3Y/ZVCOUL6NphmLmSklIsJ1JJmWY4eDo9mJ8Af1lWW+YZMhZxacfHWJRKpg0yFDwqdveDXKcVr4dhtzP7H1ZgoZD+l54bogh92PXjYzqsI1f59EIQ8603Uxb6D3PowGG3N+3LmAkSMbitpBNGV7d6cx1GyoUk0vMBG/GkDNzFzesIFnuBvoMuRD7wzfoh3qcdK3k3n/nzbeoBztYtOJAdOjQoUOHDh06dOjQoUOHDh06dOjQAcL/vECVrjjJ2qEAAAAASUVORK5CYII="),
                                  radius: 22,
                                  backgroundColor: Color(0xff0066CC),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                onTap: (){
                                    _launchURL("https://www.linkedin.com/in/zainab-batool-034094369/");
                                },
                                child: CircleAvatar(
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    color: Colors.white,
                                    child: Center(
                                      child: Text(
                                        "in",
                                        style: TextStyle(
                                            color: Color(0xff2187DF),
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  //  Image.network(
                                  //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSSwscr3u33zUFMKwyeWyb3LF4-636AXmHqQ&s"),
                                
                                  radius: 20,
                                  backgroundColor: Color(0xff2187DF),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                            SizedBox(
                                width: 15,
                              ),
                            ],
                          )
                       
                 
                       
                       
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Container(
                            height: 380,
                            width: 380,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("flower/doll.png"),
                                ),
                                color: Color(0xff0066CC),
                                borderRadius: BorderRadius.circular(190)),
                          )
                        ],
                      )
                    ],
                  ),
                          
                          
                          
                          
                )
         :
                   Padding(
                  padding: const EdgeInsets.only(top: 130, left: 60, right: 60),
                  child:
                  
                  
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi There,",
                            style: TextStyle(
                              color: Color(0xff002057),
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "$prefix $name ",
                                style: TextStyle(
                                  color: Color(0xff002057),
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  // fontFamily: "Noto",
                                ),
                              ),
                             
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "I,m into ",
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.w600),
                              ),
                              Container(
                                // key: _PortfolioKey,
                                color: Color(0xff0066CC),
                                child: AnimatedTextKit(
                                  animatedTexts: [
                                    TyperAnimatedText(
                                      " $profession",
                                      textStyle: const TextStyle(
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.bold,
                                        // fontFamily: "Noto",
                                        color: Colors.white,
                                      ),
                                      speed: const Duration(milliseconds: 400),
                                    ),
                                    TyperAnimatedText(
                                      " Front end developer",
                                      textStyle: const TextStyle(
                                          fontSize: 32.0,
                                          fontWeight: FontWeight.bold,
                                          // fontFamily: "Noto",
                                          color: Colors.white),
                                      speed: const Duration(milliseconds: 200),
                                    )
                                  ],
                                  totalRepeatCount: 4,
                                  // pause: const Duration(milliseconds: 500),
                                  displayFullTextOnTap: true,
                                  stopPauseOnTap: true,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Color(0xff0066CC),
                                borderRadius: BorderRadius.circular(37)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: (){
                                      Scrollable.ensureVisible(
                    _aboutKey
                        .currentContext!, // 👈 jis section par scroll karna hai
                    duration: Duration(seconds: 1), // scroll speed
                  );
                                    
                                  },
                                  child: Text(
                                    "About Me",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.arrow_circle_down_sharp,
                                  color: Colors.white,
                                  size: 25,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                  
                                  _launchURL("https://github.com/zainab808");
                  
                                },
                                child: CircleAvatar(
                                  child: Image.network(
                                      "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAdVBMVEX///8ii+YAhOUAg+XE2vYbieYUh+X7/f/o8vwAgeTT5vnw9/3J4PiqzvR7tO71+v6TwfEqj+eEue+hyfPh7vuNvvBGmulPn+pepevZ6foxkuebxfK82PY5lehorO1Zo+u11PV0sO7M4vhNnOmw0fVtru0AfOPpLnHYAAAK7klEQVR4nO1d26KqKhRdYpBlq4uVpZVd9/n/TzxZq5uijImAPTge9n5ZIUNg3pn+/HTo0KFDhw4dOnTo0KFDhw4dOpDRv6HtWRjHJFj0fqfRcb2Kd2mO+LzPxsvNYRiEbc+tMRaj+XG18xhjQnDBucdz3P4VgvkiPWfT3qLtWepiOM9mnN1oeVXImTIxW8+Hbc+WisV8fV2hamYFntf1ZOtL0PasUfSHy9hnKLsXTcbO06TtyQNIljsGL155LePNd5/Kye+Vnh67J0m2OnytOknGgr45JSSZt/nKIzlaa+/OEkfBj193IrexieV74yiyr+K43fkm+d1JDvZfw/F09k3Tu3Nk4684j4vM6P78gPCW7cvVpT1+Xr6M6ahdfqOUWeR3g5+1uFXD48A2Py/fqpe2CI5mzewXFJxl7fiRRzsSVAbBWziNyc7NAt7B/aVrgr/cpgiVgO3d7tSxVR0hBfccxgHClXUdIYPvTKYmM+cLeAebuiE4MuUkaVA8uiB4cX8E3yju7dupc/N+EgViNbFMcONOzVdQjO1SnLZN0DbF1lcwh4jtncX5NxDMz6Itir/fQfBKcW2H4LYVQ0YKNrZB8NSeoi+DbcwTDGpyZC2AHYwzdOoOqsGZ6WBq9l0ErxRnZtXiplbK5Els03s4Tw7X5rHMCtRR7Qqyy+myzFJmzCTPycXH6WG4qXuuSWkT1s8nvv1Rf3FZa6R+JfR8L+qFN6Ue1A7nm3P69/VL+Pv8w/5hL5rtV85m0ZsMOdcONjNl2/zWHkLufcSkk8jTF0qcnS8fsx7XjiUMKf5FfViN7wt/Hy6FHkfO4mJY9FBvR7GtEYar+m0nysGT8KhzHoV3KI00VLwrIypjrjBH2UnyoySmGrGcRZJTFSh+ZWKfhirJweXlIRuaxBEVWTSVreg3N23WKoJexQ+TVBT+8FbMdgUvF4L5WcV22ynezJ+qaoCRcrftqn7azx6/FSK3eWZ5ReI4Go+z/XmWa3XxEGHcr1TeCiHwoau00I9VTyiJ0jdsrgLnyiRdL7fDoHDKgmFvmsX8Zu7xapGYKff6rFk+o14V3hhmNT8/MLbeJNXyrh/0onhQlzr7p2TYLBDeV8fveW0YeghkqJM6YVGv8m8TEE0WcaqW+absigqoGXqiQah/Aii19hl6A/1ShiUwvIgM8ikDYaj/kkMkNPMFa8i57iLWO/aP4e0mvI6IZaS7jyYpMHi9tmgOtT7M56CpExWey2P0Go1vACqj8Q5Nw6bev34yrLTajEBpUzWYxBCr6OIz06Q+AJYM+DIXTgXojOcug806lz4YaecaocU+6t8Jm5W8CzQeomG6XVAn3VCsRA618/aYBV3W7FEXXdisOJuia8hX1KEDuG6NPjYB8Hv2BPWujdox1B8bhyKQ+Q5yjB/TtPex7dV+9vC8OnUrKSNsbwRtFpst8a3EaOY3nrO3VTXwhzUcPme0ykXEabnDWHZEDiCO8geiCwCPK414m4Qqrv+CoAy7QG8ZWPbwcwCxor+XTUknYo7TFantSsEf1L24vu05YVDQ6rZrsT0wBF83yfpWZQseb82u9/vAP+woUvw4tDrIQOIHmg66iPh0TtiQlkM0LyBRTY90ZkCjlCS8mgDcUwQvB9P3jk4hYUK4qMF8FieC9A5Q7e9Q+2qCiVLL9toHoLhfoe6lBti2d2DOvIBJBli2L7DhXDZcCSEzEj43UPiHc6uUioBMN4H6+VCYzXLOqYjaKsXnnNCDAwW4LJQh12GExDNgEyRCGPpu75BPkDnBsRp1/YNH0D1moC57oUwKibPpJAoaAXHouAcyVNYheY61YQ7I+mYgQ2RDkBxqE4B0/gALOfRTgKFjUQrGN0HxBwXwrMfYioB8Vh9LMEAMndpsOYaIQgQv0kB5V0cBjBcShCE4K4zhV64hOCuI4XeeQ3SXQrLUnYN/ByRLGShpEBeffaU+BGUppvFd94uBbBrUHUCsNmex0gegAjffoOXt3LeAomMcnBQUnWRuW/4EkAeMhv8wM96tMIVEKXy9BIuJuI3TQPsKdlqh/CgnJZUbAyqsgeuVIRPQ8122UIMCUbgKC6AsgVN9AekKvHwvRMy2BhXydIBVdngdLVb/7DBUA8U3rzOC3zlWqICnepoCzJDyFNbRc/CVuVIYR7BUAS/eQytzterH6TiBFYqEN17fyuANTpKk/Rk4G0olNHRbhvbW9AFXEQpCZAXKXNxem/1mjXBJPeleBFwDzS0WCN8xgpsX8DNh2AVcfcytXre4WpB4sTIt7IA3heKeTYoJoTsVbTuhxYk3ivZ0xonSfmtAEuxwgWkO/2CJ4IHSAo94TTAk9V/x7ZTrL0k9/qj5PsJ9Cy9vnGreRA32tPYoYDT4CVXPlgK4aNieooQLsRsTuQXIgthCh/tGv7eR7KmtbukhavxO1YOjiExt1WBMb6dFMdnugI2lt4fwyEQQdbLU6KWl0acGKtEpPkawcdOLbIuxVv8+ncoJLPhTehJbb/XvYEy2a80vYhHvdd2A+p0ljv5srGflnKJUt2ef3v2yiiQbV8a9uBCz45boHI/GM802bzn0XBypC3WdfOqpOwdeT6S/mo6w/To5bVYNu2emOgR/QknViTgm4SQYTpHvr3A/xVTkqXHXTN2MdLnO9Nm6bAJc7mRrVOQkzfhpd/6QhSnFU4YoHRvK4R82W0T92LQk1Oyn0Z/xENTH/kkxBR374u1R+vmFUKYwhL8FKFID4mDQV4omET9pvoA/TMBFzVOpQbgQDYpKMGhgK4ZS3fc82NV1SvQ7UaSowuezGmWI5K2inkKk0ovUKOxDL8MW0bB9zGQnfe7jKFb5WDq9MraaVmLTltAVm+dhQ1SkLrUy4JpfIGp82VpeIPWsNZGL+VQnY0MMnBRnog35Na9XXYfsGrLe2cfKB4oTMXDNU3rj/2Un9SUnVTOZQYvv3TEw0DpGflvlRaJsoOuaiWDq+WMaRjrPS6+ovl2EC4ofhtDtOpSQD2LzLsJ3yPbpezVNuP4U9LoqGKty+XiSqWrzuLyKnL8L6Y3/5r+K/3TTpkhh6zvMNf8JJP7356WZMPLy1s55g+f0qP1iCRmv21s22INLUvtY9I4m2yjLjtElaVC8APcuu8/AaFFWVKZo4cYFocGYZ7zCdVV6vRZaKpC+KMUM19JPylaj+SrhHoGh+ReclG1svIwMBIEht9DdaFuKFgnTFaYUhjYa/ZXdCNPZbZghF3bKeMoOv2/2bhDM0NoN1rLOMNtSEGVo+MW+Q0IRDmwDABla/UZ3VAqmCP5rrAQTY2haERZQpsjZbl4wn3QpQwwtE5R+TZYzbzXtJUEYBoth73cc9zTHRhg6+Iz8XJJFuTkV4vahnOv/vj2G3MbHK0vYqnKZzBpD3vS7OSCGisimPYZCd2QqSpEZNwy55/CKfO2H1SwxZCunlzrnNYfRCkNu5xvANRhW71QbDM0XP6rR/1c1HwsMBVjWYRiHipoT8wyZ3Y/ZVCOUL6NphmLmSklIsJ1JJmWY4eDo9mJ8Af1lWW+YZMhZxacfHWJRKpg0yFDwqdveDXKcVr4dhtzP7H1ZgoZD+l54bogh92PXjYzqsI1f59EIQ8603Uxb6D3PowGG3N+3LmAkSMbitpBNGV7d6cx1GyoUk0vMBG/GkDNzFzesIFnuBvoMuRD7wzfoh3qcdK3k3n/nzbeoBztYtOJAdOjQoUOHDh06dOjQoUOHDh06dOjQAcL/vECVrjjJ2qEAAAAASUVORK5CYII="),
                                  radius: 22,
                                  backgroundColor: Color(0xff0066CC),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                onTap: (){
                                    _launchURL("https://www.linkedin.com/in/zainab-batool-034094369/");
                                },
                                child: CircleAvatar(
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    color: Colors.white,
                                    child: Center(
                                      child: Text(
                                        "in",
                                        style: TextStyle(
                                            color: Color(0xff2187DF),
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  //  Image.network(
                                  //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSSwscr3u33zUFMKwyeWyb3LF4-636AXmHqQ&s"),
                                
                                  radius: 20,
                                  backgroundColor: Color(0xff2187DF),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                            SizedBox(
                                width: 15,
                              ),
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Container(
                            height: 380,
                            width: 380,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("flower/doll.png"),
                                ),
                                color: Color(0xff0066CC),
                                borderRadius: BorderRadius.circular(190)),
                          )
                        ],
                      )
                    ],
                  ),
                          
                          
                          
                          
                ),
         
         
         
              ],
            ),   
          
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  AboutScreen(key: _aboutKey,cvData:widget.cvData),
                  SkillsScreen(
                    key: _skillsKey,
                    
                  ),
                EducationScreen(
                    key: _educationKey,
                  ),  
                  ProjectScreen(key: _projectkey),
                  ExperienceScreen(key: _experienceKey,),
                  ContactScreen(
                    key: _contactKey,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );


  }
}
