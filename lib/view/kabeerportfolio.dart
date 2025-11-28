import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class Potfoliotwo extends StatefulWidget {
  // const Potfoliotwo({super.key, List<Map<String, dynamic>>? cvData});
  final List<Map<String, dynamic>>? cvData;
  const Potfoliotwo({super.key, this.cvData});

  @override
  State<Potfoliotwo> createState() => _PotfoliotwoState();
}

class _PotfoliotwoState extends State<Potfoliotwo> {
  final GlobalKey Home = GlobalKey();
  final GlobalKey About = GlobalKey();
  final GlobalKey Skill = GlobalKey();
  final GlobalKey Education = GlobalKey();
  final GlobalKey Work = GlobalKey();
  final GlobalKey Experience = GlobalKey();
  final GlobalKey Contact = GlobalKey();
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
   // Extract data from widget.cvData with proper JSON structure mapping for Kabeer
String name = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['common']['name'] ?? 'Mühâmmâd Kåbëër' 
    : 'Mühâmmâd Kåbëër';

String prefix = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['common']['prefix'] ?? "I'm " 
    : "I'm ";

String profession = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['common']['profession'] ?? 'Flutter Developer' 
    : 'Flutter Developer';

String email = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['common']['email'] ?? 'kabirmalik328@gmail.com' 
    : 'kabirmalik328@gmail.com';

String phone = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['common']['phone'] ?? '+92 305-155-5866' 
    : '+92 305-155-5866';

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
    "preview_url": "https://kabirmalik328-maker.github.io/WeatherAppPreview/",
    "image": "assets/images/ss.png",
    "technologies": ["Flutter", "API"],
    "github_url": "https://github.com/kabirmalik328-maker/WeatherApp"
  },
  {
    "name": "ShopHere",
    "description": "E-commerce application",
    "preview_url": "https://kabirmalik328-maker.github.io/ShopHerePreview/",
    "image": "assets/images/sw.png",
    "technologies": ["Flutter", "UI/UX"],
    "github_url": "https://github.com/kabirmalik328-maker/ShopHere"
  },
  {
    "name": "Chatbot",
    "description": "AI Chatbot application",
    "preview_url": "https://kabirmalik328-maker.github.io/ChatbotPreview/",
    "image": "assets/images/swa.png",
    "technologies": ["Flutter", "AI"],
    "github_url": "https://github.com/kabirmalik328-maker/Chatbot"
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
    ? widget.cvData![0]['home_section']['resume']['url'] ?? 'https://drive.google.com/file/d/1ioJPnGFcq7lSubciPurWyt6GMGrt95kZ/view'
    : 'https://drive.google.com/file/d/1ioJPnGFcq7lSubciPurWyt6GMGrt95kZ/view';

// Profile images
String profileImage1 = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['common']['profile_image1'] ?? 'assets/images/kaber.png'
    : 'assets/images/kaber.png';

String profileImage2 = widget.cvData?.isNotEmpty == true 
    ? widget.cvData![0]['common']['profile_image2'] ?? 'assets/images/profile1.png'
    : 'assets/images/profile1.png';
    return Scaffold(
      backgroundColor: Color(0xffFDEDCD),
      appBar: size.width >= 1028
          ? AppBar(
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(1),
                child: Container(color: Color(0xff7c2824), height: 1),
              ),
              backgroundColor: Colors.white,
              title: Padding(
                padding: EdgeInsets.only(left: size.width * 0.06),
                child: Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/kabeer.png'),
                      ),
                    ),
                    SizedBox(width: size.width * 0.01),
                    Text(
                      name,
                      style: TextStyle(
                        color: Color(0xff7c2824),
                        fontFamily: 'font',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: size.width * 0.04),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Scrollable.ensureVisible(
                            Home.currentContext!,
                            duration: Duration(milliseconds: 600),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Text(
                          'Home',
                          style: TextStyle(
                            color: Color(0xff7c2824),
                            fontFamily: 'font',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.02),
                      TextButton(
                        onPressed: () {
                          Scrollable.ensureVisible(
                            About.currentContext!,
                            duration: Duration(milliseconds: 600),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Text(
                          'About',
                          style: TextStyle(
                            color: Color(0xff7c2824),
                            fontFamily: 'font',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.02),
                      TextButton(
                        onPressed: () {
                          Scrollable.ensureVisible(
                            Skill.currentContext!,
                            duration: Duration(milliseconds: 600),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Text(
                          'Skills',
                          style: TextStyle(
                            color: Color(0xff7c2824),
                            fontFamily: 'font',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.02),
                      TextButton(
                        onPressed: () {
                          Scrollable.ensureVisible(
                            Education.currentContext!,
                            duration: Duration(milliseconds: 600),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Text(
                          'Education',
                          style: TextStyle(
                            color: Color(0xff7c2824),
                            fontFamily: 'font',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.02),
                      TextButton(
                        onPressed: () {
                          Scrollable.ensureVisible(
                            Work.currentContext!,
                            duration: Duration(milliseconds: 600),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Text(
                          'Work',
                          style: TextStyle(
                            color: Color(0xff7c2824),
                            fontFamily: 'font',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.02),
                      IconButton(
                        onPressed: () {
                          Scrollable.ensureVisible(
                            Experience.currentContext!,
                            duration: Duration(milliseconds: 600),
                            curve: Curves.easeInOut,
                          );
                        },
                        icon: Text(
                          'Experience',
                          style: TextStyle(
                            color: Color(0xff7c2824),
                            fontFamily: 'font',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.02),
                      TextButton(
                        onPressed: () {
                          Scrollable.ensureVisible(
                            Contact.currentContext!,
                            duration: Duration(milliseconds: 600),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Text(
                          'Contact',
                          style: TextStyle(
                            color: Color(0xff7c2824),
                            fontFamily: 'font',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : AppBar(
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(1),
                child: Container(color: Color(0xff7c2824), height: 1),
              ),
              backgroundColor: Colors.white,
              title: Padding(
                padding: EdgeInsets.only(left: size.width * 0.06),
                child: Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/kabeer.png'),
                      ),
                    ),
                    SizedBox(width: size.width * 0.01),
                    Text(
                      name,
                      style: TextStyle(
                        color: Color(0xff7c2824),
                        fontFamily: 'font',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                Row(
                  children: [
                    Builder(
                      builder: (context) {
                        return InkWell(
                          onTap: () {
                            Scaffold.of(context).openEndDrawer();
                          },
                          child: Icon(Icons.menu, color: Color(0xff7c2824)),
                        );
                      },
                    ),
                    SizedBox(width: size.width * 0.04),
                  ],
                ),
              ],
            ),
      endDrawer: Drawer(
        child: Container(
          color: Color(0xffFDEDCD),
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  'Home',
                  style: TextStyle(
                    color: Color(0xff7c2824),
                    fontFamily: 'font',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Scrollable.ensureVisible(
                    Home.currentContext!,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              Divider(color: Color(0xff7c2824), thickness: 1),
              ListTile(
                title: Text('About', style: TextStyle(
                    color: Color(0xff7c2824),
                    fontFamily: 'font',
                    fontWeight: FontWeight.bold,
                  ),),
                onTap: () {
                  Navigator.of(context).pop();
                  Scrollable.ensureVisible(
                    About.currentContext!,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              Divider(color: Color(0xff7c2824), thickness: 1),
              ListTile(
                title: Text("Skill's", style: TextStyle(
                    color: Color(0xff7c2824),
                    fontFamily: 'font',
                    fontWeight: FontWeight.bold,
                  ),),
                onTap: () {
                  Navigator.of(context).pop();
                  Scrollable.ensureVisible(
                    Skill.currentContext!,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              Divider(color: Color(0xff7c2824), thickness: 1),
              ListTile(
                title: Text('Education', style: TextStyle(
                    color: Color(0xff7c2824),
                    fontFamily: 'font',
                    fontWeight: FontWeight.bold,
                  ),),
                onTap: () {
                  Navigator.of(context).pop();
                  Scrollable.ensureVisible(
                    Education.currentContext!,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              Divider(color: Color(0xff7c2824), thickness: 1),
              ListTile(
                title: Text('Work', style: TextStyle(
                    color: Color(0xff7c2824),
                    fontFamily: 'font',
                    fontWeight: FontWeight.bold,
                  ),),
                onTap: () {
                  Navigator.of(context).pop();
                  Scrollable.ensureVisible(
                    Work.currentContext!,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              Divider(color: Color(0xff7c2824), thickness: 1),
              ListTile(
                title: Text('Experience', style: TextStyle(
                    color: Color(0xff7c2824),
                    fontFamily: 'font',
                    fontWeight: FontWeight.bold,
                  ),),
                onTap: () {
                  Navigator.of(context).pop();
                  Scrollable.ensureVisible(
                    Experience.currentContext!,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              Divider(color: Color(0xff7c2824), thickness: 1),
              ListTile(
                title: Text('Contact', style: TextStyle(
                    color: Color(0xff7c2824),
                    fontFamily: 'font',
                    fontWeight: FontWeight.bold,
                  ),),
                onTap: () {
                  Navigator.of(context).pop();
                  Scrollable.ensureVisible(
                    Contact.currentContext!,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              Divider(color: Color(0xff7c2824), thickness: 1),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.02),
              child: size.width >= 1028
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          key: Home,
                          height: 530,
                          width: 600,
                          child: Padding(
                            padding: EdgeInsets.only(left: size.width * 0.08),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Hi There,',
                                      style: TextStyle(
                                        fontFamily: 'fonts',
                                        fontSize: 40,
                                      ),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: [
                                    Text(
                                      "I'm ",
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontFamily: 'fonts',
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      name.split('')[0],
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontFamily: 'font',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      ' ${name.split('')[1]}',
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontFamily: 'font',
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff7c2824),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "$prefix ",
                                      style: TextStyle(
                                        fontFamily: 'fonts',

                                        fontSize: 40,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      profession,
                                      style: TextStyle(
                                        fontFamily: 'fonts',

                                        fontSize: 40,
                                        // fontWeight: FontWeight.bold,
                                        color: Color(0xff7c2824),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.02,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // key: About,
                                        height: 60,
                                        width: 200,
                                        decoration: BoxDecoration(
                                          color: Color(0xff7c2824),
                                          borderRadius: BorderRadius.circular(
                                            40,
                                          ),
                                        ),
                                        child: Center(
                                          child: InkWell(
                                            onTap: () {
                                              launchUrl(
                                                Uri.parse(
                                                  'https://drive.google.com/file/d/1ioJPnGFcq7lSubciPurWyt6GMGrt95kZ/view',
                                                ),
                                              );
                                              ;
                                            },
                                            child: Text(
                                              'Resume  =>',
                                              style: TextStyle(
                                                fontFamily: 'font',

                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 22,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.02,
                                    left: size.width * 0.03,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          border: Border.all(
                                            color: Color(0xff7c2824),
                                            width: 1,
                                          ),
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            launchUrl(
                                              Uri.parse(
                                                'https://github.com/kabirmalik328-maker',
                                              ),
                                            );
                                          },
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Color(0xffFDEDCD),
                                            child: Image.asset(
                                              'assets/images/github.png',
                                              height: 34,
                                              width: 34,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: size.width * 0.02),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          border: Border.all(
                                            color: Color(0xff7c2824),
                                            width: 1,
                                          ),
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            launchUrl(
                                              Uri.parse(
                                                'www.linkedin.com/in/muhammad-kabeer-35473b378',
                                              ),
                                            );
                                          },
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Color(0xffFDEDCD),
                                            child: Image.asset(
                                              'assets/images/linke.png',
                                              height: 110,
                                              width: 110,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 530,
                          width: 600,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 480,
                                width: 480,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/kaber.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          key: Home,
                          height: size.height * 0.99,
                          width: size.height * 0.99,
                          child: Padding(
                            padding: EdgeInsets.only(left: size.width * 0.08),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Hi There,',
                                      style: TextStyle(
                                        fontFamily: 'fonts',
                                        fontSize: 26,
                                      ),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: [
                                    Text(
                                      "$prefix ",
                                      style: TextStyle(
                                        fontSize: 26,
                                        fontFamily: 'fonts',
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      name.split('')[0],
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontFamily: 'font',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      ' ${name.split('')[1]}',
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontFamily: 'font',
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff7c2824),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "$prefix ",
                                      style: TextStyle(
                                        fontFamily: 'fonts',

                                        fontSize: 26,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      profession,
                                      style: TextStyle(
                                        fontFamily: 'font',

                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff7c2824),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.02,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        // key: About,
                                        height: 46,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Color(0xff7c2824),
                                          borderRadius: BorderRadius.circular(
                                            40,
                                          ),
                                        ),
                                        child: Center(
                                          child: InkWell(
                                            onTap: () {
                                              launchUrl(
                                                Uri.parse(
                                                  'https://drive.google.com/file/d/1ioJPnGFcq7lSubciPurWyt6GMGrt95kZ/view',
                                                ),
                                              );
                                              ;
                                            },
                                            child: Text(
                                              'Resume =>',
                                              style: TextStyle(
                                                fontFamily: 'font',

                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.02,
                                    left: size.width * 0.08,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          border: Border.all(
                                            color: Color(0xff7c2824),
                                            width: 1,
                                          ),
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            launchUrl(
                                              Uri.parse(
                                                'https://github.com/kabirmalik328-maker',
                                              ),
                                            );
                                          },
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Color(0xffFDEDCD),
                                            child: Image.asset(
                                              'assets/images/github.png',
                                              height: 34,
                                              width: 34,
                                            ),
                                          ),
                                        ),
                                      ),

                                      SizedBox(width: size.width * 0.04),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          border: Border.all(
                                            color: Color(0xff7c2824),
                                            width: 1,
                                          ),
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            launchUrl(
                                              Uri.parse(
                                                'www.linkedin.com/in/muhammad-kabeer-35473b378',
                                              ),
                                            );
                                          },
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Color(0xffFDEDCD),
                                            child: Image.asset(
                                              'assets/images/linke.png',
                                              height: 150,
                                              width: 150,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: size.width * 0.01),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          border: Border.all(
                                            color: Color(0xff7c2824),
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    // bottom: size.height * 0.,
                                    // left: size.width * 0.10,
                                    right: size.width * 0.10,
                                  ),
                                  child: Column(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 372,
                                            width: 480,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/kaber.png',
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
            Container(
              child: size.width >= 1028
                  ? Column(
                      children: [
                        Container(
                          key: About,
                          height: 60,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          // color: Color(0xffFDEDCD),
                          child: Padding(
                            padding: EdgeInsets.only(top: size.height * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person,
                                  size: 40,
                                  color: Color(0xff7c2824),
                                ),
                                SizedBox(width: size.width * 0.03),
                                Text(
                                  'About',
                                  style: TextStyle(
                                    color: Color(0xff7c2824),
                                    fontFamily: 'font',

                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 650,
                          width: 1210,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.15,
                                ),
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 440,
                                      width: 320,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.blue,
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/profile1.png",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 580,
                                width: 700,
                                decoration: BoxDecoration(
                                  color: Color(0xff7c2824),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  children: [
                                    // Row(
                                    //   mainAxisAlignment: MainAxisAlignment.center,
                                    //   children: [
                                    //     Text(
                                    //       'About Me',
                                    //       style: TextStyle(
                                    //         color: Color(0xffFDEDCD),
                                    //         fontSize: 30,
                                    //         fontWeight: FontWeight.bold,
                                    //       ),
                                    //     ),
                                    //   ],
                                    // ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: size.width * 0.03,
                                        right: size.width * 0.03,
                                        top: size.height * 0.04,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            "I'm M.Kabeer",
                                            style: TextStyle(
                                              fontFamily: 'font',

                                              color: Color(0xffFDEDCD),
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: size.width * 0.03,
                                        right: size.width * 0.03,
                                        top: size.height * 0.00,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            profession,
                                            style: TextStyle(
                                              fontFamily: 'font',
                                              color: Color(0xffFDEDCD),
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: size.width * 0.03,
                                              right: size.width * 0.03,
                                              top: size.height * 0.01,
                                            ),
                                            child: Text(
                                              // 'I am an enthusiastic and dedicated Flutter developer, starting my professional journey with a deep passion for mobile app development. As a fresher, I bring strong knowledge of Dart and Flutter, along with a curious mindset and the ability to quickly learn and adapt to new technologies. During my academic journey and personal projects, I have gained hands-on experience in building cross-platform mobile applications, implementing modern UI/UX principles, and ensuring smooth functionality across Android and iOS platforms. What excites me the most about Flutter is the flexibility and creativity it provides—I enjoy experimenting with widgets, animations, and layouts to bring ideas to life. I strongly believe in writing clean, maintainable, and scalable code, while also focusing on performance optimization to deliver a seamless user experience. In addition, I have explored integration with APIs, Firebase, and state management techniques, which has strengthened my practical knowledge. Beyond technical skills, I see myself as a problem-solver who thrives on challenges. I am committed to continuous growth, keeping up with the latest updates in Flutter and other mobile technologies. My career goal is to work on impactful projects, collaborate with talented teams, and contribute to applications that not only solve problems but also enhance people’s daily lives. With every project I undertake, I aim to sharpen my skills, embrace new learning opportunities, and establish myself as a creative and reliable Flutter developer in the tech industry.',
                                              about_description,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'font',
                                                fontSize: 13,
                                                // fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: size.width * 0.03,
                                        right: size.width * 0.03,
                                        top: size.height * 0.01,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Email : ',
                                            style: TextStyle(
                                              color: Color(0xffFDEDCD),
                                              fontFamily: 'font',
                                            ),
                                          ),
                                          Text(
                                            email,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'font',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: size.width * 0.03,
                                        right: size.width * 0.03,
                                        top: size.height * 0.01,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Place : ',
                                            style: TextStyle(
                                              color: Color(0xffFDEDCD),
                                              fontFamily: 'font',
                                            ),
                                          ),
                                          Text(
                                            location,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'font',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: size.width * 0.03,
                                        right: size.width * 0.03,
                                        top: size.height * 0.01,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Phone Number : ',
                                            style: TextStyle(
                                              color: Color(0xffFDEDCD),
                                              fontFamily: 'font',
                                            ),
                                          ),
                                          Text(
                                            phone,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'font',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: size.height * 0.02,
                                        left: size.width * 0.03,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 44,
                                            width: 120,
                                            decoration: BoxDecoration(
                                              color: Color(0xffFDEDCD),
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                            ),
                                            child: Center(
                                              child: InkWell(
                                                onTap: () {
                                                  launchUrl(
                                                    Uri.parse(
                                                      'https://drive.google.com/file/d/1ioJPnGFcq7lSubciPurWyt6GMGrt95kZ/view',
                                                    ),
                                                  );
                                                  ;
                                                },
                                                child: Text(
                                                  'Resume =>',
                                                  style: TextStyle(
                                                    fontFamily: 'font',

                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xff7c2824),
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Padding(
                    padding: EdgeInsets.only(top: size.height * 0.06),
                    child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: size.height * 0.0),
                            child: Container(
                              key: About,
                              height: 50,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              // color: Color(0xffFDEDCD),
                              child: Padding(
                                padding: EdgeInsets.only(top: size.height * 0.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.person,
                                      size: 30,
                                      color: Color(0xff7c2824),
                                    ),
                                    SizedBox(width: size.width * 0.03),
                                    Text(
                                      'About',
                                      style: TextStyle(
                                        color: Color(0xff7c2824),
                                        fontFamily: 'font',
                    
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // height: size.height * 0.,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: size.height * 0.02,
                                      ),
                                      child: Container(
                                        height: size.height * 0.56,
                                        width: size.height * 0.56,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          color: Colors.blue,
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/images/profile1.png",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: size.height * 0.02,
                                            right: size.width * 0.02,
                                            left: size.width * 0.02,
                                            bottom: size.height * 0.02,
                                          ),
                                          child: Container(
                                            // height: 580,
                                            // width: 700,
                                            decoration: BoxDecoration(
                                              color: Color(0xff7c2824),
                                              borderRadius: BorderRadius.circular(
                                                20,
                                              ),
                                            ),
                                            child: Column(
                                              children: [
                                                // Row(
                                                //   mainAxisAlignment: MainAxisAlignment.center,
                                                //   children: [
                                                //     Text(
                                                //       'About Me',
                                                //       style: TextStyle(
                                                //         color: Color(0xffFDEDCD),
                                                //         fontSize: 30,
                                                //         fontWeight: FontWeight.bold,
                                                //       ),
                                                //     ),
                                                //   ],
                                                // ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: size.width * 0.03,
                                                    right: size.width * 0.03,
                                                    top: size.height * 0.01,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "I'm M.Kabeer",
                                                        style: TextStyle(
                                                          fontFamily: 'font',
                                                          color: Color(
                                                            0xffFDEDCD,
                                                          ),
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: size.width * 0.03,
                                                    right: size.width * 0.03,
                                                    top: size.height * 0.00,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        profession,
                                                        style: TextStyle(
                                                          fontFamily: 'font',
                    
                                                          color: Color(
                                                            0xffFDEDCD,
                                                          ),
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding: EdgeInsets.only(
                                                          left: size.width * 0.03,
                                                          right:
                                                              size.width * 0.03,
                                                          top: size.height * 0.00,
                                                        ),
                                                        child: Text(
                                                          // 'I am an enthusiastic and dedicated Flutter developer, starting my professional journey with a deep passion for mobile app development. During my academic journey and personal projects, I have gained hands-on experience in building cross-platform mobile applications, implementing modern UI/UX principles, and ensuring smooth functionality across Android and iOS platforms. What excites me the most about Flutter is the flexibility and creativity it provides—I enjoy experimenting with widgets, animations, and layouts to bring ideas to life. I strongly believe in writing clean, maintainable, and scalable code, while also focusing on performance optimization to deliver a seamless user experience. In addition, I have explored integration with APIs, Firebase, and state management techniques, which has strengthened my practical knowledge. Beyond technical skills, I see myself as a problem-solver who thrives on challenges. I am committed to continuous growth, keeping up with the latest updates in Flutter and other mobile technologies. My career goal is to work on impactful projects, collaborate with talented teams, and contribute to applications that not only solve problems but also enhance people’s daily lives. With every project I undertake, I aim to sharpen my skills, embrace new learning opportunities, and establish myself as a creative and reliable Flutter developer in the tech industry.',
                                                          about_description,
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontFamily: 'font',
                                                            fontSize: 10,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: size.width * 0.03,
                                                    right: size.width * 0.03,
                                                    top: size.height * 0.00,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Email : ',
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xffFDEDCD,
                                                          ),
                                                          fontFamily: 'font',
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      Text(
                                                        email,
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontFamily: 'font',
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: size.width * 0.03,
                                                    right: size.width * 0.03,
                                                    top: size.height * 0.00,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Place : ',
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xffFDEDCD,
                                                          ),
                                                          fontFamily: 'font',
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      Text(
                                                        location,
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: 'font',
                                                          fontSize: 10,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: size.width * 0.03,
                                                    right: size.width * 0.03,
                                                    top: size.height * 0.00,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Phone Number : ',
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xffFDEDCD,
                                                          ),
                                                          fontFamily: 'font',
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      Text(
                                                        phone,
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: 'font',
                                                          fontSize: 10,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: size.height * 0.01,
                                                    left: size.width * 0.03,
                                                    bottom: size.height * 0.02,
                                                  ),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        height:
                                                            size.height * 0.05,
                                                        width: size.width * 0.25,
                                                        decoration: BoxDecoration(
                                                          color: Color(
                                                            0xffFDEDCD,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                40,
                                                              ),
                                                        ),
                                                        child: Center(
                                                          child: InkWell(
                                                            onTap: () {
                                                              launchUrl(
                                                                Uri.parse(
                                                                  'https://drive.google.com/file/d/1ioJPnGFcq7lSubciPurWyt6GMGrt95kZ/view',
                                                                ),
                                                              );
                                                              ;
                                                            },
                                                            child: Text(
                                                              'Resume =>',
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'font',
                    
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Color(
                                                                  0xff7c2824,
                                                                ),
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                  ),
            ),

        Container(
  child: size.width >= 850
      ? Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.08),
              child: Container(
                key: Skill,
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: size.height * 0.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.laptop_chromebook_outlined,
                        size: 40,
                        color: Color(0xff7c2824),
                      ),
                      SizedBox(width: size.width * 0.03),
                      Text(
                        "Skill's",
                        style: TextStyle(
                          color: Color(0xff7c2824),
                          fontFamily: 'font',
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    height: 600,
                    width: 1100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 500,
                          width: 1000,
                          decoration: BoxDecoration(
                            color: Color(0xff7c2824).withOpacity(0.8),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 400,
                                  width: 900,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(20),
                                      child: GridView.builder(
                                        shrinkWrap: true,
                                        physics: NeverScrollableScrollPhysics(),
                                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 4,
                                          crossAxisSpacing: 20,
                                          mainAxisSpacing: 20,
                                          childAspectRatio: 1.0,
                                        ),
                                        itemCount: skill.length,
                                        itemBuilder: (context, index) {
                                          final skillItem = skill[index];
                                          return Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xffFDEDCD),
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                CircleAvatar(
                                                  radius: 28,
                                                  backgroundColor: Color(0xffFDEDCD),
                                                  child: Image.asset(
                                                    skillItem['icon'] ?? 'assets/images/default.png',
                                                    height: 50,
                                                    width: 50,
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  skillItem['name'] ?? 'Skill',
                                                  style: TextStyle(
                                                    fontFamily: 'fonts',
                                                    color: Color(0xff7c2824),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      : Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.16),
                child: Container(
                  key: Skill,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                      bottom: size.height * 0.01,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.laptop_chromebook_outlined,
                          size: 30,
                          color: Color(0xff7c2824),
                        ),
                        SizedBox(width: size.width * 0.03),
                        Text(
                          "Skill's",
                          style: TextStyle(
                            color: Color(0xff7c2824),
                            fontFamily: 'font',
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: size.height * 0.02,
                              bottom: size.height * 0.02,
                            ),
                            child: Container(
                              width: size.width * 0.9,
                              decoration: BoxDecoration(
                                color: Color(0xff7c2824).withOpacity(0.8),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: GridView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 15,
                                    mainAxisSpacing: 15,
                                    childAspectRatio: 1.0,
                                  ),
                                  itemCount: skill.length,
                                  itemBuilder: (context, index) {
                                    final skillItem = skill[index];
                                    return Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xffFDEDCD),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            radius: 25,
                                            backgroundColor: Color(0xffFDEDCD),
                                            child: Image.asset(
                                              skillItem['icon'] ?? 'assets/images/default.png',
                                              height: 45,
                                              width: 45,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            skillItem['name'] ?? 'Skill',
                                            style: TextStyle(
                                              fontFamily: 'fonts',
                                              color: Color(0xff7c2824),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
),
            Container(
  child: size.width >= 938
      ? Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.08),
              child: Container(
                key: Education,
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: size.height * 0.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.school_outlined,
                        size: 40,
                        color: Color(0xff7c2824),
                      ),
                      SizedBox(width: size.width * 0.03),
                      Text(
                        "Education",
                        style: TextStyle(
                          color: Color(0xff7c2824),
                          fontFamily: 'font',
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 650,
              width: 1210,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 600,
                    width: 1110,
                    decoration: BoxDecoration(
                      color: Color(0xff7c2824).withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: educations.take(3).map((education) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.00,
                                    left: size.width * 0.02,
                                    right: size.width * 0.02,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 350,
                                        width: 300,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              education['image'] ?? 'assets/images/default.jpg',
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                          color: Color(0xffFDEDCD),
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: size.height * 0.02,
                                        ),
                                        child: Container(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: size.width * 0.02,
                                            ),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        education['level'] ?? 'Education Level',
                                                        style: TextStyle(
                                                          fontFamily: 'font',
                                                          fontWeight: FontWeight.bold,
                                                          color: Color(0xff7c2824),
                                                          fontSize: 26,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      education['institution'] ?? 'Institution',
                                                      style: TextStyle(
                                                        fontFamily: 'fonts',
                                                        color: Color(0xff7c2824),
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      education['years'] ?? 'Years',
                                                      style: TextStyle(
                                                        fontFamily: 'fonts',
                                                        color: Color(0xff7c2824),
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          height: 150,
                                          width: 300,
                                          decoration: BoxDecoration(
                                            color: Color(0xffFDEDCD),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      : Column(
          // Mobile version بھی اسی طرح dynamic کریں
          children: [
            // ... mobile header
            Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.02,
                bottom: size.height * 0.02,
              ),
              child: Container(
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  color: Color(0xff7c2824).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.02,
                        bottom: size.height * 0.02,
                      ),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        spacing: size.width * 0.02,
                        runSpacing: size.height * 0.02,
                        children: educations.map<Widget>((education) {
                          return Column(
                            children: [
                              Container(
                                height: 260,
                                width: 260,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      education['image'] ?? 'assets/images/default.jpg',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Color(0xffFDEDCD),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              SizedBox(height: size.height * 0.02),
                              Container(
                                height: 110,
                                width: 250,
                                decoration: BoxDecoration(
                                  color: Color(0xffFDEDCD),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        education['level'] ?? 'Education Level',
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff7c2824),
                                        ),
                                      ),
                                      Text(
                                        education['institution'] ?? 'Institution',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff7c2824),
                                        ),
                                      ),
                                      Text(
                                        education['years'] ?? 'Years',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xff7c2824),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
),  
Container(
  child: size.width >= 781
      ? Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.08),
              child: Container(
                key: Work,
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: size.height * 0.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.work_outline,
                        size: 40,
                        color: Color(0xff7c2824),
                      ),
                      SizedBox(width: size.width * 0.03),
                      Text(
                        "Work",
                        style: TextStyle(
                          fontFamily: 'font',
                          fontWeight: FontWeight.bold,
                          color: Color(0xff7c2824),
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 800,
              width: 1210,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 720,
                    width: 1110,
                    decoration: BoxDecoration(
                      color: Color(0xff7c2824).withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.04,
                      ),
                      child: Column(
                        children: [
                          // First Row - First 3 projects
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Wrap(
                                alignment: WrapAlignment.center,
                                spacing: size.width * 0.02,
                                children: projects.take(3).map((project) {
                                  return InkWell(
                                    onTap: () {
                                      launchUrl(Uri.parse(project['preview_url'] ?? ''));
                                    },
                                    child: Container(
                                      height: 300,
                                      width: 250,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            project['image'] ?? 'assets/images/default.png',
                                          ),
                                          fit: BoxFit.contain,
                                        ),
                                        color: Color(0xffecf1f9),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.3),
                                            spreadRadius: 2,
                                            blurRadius: 8,
                                            offset: Offset(6, 6),
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              color: Colors.black.withOpacity(0.7),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(20),
                                                bottomRight: Radius.circular(20),
                                              ),
                                            ),
                                            child: Text(
                                              project['name'] ?? 'Project',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                          // Second Row - Remaining projects
                          if (projects.length > 3)
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.04,
                                  ),
                                  child: Wrap(
                                    alignment: WrapAlignment.center,
                                    spacing: size.width * 0.02,
                                    children: projects.skip(3).map((project) {
                                      return InkWell(
                                        onTap: () {
                                          launchUrl(Uri.parse(project['preview_url'] ?? ''));
                                        },
                                        child: Container(
                                          height: 340,
                                          width: projects.length > 4 ? 250 : 730,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                project['image'] ?? 'assets/images/default.png',
                                              ),
                                              fit: BoxFit.contain,
                                            ),
                                            color: Color(0xffecf1f9),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(0.3),
                                                spreadRadius: 2,
                                                blurRadius: 8,
                                                offset: Offset(6, 5),
                                              ),
                                            ],
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                padding: EdgeInsets.all(8),
                                                decoration: BoxDecoration(
                                                  color: Colors.black.withOpacity(0.7),
                                                  borderRadius: BorderRadius.only(
                                                    bottomLeft: Radius.circular(20),
                                                    bottomRight: Radius.circular(20),
                                                  ),
                                                ),
                                                child: Text(
                                                  project['name'] ?? 'Project',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      : Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.16),
              child: Container(
                key: Work,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: size.height * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.work_outline,
                        size: 30,
                        color: Color(0xff7c2824),
                      ),
                      SizedBox(width: size.width * 0.03),
                      Text(
                        "Work",
                        style: TextStyle(
                          fontFamily: 'font',
                          fontWeight: FontWeight.bold,
                          color: Color(0xff7c2824),
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.02,
                      bottom: size.height * 0.02,
                      left: size.width * 0.04,
                      right: size.width * 0.04,
                    ),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff7c2824).withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.04,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Wrap(
                              alignment: WrapAlignment.center,
                              spacing: size.width * 0.02,
                              runSpacing: size.height * 0.02,
                              children: projects.map((project) {
                                return InkWell(
                                  onTap: () {
                                    launchUrl(Uri.parse(project['preview_url'] ?? ''));
                                  },
                                  child: Container(
                                    height: 300,
                                    width: 250,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          project['image'] ?? 'assets/images/default.png',
                                        ),
                                        fit: BoxFit.contain,
                                      ),
                                      color: Color(0xffecf1f9),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          spreadRadius: 2,
                                          blurRadius: 8,
                                          offset: Offset(6, 6),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: Colors.black.withOpacity(0.7),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                            ),
                                          ),
                                          child: Text(
                                            project['name'] ?? 'Project',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
),
        Container(
  child: size.width >= 826
      ? Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.08),
              child: Container(
                key: Experience,
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: size.height * 0.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.workspaces_outline,
                        size: 40,
                        color: Color(0xff7c2824),
                      ),
                      SizedBox(width: size.width * 0.03),
                      Text(
                        "Experience",
                        style: TextStyle(
                          color: Color(0xff7c2824),
                          fontFamily: 'font',
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 500,
              width: 1210,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 450,
                    width: 1110,
                    decoration: BoxDecoration(
                      color: Color(0xff7c2824).withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        
                        SizedBox(
                          height: 400,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: experiences.length,
                            itemBuilder: (context, index) {
                              final experience = experiences[index];
                              return Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Container(
                                  height: 348,
                                  width: 820,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                        offset: Offset(6, 6),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: size.width * 0.04,
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Color(0xff7c2824),
                                              width: 2,
                                            ),
                                          ),
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage(
                                              experience['companyLogo'] ?? 'assets/images/Devsinn.jpg',
                                            ),
                                            radius: 80,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: size.width * 0.03,
                                          right: size.width * 0.04,
                                          top: size.height * 0.08,
                                        ),
                                        child: Container(
                                          height: 300,
                                          width: 506,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    experience['company'] ?? 'Company Name',
                                                    style: TextStyle(
                                                      fontFamily: 'font',
                                                      fontWeight: FontWeight.bold,
                                                      color: Color(0xff7c2824),
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                             
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: size.height * 0.01,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      experience['role'] ?? 'Flutter Developer', 
                                                      style: TextStyle(
                                                        fontFamily: 'fonts',
                                                        fontSize: 16,
                                                        color: Color(0xff7c2824),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    experience['duration'] ?? 'March 2025 - Present', // ✅ ADDED DURATION
                                                    style: TextStyle(
                                                      fontFamily: 'fonts',
                                                      fontSize: 14,
                                                      color: Color(0xff7c2824).withOpacity(0.8),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                        left: size.width * 0.00,
                                                        right: size.width * 0.07,
                                                        top: size.height * 0.02,
                                                      ),
                                                      child: Text(
                                                        experience['description'] ?? 'Experience description',
                                                        style: TextStyle(
                                                          fontFamily: 'fonts',
                                                          fontSize: 14,
                                                          color: Color(0xff7c2824),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: size.height * 0.02,
                                                  left: size.width * 0.32,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 40,
                                                      width: 80,
                                                      decoration: BoxDecoration(
                                                        color: Color(0xffFDEDCD),
                                                        borderRadius: BorderRadius.circular(40),
                                                      ),
                                                      child: Center(
                                                        child: InkWell(
                                                          onTap: () {
                                                            launchUrl(
                                                              Uri.parse(
                                                                experience['companyWebsite'] ?? 'https://www.devsinntechnologies.com',
                                                              ),
                                                            );
                                                          },
                                                          child: Text(
                                                            'View =>',
                                                            style: TextStyle(
                                                              fontFamily: 'font',
                                                              fontWeight: FontWeight.bold,
                                                              color: Color(0xff7c2824),
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      : Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.16),
              child: Container(
                key: Experience,
                width: 230,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: size.height * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.workspaces_outline,
                        size: 30,
                        color: Color(0xff7c2824),
                      ),
                      SizedBox(width: size.width * 0.03),
                      Text(
                        "Experience",
                        style: TextStyle(
                          color: Color(0xff7c2824),
                          fontFamily: 'font',
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.02,
                      right: size.width * 0.02,
                      top: size.height * 0.02,
                      bottom: size.height * 0.02,
                    ),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff7c2824).withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Vertical List for mobile
                          Column(
                            children: experiences.map((experience) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.02,
                                  bottom: size.height * 0.02,
                                ),
                                child: Container(
                                  height: 400,
                                  width: 320,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                        offset: Offset(6, 6),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0xff7c2824),
                                            width: 2,
                                          ),
                                        ),
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                            experience['companyLogo'] ?? 'assets/images/Devsinn.jpg',
                                          ),
                                          radius: 40,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: size.width * 0.06,
                                          right: size.width * 0.06,
                                          top: size.height * 0.02,
                                        ),
                                        child: Container(
                                          height: 290,
                                          width: 506,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    experience['company'] ?? 'Company Name',
                                                    style: TextStyle(
                                                      fontFamily: 'font',
                                                      fontWeight: FontWeight.bold,
                                                      color: Color(0xff7c2824),
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: size.height * 0.01,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      experience['role'] ?? 'Flutter Developer', // ✅ DIRECT
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Color(0xff7c2824),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    experience['duration'] ?? 'March 2025 - Present', // ✅ ADDED DURATION
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color(0xff7c2824).withOpacity(0.8),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                        left: size.width * 0.00,
                                                        right: size.width * 0.07,
                                                        top: size.height * 0.02,
                                                      ),
                                                      child: Text(
                                                        experience['description'] ?? 'Experience description',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: Color(0xff7c2824),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: size.height * 0.02,
                                                      left: size.width * 0.24,
                                                      top: size.height * 0.04,
                                                    ),
                                                    child: Container(
                                                      height: 30,
                                                      width: 80,
                                                      decoration: BoxDecoration(
                                                        color: Color(0xffFDEDCD),
                                                        borderRadius: BorderRadius.circular(40),
                                                      ),
                                                      child: Center(
                                                        child: InkWell(
                                                          onTap: () {
                                                            launchUrl(
                                                              Uri.parse(
                                                                experience['companyWebsite'] ?? 'https://www.devsinntechnologies.com',
                                                              ),
                                                            );
                                                          },
                                                          child: Text(
                                                            'View =>',
                                                            style: TextStyle(
                                                              fontFamily: 'font',
                                                              fontWeight: FontWeight.bold,
                                                              color: Color(0xff7c2824),
                                                              fontSize: 16,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
),     Container(
              child: size.width >= 1000
                  ? Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.08),
                          child: Container(
                            key: Contact,
                            height: 60,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: size.height * 0.04),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.connect_without_contact_outlined,
                                    size: 40,
                                    color: Color(0xff7c2824),
                                  ),
                                  SizedBox(width: size.width * 0.03),
                                  Text(
                                    "Contact",
                                    style: TextStyle(
                                      fontFamily: 'font',
                                      fontWeight: FontWeight.bold,

                                      color: Color(0xff7c2824),
                                      fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 650,
                          width: 1210,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 600,
                                width: 1110,
                                decoration: BoxDecoration(
                                  color: Color(0xff7c2824).withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right: size.height * 0.00,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 500,
                                                width: 500,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(0.3),
                                                      spreadRadius: 2,
                                                      blurRadius: 8,
                                                      offset: Offset(6, 6),
                                                    ),
                                                  ],

                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Column(
                                                  // mainAxisAlignment:
                                                  // MainAxisAlignment.spaceEvenly,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 450,
                                                      child: Column(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                  top:
                                                                      size.height *
                                                                      0.04,
                                                                ),
                                                            child: TextField(
                                                              decoration: InputDecoration(
                                                                hintText:
                                                                    'Your Name...',
                                                                border: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        15,
                                                                      ),
                                                                ),
                                                                prefixIcon: const Icon(
                                                                  Icons.person,
                                                                  color: Color(
                                                                    0xff7c2824,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 450,
                                                      child: Column(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                  top:
                                                                      size.height *
                                                                      0.02,
                                                                ),
                                                            child: TextField(
                                                              decoration: InputDecoration(
                                                                hintText:
                                                                    'Your Email...',
                                                                border: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        15,
                                                                      ),
                                                                ),
                                                                prefixIcon: const Icon(
                                                                  Icons
                                                                      .email_outlined,
                                                                  color: Color(
                                                                    0xff7c2824,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 450,
                                                      child: Column(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                  top:
                                                                      size.height *
                                                                      0.02,
                                                                ),
                                                            child: TextField(
                                                              decoration: InputDecoration(
                                                                hintText:
                                                                    'Your Phone Number...',
                                                                border: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        15,
                                                                      ),
                                                                ),
                                                                prefixIcon: const Icon(
                                                                  Icons.phone,
                                                                  color: Color(
                                                                    0xff7c2824,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      // height: 350,
                                                      width: 450,
                                                      child: Column(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                  top:
                                                                      size.height *
                                                                      0.02,
                                                                ),
                                                            child: TextField(
                                                              maxLines: null,
                                                              minLines: 6,
                                                              decoration: InputDecoration(
                                                                hintText:
                                                                    'Your Message...',
                                                                border: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        15,
                                                                      ),
                                                                ),
                                                                prefixIcon: Padding(
                                                                  padding: EdgeInsets.only(
                                                                    bottom:
                                                                        size.height *
                                                                        0.20,
                                                                  ),
                                                                  child: const Icon(
                                                                    Icons
                                                                        .message_outlined,
                                                                    color: Color(
                                                                      0xff7c2824,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: EdgeInsets.only(
                                                              top:
                                                                  size.height *
                                                                  0.08,

                                                              left:
                                                                  size.width *
                                                                  0.27,
                                                            ),
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  height: 40,
                                                                  width: 100,
                                                                  decoration: BoxDecoration(
                                                                    color: Color(
                                                                      0xffFDEDCD,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          40,
                                                                        ),
                                                                  ),
                                                                  child: Center(
                                                                    child: Text(
                                                                      'Send =>',
                                                                      style: TextStyle(
                                                                        fontFamily:
                                                                            'fonts',
                                                                        // fontWeight:
                                                                        //     FontWeight.bold,
                                                                        color: Color(
                                                                          0xff7c2824,
                                                                        ),
                                                                        fontSize:
                                                                            20,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  right: size.width * 0.00,
                                                ),
                                                child: Container(
                                                  height: 500,
                                                  width: 500,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        "assets/images/contact.jpg",
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black
                                                            .withOpacity(0.3),
                                                        spreadRadius: 2,
                                                        blurRadius: 8,
                                                        offset: Offset(6, 6),
                                                      ),
                                                    ],

                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          20,
                                                        ),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.16),
                          child: Container(
                            key: Contact,
                            // height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: size.height * 0.01),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.connect_without_contact_outlined,
                                    size: 30,
                                    color: Color(0xff7c2824),
                                  ),
                                  SizedBox(width: size.width * 0.03),
                                  Text(
                                    "Contact",
                                    style: TextStyle(
                                      fontFamily: 'font',
                                      fontWeight: FontWeight.bold,

                                      color: Color(0xff7c2824),
                                      fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // height: 650,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.02,
                                  right: size.width * 0.02,
                                  top: size.height * 0.02,
                                  bottom: size.height * 0.02,
                                ),
                                child: Container(
                                  // height: 600,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xff7c2824).withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      right: size.height * 0.00,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Wrap(
                                              alignment: WrapAlignment.center,
                                              spacing: size.width * 0.02,
                                              runSpacing: size.height * 0.02,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: size.width * 0.04,
                                                    right: size.width * 0.04,
                                                    top: size.height * 0.04,
                                                    bottom: size.height * 0.02,
                                                  ),
                                                  child: Container(
                                                    height: 500,
                                                    width: 450,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black
                                                              .withOpacity(0.3),
                                                          spreadRadius: 2,
                                                          blurRadius: 8,
                                                          offset: Offset(6, 6),
                                                        ),
                                                      ],

                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            20,
                                                          ),
                                                    ),
                                                    child: Column(
                                                      // mainAxisAlignment:
                                                      // MainAxisAlignment.spaceEvenly,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: 300,
                                                          child: Column(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      top:
                                                                          size.height *
                                                                          0.04,
                                                                    ),
                                                                child: TextField(
                                                                  decoration: InputDecoration(
                                                                    hintText:
                                                                        'Your Name...',
                                                                    border: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                            15,
                                                                          ),
                                                                    ),
                                                                    prefixIcon: const Icon(
                                                                      Icons
                                                                          .person,
                                                                      color: Color(
                                                                        0xff7c2824,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 300,
                                                          child: Column(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      top:
                                                                          size.height *
                                                                          0.02,
                                                                    ),
                                                                child: TextField(
                                                                  decoration: InputDecoration(
                                                                    hintText:
                                                                        'Your Email...',
                                                                    border: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                            15,
                                                                          ),
                                                                    ),
                                                                    prefixIcon: const Icon(
                                                                      Icons
                                                                          .email_outlined,
                                                                      color: Color(
                                                                        0xff7c2824,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 300,
                                                          child: Column(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      top:
                                                                          size.height *
                                                                          0.02,
                                                                    ),
                                                                child: TextField(
                                                                  decoration: InputDecoration(
                                                                    hintText:
                                                                        'Your Phone Number...',
                                                                    border: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                            15,
                                                                          ),
                                                                    ),
                                                                    prefixIcon: const Icon(
                                                                      Icons
                                                                          .phone,
                                                                      color: Color(
                                                                        0xff7c2824,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          // height: 350,
                                                          width: 300,
                                                          child: Column(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      top:
                                                                          size.height *
                                                                          0.02,
                                                                    ),
                                                                child: TextField(
                                                                  maxLines:
                                                                      null,
                                                                  minLines: 6,
                                                                  decoration: InputDecoration(
                                                                    hintText:
                                                                        'Your Message...',
                                                                    border: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                            15,
                                                                          ),
                                                                    ),
                                                                    prefixIcon: Padding(
                                                                      padding: EdgeInsets.only(
                                                                        bottom:
                                                                            size.height *
                                                                            0.17,
                                                                      ),
                                                                      child: const Icon(
                                                                        Icons
                                                                            .message_outlined,
                                                                        color: Color(
                                                                          0xff7c2824,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(
                                                                  top:
                                                                      size.height *
                                                                      0.06,
                                                                  left:
                                                                      size.width *
                                                                      0.27,
                                                                ),
                                                                child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                      height:
                                                                          40,
                                                                      width:
                                                                          100,
                                                                      decoration: BoxDecoration(
                                                                        color: Color(
                                                                          0xffFDEDCD,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                              40,
                                                                            ),
                                                                      ),
                                                                      child: Center(
                                                                        child: Text(
                                                                          'Send =>',
                                                                          style: TextStyle(
                                                                            fontFamily:
                                                                                'fonts',
                                                                            // fontWeight:
                                                                            //     FontWeight.bold,
                                                                            color: Color(
                                                                              0xff7c2824,
                                                                            ),
                                                                            fontSize:
                                                                                20,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
            ),

            Container(
              child: size.width >= 1028
                  ? Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.16),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                              color: Color(0xff7c2824),
                            ),
                            height: 280,
                            // width: 1210,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: size.width * 0.08,
                                      top: size.height * 0.04,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Quick Link's :",
                                              style: TextStyle(
                                                fontFamily: 'font',
                                                fontWeight: FontWeight.bold,

                                                decoration:
                                                    TextDecoration.underline,
                                                decorationColor: Color(
                                                  0xffFDEDCD,
                                                ),
                                                color: Color(0xffFDEDCD),
                                                fontSize: 18,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start, // left align
                                          children: [
                                            TextButton(
                                              onPressed: () {},
                                              style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                minimumSize: Size(0, 0),
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              child: Text(
                                                '• Home',
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                minimumSize: Size(0, 0),
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              child: Text(
                                                '• About',
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                minimumSize: Size(0, 0),
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              child: Text(
                                                '• Skills',
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                minimumSize: Size(0, 0),
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              child: Text(
                                                '• Education',
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                minimumSize: Size(0, 0),
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              child: Text(
                                                '• Work',
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                minimumSize: Size(0, 0),
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              child: Text(
                                                '• Experience',
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                minimumSize: Size(0, 0),
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              child: Text(
                                                '• Contact',
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: size.width * 0.14,
                                    top: size.height * 0.04,
                                  ),
                                  child: Container(
                                    width: 350,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '$name Potfolio :',

                                              style: TextStyle(
                                                fontFamily: 'font',
                                                fontWeight: FontWeight.bold,

                                                decoration:
                                                    TextDecoration.underline,
                                                decorationColor: Color(
                                                  0xffFDEDCD,
                                                ),
                                                color: Color(0xffFDEDCD),

                                                fontSize: 18,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          // crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: size.width * 0.00,
                                                  right: size.width * 0.07,
                                                  top: size.height * 0.02,
                                                ),
                                                child: Text(
                                                  "Thank you for taking the time to explore my portfolio. I truly appreciate your visit and would love to stay connected. Feel free to reach out or follow me on my social channels, where I share more of my work, ideas, and updates.",
                                                  style: TextStyle(
                                                    fontFamily: 'font',
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(),
                                      ],
                                    ),
                                  ),
                                ),

                                Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: size.width * 0.08,
                                      top: size.height * 0.04,
                                      right: size.width * 0.08,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: size.width * 0.03,
                                            right: size.width * 0.03,
                                            // top: size.height * 0.00,
                                          ),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Contact Info :',
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  fontWeight: FontWeight.bold,

                                                  decoration:
                                                      TextDecoration.underline,
                                                  decorationColor: Color(
                                                    0xffFDEDCD,
                                                  ),
                                                  color: Color(0xffFDEDCD),
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: size.width * 0.03,
                                            right: size.width * 0.03,
                                            top: size.height * 0.01,
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.email_outlined,
                                                size: 18,
                                                color: Color(0xffFDEDCD),
                                              ),
                                              // Text(
                                              //   'Email : ',
                                              //   style: TextStyle(color: Color(0xffFDEDCD)),
                                              // ),
                                              SizedBox(width: 8),
                                              Text(
                                                'kabirmalik328@gmail.com',
                                                style: TextStyle(
                                                  // fontFamily: 'fonts',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: size.width * 0.03,
                                            right: size.width * 0.03,
                                            top: size.height * 0.01,
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.place_outlined,
                                                size: 18,
                                                color: Color(0xffFDEDCD),
                                              ),
                                              // Text(
                                              //   'Place : ',
                                              //   style: TextStyle(color: Color(0xffFDEDCD)),
                                              // ),
                                              SizedBox(width: 8),
                                              Text(
                                                location,
                                                style: TextStyle(
                                                  // fontFamily: 'fonts',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: size.width * 0.03,
                                            right: size.width * 0.03,
                                            top: size.height * 0.01,
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.phone,
                                                size: 18,
                                                color: Color(0xffFDEDCD),
                                              ),
                                              // Text(
                                              //   'Phone Number : ',
                                              //   style: TextStyle(color: Color(0xffFDEDCD)),
                                              // ),
                                              SizedBox(width: 8),

                                              Text(
                                                phone,
                                                style: TextStyle(
                                                  fontFamily: 'fonts',

                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: size.height * 0.02,
                                            left: size.width * 0.04,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            // mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  border: Border.all(
                                                    color: Color(0xffFDEDCD),
                                                    width: 1,
                                                  ),
                                                ),
                                                child: CircleAvatar(
                                                  radius: 15,
                                                  backgroundColor: Color(
                                                    0xff7c2824,
                                                  ),
                                                  child: Image.asset(
                                                    'assets/images/github.png',
                                                    height: 25,
                                                    width: 25,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: size.width * 0.02,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  border: Border.all(
                                                    color: Color(0xffFDEDCD),
                                                    width: 1,
                                                  ),
                                                ),
                                                child: CircleAvatar(
                                                  radius: 15,
                                                  backgroundColor: Color(
                                                    0xff7c2824,
                                                  ),
                                                  child: Image.asset(
                                                    'assets/images/linke.png',
                                                    height: 200,
                                                    width: 200,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.16),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                              color: Color(0xff7c2824),
                            ),
                            // height: 280,
                            // width: 1210,
                            width: double.infinity,
                            child: Wrap(
                              alignment: WrapAlignment.start,
                              spacing: size.width * 0.02,
                              runSpacing: size.height * 0.02,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: size.width * 0.08,
                                    top: size.height * 0.04,
                                  ),
                                  child: Container(
                                    width: 350,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '$name Potfolio :',

                                              style: TextStyle(
                                                fontFamily: 'font',
                                                fontWeight: FontWeight.bold,

                                                decoration:
                                                    TextDecoration.underline,
                                                decorationColor: Color(
                                                  0xffFDEDCD,
                                                ),
                                                color: Color(0xffFDEDCD),

                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          // crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: size.width * 0.00,
                                                  right: size.width * 0.07,
                                                  top: size.height * 0.02,
                                                ),
                                                child: Text(
                                                  "Thank you for taking the time to explore my portfolio. I truly appreciate your visit and would love to stay connected. Feel free to reach out or follow me on my social channels, where I share more of my work, ideas, and updates.",
                                                  style: TextStyle(
                                                    fontFamily: 'font',
                                                    fontSize: 13,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(),
                                      ],
                                    ),
                                  ),
                                ),

                                Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: size.width * 0.05,
                                      top: size.height * 0.02,
                                      right: size.width * 0.08,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: size.width * 0.03,
                                            right: size.width * 0.03,
                                            // top: size.height * 0.00,
                                          ),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Contact Info :',
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  fontWeight: FontWeight.bold,

                                                  decoration:
                                                      TextDecoration.underline,
                                                  decorationColor: Color(
                                                    0xffFDEDCD,
                                                  ),
                                                  color: Color(0xffFDEDCD),
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: size.width * 0.03,
                                            right: size.width * 0.03,
                                            top: size.height * 0.01,
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.email_outlined,
                                                size: 18,
                                                color: Color(0xffFDEDCD),
                                              ),
                                              // Text(
                                              //   'Email : ',
                                              //   style: TextStyle(color: Color(0xffFDEDCD)),
                                              // ),
                                              SizedBox(width: 8),
                                              Text(
                                                email,
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: size.width * 0.03,
                                            right: size.width * 0.03,
                                            top: size.height * 0.01,
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.place_outlined,
                                                size: 18,
                                                color: Color(0xffFDEDCD),
                                              ),
                                              // Text(
                                              //   'Place : ',
                                              //   style: TextStyle(color: Color(0xffFDEDCD)),
                                              // ),
                                              SizedBox(width: 8),
                                              Text(
                                                location,
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: size.width * 0.03,
                                            right: size.width * 0.03,
                                            top: size.height * 0.01,
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.phone,
                                                size: 18,
                                                color: Color(0xffFDEDCD),
                                              ),
                                              // Text(
                                              //   'Phone Number : ',
                                              //   style: TextStyle(color: Color(0xffFDEDCD)),
                                              // ),
                                              SizedBox(width: 8),

                                              Text(
                                                phone,
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: size.height * 0.02,
                                            left: size.width * 0.08,
                                            bottom: size.height * 0.02,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            // mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  border: Border.all(
                                                    color: Color(0xffFDEDCD),
                                                    width: 1,
                                                  ),
                                                ),
                                                child: CircleAvatar(
                                                  radius: 20,
                                                  backgroundColor: Color(
                                                    0xff7c2824,
                                                  ),
                                                  child: Image.asset(
                                                    'assets/images/github.png',
                                                    height: 28,
                                                    width: 28,
                                                  ),
                                                ),
                                              ),

                                              SizedBox(
                                                width: size.width * 0.04,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  border: Border.all(
                                                    // color: Color(0xff7c2824),
                                                    color: Color(0xffFDEDCD),
                                                    width: 1,
                                                  ),
                                                ),
                                                child: CircleAvatar(
                                                  radius: 20,
                                                  backgroundColor: Color(
                                                    0xff7c2824,
                                                  ),
                                                  child: Image.asset(
                                                    'assets/images/linke.png',
                                                    height: 30,
                                                    width: 30,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          thickness: 2,
                                          color: Color(0xffFDEDCD),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            bottom: size.height * 0.04,
                                            top: size.height * 0.01,
                                          ),
                                          child: Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Designed by M.Kabeer & Fiza Noor',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'font',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}