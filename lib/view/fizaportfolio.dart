import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Portfolio extends StatefulWidget {
  final List<Map<String, dynamic>>? cvData;
  const Portfolio({super.key,this.cvData});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final GlobalKey home = GlobalKey();
  final GlobalKey about = GlobalKey();
  final GlobalKey skills = GlobalKey();
  final GlobalKey education = GlobalKey();
  final GlobalKey work = GlobalKey();
  final GlobalKey experience = GlobalKey();
  final GlobalKey contact = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
   String name = widget.cvData?.isNotEmpty == true ? widget.cvData![0]['common']['name'] ?? 'Fiza Noor' : 'Fiza Noor';
String prefix = widget.cvData?.isNotEmpty == true ? widget.cvData![0]['common']['prefix'] ?? "I'm " : "I'm ";
String profession = widget.cvData?.isNotEmpty == true ? widget.cvData![0]['common']['profession'] ?? 'Flutter Developer' : 'Flutter Developer';
String email = widget.cvData?.isNotEmpty == true ? widget.cvData![0]['common']['email'] ?? 'fiza28320@gmail.com' : 'fiza28320@gmail.com';
String phone = widget.cvData?.isNotEmpty == true ? widget.cvData![0]['common']['phone'] ?? '+92 305-433-4454' : '+92 305-433-4454';
String location = widget.cvData?.isNotEmpty == true ? widget.cvData![0]['common']['location'] ?? 'Lahore, Punjab, Pakistan' : 'Lahore, Punjab, Pakistan';
String greetings = widget.cvData?.isNotEmpty == true ? widget.cvData![0]['greetings'] ?? 'Hi!' : 'Hi!';
String intro_line = widget.cvData?.isNotEmpty == true ? widget.cvData![0]['intro_line'] ?? '' : '';
String about_description = widget.cvData?.isNotEmpty == true ? widget.cvData![0]['about_description'] ?? 'I am a dedicated Flutter developer...' : 'I am a dedicated Flutter developer...';
final skillsSection = widget.cvData?[0]['skills_section'] ?? {
  'skills': [
    {"name": "Flutter", "icon": "assets/flutter.png"},
    {"name": "GitHub", "icon": "assets/github.png"},
    {"name": "HTML5", "icon": "assets/html.png"},
    {"name": "CSS3", "icon": "assets/css.png"},
    {"name": "JavaScript", "icon": "assets/js.png"},
    {"name": "Figma", "icon": "assets/figma.png"},
    {"name": "Postman", "icon": "assets/post1.png"},
    {"name": "Visual Studio", "icon": "assets/vs.png"},
    {"name": "Git", "icon": "assets/git.png"}
  ]
};

final educationSection = widget.cvData?.isNotEmpty == true ? 
    widget.cvData![0]['education_section'] ?? {} : {};
List<dynamic> educations = educationSection['education_list'] ?? [
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
];

List<dynamic> skill = skillsSection['skills'] ?? [];
final projectsSection = widget.cvData?.isNotEmpty == true ? 
    widget.cvData![0]['projects_section'] ?? {} : {};
List<dynamic> projects = projectsSection['projects'] ?? [
  {
    "name": "Weather Forecast",
    "description": "A sleek and responsive weather application built in Flutter, leveraging the Provider state management pattern for efficient and reactive UI updates. The app fetches real-time weather data from a reliable API, displaying current conditions, temperature, and forecasts in a clean, user-friendly interface. Features include dynamic weather icons, location-based forecasts, and smooth navigation optimized for both Android and iOS devices. Designed with performance, maintainability, and scalability in mind.",
    "preview_url": "https://fizanoor2005.github.io/Weather_app-preview/",
    "image": "assets/weather.png",
    "technologies": ["Flutter", "Provider", "API"],
    "github_url": "https://github.com/fizanoor2005/WeatherApp"
  },
  {
    "name": "Lootlo",
    "description": "A modern, feature-rich E-commerce application built in Flutter, utilizing the Provider state management pattern for smooth state handling and reactive UI updates. The app delivers an intuitive shopping experience with product browsing, category filtering, detailed product pages, and a fully functional cart and checkout flow. Designed to work with locally managed or preloaded product data, ensuring fast performance without reliance on external APIs. Crafted with responsive layouts and a clean, user-friendly interface for both Android and iOS platforms.",
    "preview_url": "https://fizanoor2005.github.io/Ecommercepreview/",
    "image": "assets/lootlo.png",
    "technologies": ["Flutter", "Provider", "UI/UX"],
    "github_url": "https://github.com/fizanoor2005/Lootlo"
  },
  {
    "name": "Xefag",
    "description": "I created the Xefag UI using Flutter, focusing on a clean, modern, and responsive design. I built reusable widgets for consistency and made the layout adaptive so it looks good on both web and mobile. I used Flutter's rich widget library to design smooth navigation and interactive elements, while following the MVC structure to keep the project well-organized. The goal was to provide a user-friendly interface with smooth performance and an attractive look.",
    "preview_url": "https://fizanoor2005.github.io/Xefagpreview/",
    "image": "assets/xefag.png",
    "technologies": ["Flutter", "MVC", "Responsive Design"],
    "github_url": "https://github.com/fizanoor2005/Xefag"
  },
  {
    "name": "Noza",
    "description": "An intelligent and interactive AI Chatbot application developed in Flutter, powered by the Provider state management pattern for efficient state handling and smooth UI updates. Designed to provide real-time, context-aware responses in a clean and user-friendly chat interface. Features include seamless conversation flow, quick message rendering, and responsive design optimized for both Android and iOS devices. Built with a focus on performance, maintainability, and an engaging user experience.",
    "preview_url": "https://fizanoor2005.github.io/ChatbotAi-preview/",
    "image": "assets/noza.png",
    "technologies": ["Flutter", "Provider", "AI Chatbot"],
    "github_url": "https://github.com/fizanoor2005/Noza"
  }
];
final experienceData = widget.cvData?.isNotEmpty == true ? 
    widget.cvData![0]['experience'] ?? [] : [];
List<dynamic> experiences = experienceData.isNotEmpty ? experienceData : [
  {
    "company": "Devsinn Technologies",
    "companyLogo": "assets/devsinn.png",
    "companyWebsite": "https://www.devsinntechnologies.com/",
    "role": "Flutter Developer",
    "duration": "March 2025 - Present",
    "description": "Developing cross-platform mobile apps using Flutter and Provider. Integrating APIs and building responsive UIs.",
    "technologies_used": ["Flutter", "Provider", "REST APIs"]
  }
];

    return Scaffold(
      // backgroundColor: Colors.white,
      backgroundColor: Colors.white,
      drawerScrimColor: Colors.transparent,

      appBar:
          size.width >= 768
              ? AppBar(
                backgroundColor: Color(0xFF344C36),

                title: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.02,
                        right: size.width * 0.01,
                      ),
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFFAAD1A),
                        child: Image.asset(
                          "assets/fiza1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "font",
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: size.width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          onPressed: () {
                            Scrollable.ensureVisible(
                              home.currentContext!,
                              duration: Duration(milliseconds: 600),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Text(
                            "Home",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: "font",
                            ),
                          ),
                        ),
                        SizedBox(
                          width:
                              size.width >= 912
                                  ? size.width * 0.02
                                  : size.width * 0,
                        ),
                        TextButton(
                          onPressed: () {
                            Scrollable.ensureVisible(
                              about.currentContext!,
                              duration: Duration(milliseconds: 600),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Text(
                            "About",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: "font1",
                            ),
                          ),
                        ),
                        SizedBox(
                          width:
                              size.width >= 912
                                  ? size.width * 0.02
                                  : size.width * 0,
                        ),
                        TextButton(
                          onPressed: () {
                            Scrollable.ensureVisible(
                              skills.currentContext!,
                              duration: Duration(milliseconds: 600),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Text(
                            "Skills",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: "font1",
                            ),
                          ),
                        ),
                        SizedBox(
                          width:
                              size.width >= 912
                                  ? size.width * 0.02
                                  : size.width * 0,
                        ),
                        TextButton(
                          onPressed: () {
                            Scrollable.ensureVisible(
                              education.currentContext!,
                              duration: Duration(milliseconds: 600),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Text(
                            "Education",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: "font1",
                            ),
                          ),
                        ),
                        SizedBox(
                          width:
                              size.width >= 912
                                  ? size.width * 0.02
                                  : size.width * 0,
                        ),

                        TextButton(
                          onPressed: () {
                            Scrollable.ensureVisible(
                              work.currentContext!,
                              duration: Duration(milliseconds: 600),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Text(
                            "Work",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: "font1",
                            ),
                          ),
                        ),
                        // SizedBox(width: 40),
                        // SizedBox(width: size.width*0.02),
                        SizedBox(
                          width:
                              size.width >= 912
                                  ? size.width * 0.02
                                  : size.width * 0,
                        ),

                        TextButton(
                          onPressed: () {
                            Scrollable.ensureVisible(
                              experience.currentContext!,
                              duration: Duration(milliseconds: 600),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Text(
                            "Experience",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,

                              fontFamily: "font1",
                            ),
                          ),
                        ),
                        // SizedBox(width: 40),
                        // SizedBox(width: size.width*0.02),
                        SizedBox(
                          width:
                              size.width >= 912
                                  ? size.width * 0.02
                                  : size.width * 0,
                        ),

                        TextButton(
                          onPressed: () {
                            Scrollable.ensureVisible(
                              contact.currentContext!,
                              duration: Duration(milliseconds: 600),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Text(
                            "Contact",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: "font1",
                            ),
                          ),
                        ),

                        // SizedBox(width: 80),
                      ],
                    ),
                  ),
                ],
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(0),
                  child: Container(color: Color(0xFFFAAD1A), height: 1),
                ),
              )
              : AppBar(
                backgroundColor: Color(0xFF344C36),

                title: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.02,
                        right: size.width * 0.01,
                      ),
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFFAAD1A),
                        child: Image.asset(
                          "assets/fiza1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "font1",
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                actions: [
                  Builder(
                    builder: (context) {
                      return InkWell(
                        // hoverColor: Colors.amber,
                        // splashColor: Colors.blue,
                        onTap: () {
                          Scaffold.of(context).openEndDrawer();
                        },
                        child: Icon(Icons.menu, color: Color(0xFFFAAD1A)),
                      );
                    },
                  ),
                  SizedBox(width: size.width * 0.05),
                ],
              ),

      endDrawer: Padding(
        padding: const EdgeInsets.only(top: kToolbarHeight),

        child: Drawer(
          child: Container(
            color: Color(0xFF344C36),
            child: ListView(
              children: [
                ListTile(
                  title: Text(
                    "Home",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Scrollable.ensureVisible(
                      home.currentContext!,
                      duration: Duration(milliseconds: 600),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
                Divider(color: Color(0xFFFAAD1A)),

                ListTile(
                  title: Text(
                    "About",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Scrollable.ensureVisible(
                      about.currentContext!,
                      duration: Duration(milliseconds: 600),
                      curve: Curves.easeInOut,
                    );
                  },
                  splashColor: Color(0xFFFAAD1A),
                ),
                Divider(color: Color(0xFFFAAD1A)),

                ListTile(
                  title: Text(
                    "Skills",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Scrollable.ensureVisible(
                      skills.currentContext!,
                      duration: Duration(milliseconds: 600),
                      curve: Curves.easeInOut,
                    );
                  },
                  splashColor: Color(0xFFFAAD1A),
                ),
                Divider(color: Color(0xFFFAAD1A)),

                ListTile(
                  title: Text(
                    "Education",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Scrollable.ensureVisible(
                      education.currentContext!,
                      duration: Duration(milliseconds: 600),
                      curve: Curves.easeInOut,
                    );
                  },
                  splashColor: Color(0xFFFAAD1A),
                ),
                Divider(color: Color(0xFFFAAD1A)),

                ListTile(
                  title: Text(
                    "Work",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Scrollable.ensureVisible(
                      work.currentContext!,
                      duration: Duration(milliseconds: 600),
                      curve: Curves.easeInOut,
                    );
                  },
                  splashColor: Color(0xFFFAAD1A),
                ),
                Divider(color: Color(0xFFFAAD1A)),

                ListTile(
                  title: Text(
                    "Experience",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Scrollable.ensureVisible(
                      experience.currentContext!,
                      duration: Duration(milliseconds: 600),
                      curve: Curves.easeInOut,
                    );
                  },
                  splashColor: Color(0xFFFAAD1A),
                ),
                Divider(color: Color(0xFFFAAD1A)),

                ListTile(
                  title: Text(
                    "Contact",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Scrollable.ensureVisible(
                      contact.currentContext!,
                      duration: Duration(milliseconds: 600),
                      curve: Curves.easeInOut,
                    );
                  },
                  // tileColor:  Color(0xFF344C36),
                  splashColor: Color(0xFFFAAD1A),
                  // hoverColor: Color(0xFFFAAD1A) ,
                ),
              ],
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.05),
              child: Column(
                children: [
                  Container(
                    key: home,
                    height: size.height * 0.90,
                    width: double.infinity,
                    color: Colors.white,
                    child:
                        size.width >= 768
                            ? Row(
                              children: [
                                Container(
                                  height: size.height * 0.90,
                                  width: size.width * 0.50,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left:
                                          size.width >= 500
                                              ? size.width * 0.10
                                              : size.width * 0.02,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          greetings,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 50,
                                            fontFamily: "font",
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                             prefix,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize:
                                                    size.width >= 1030
                                                        ? 60
                                                        : 50,
                                                fontFamily: "font",
                                              ),
                                            ),
                                            Text(
                                              name,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize:
                                                    size.width > 1030
                                                        ? size.width > 830
                                                            ? 60
                                                            : 50
                                                        : 50,
                                                color: Color(0xFFFAAD1A),

                                                fontFamily: "font1",
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          profession,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                                size.width > 1030 ? 60 : 30,
                                            fontFamily: "font",
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 20,
                                            bottom: 20,
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              launchUrl(
                                                Uri.parse(
                                                  "https://drive.google.com/file/d/1s7qm8xsnB2oVNFLlGNcNFZ669fEobLZ2/view?usp=drive_link",
                                                ),
                                              );
                                            },
                                            child: Container(
                                              height: 40,
                                              width: 200,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF344C36),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5),
                                                  bottomLeft: Radius.circular(
                                                    5,
                                                  ),
                                                  bottomRight: Radius.circular(
                                                    5,
                                                  ),
                                                ),
                                                border: Border.all(
                                                  color: Color(0xFF344C36),
                                                  width: 2,
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Download Resume",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: "font",
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(left: 40),
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  launchUrl(
                                                    Uri.parse(
                                                      "https://github.com/fizanoor2005",
                                                    ),
                                                  );
                                                },
                                                child: Container(
                                                  height: 50,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                    // color: Colors.blue,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          50,
                                                        ),
                                                    // color: Colors.blue,
                                                    border: Border.all(
                                                      color: Color(0xFFFAAD1A),
                                                    ),
                                                  ),

                                                  child: Image.asset(
                                                    "assets/github.png",
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                              InkWell(
                                                onTap: () {
                                                  launchUrl(
                                                    Uri.parse(
                                                      "https://www.linkedin.com/in/fizanoor/",
                                                    ),
                                                  );
                                                },

                                                child: Container(
                                                  height: 50,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                    // color: Colors.blue,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          50,
                                                        ),
                                                    border: Border.all(
                                                      color: Color(0xFFFAAD1A),
                                                    ),
                                                  ),
                                                  child: Image.asset(
                                                    "assets/linkedn1.png",
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

                                Expanded(
                                  child: Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Color(0xFF344C36),
                                          width: 3,
                                        ),
                                      ),
                                      height: size.width >= 870 ? 270 : 180,
                                      width: size.width >= 870 ? 270 : 180,
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xFFFAAD1A),
                                        // Image.asset("assets/github.png"),
                                        backgroundImage: AssetImage(
                                          "assets/fiza1.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                            : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: size.height * 0.90,
                                  width: size.width * 0.90,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: size.width * 0.10,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Hi!",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30,
                                            fontFamily: "font",
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "I'm ",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 40,
                                                fontFamily: "font",
                                              ),
                                            ),
                                            Text(
                                              name,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 40,
                                                color: Color(0xFFFAAD1A),
                                                fontFamily: "font1",
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "Flutter Developer",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30,
                                            fontFamily: "font",
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 20,
                                            bottom: 20,
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              launchUrl(
                                                Uri.parse(
                                                  "https://drive.google.com/file/d/1s7qm8xsnB2oVNFLlGNcNFZ669fEobLZ2/view?usp=drive_link",
                                                ),
                                              );
                                            },
                                            child: Container(
                                              height: 40,
                                              width: 200,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF344C36),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color(
                                                      0xFF344C36,
                                                    ).withOpacity(0.3),
                                                    spreadRadius: 2,
                                                    blurRadius: 6,
                                                  ),
                                                ],

                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5),
                                                  bottomLeft: Radius.circular(
                                                    5,
                                                  ),
                                                  bottomRight: Radius.circular(
                                                    5,
                                                  ),
                                                ),
                                                border: Border.all(
                                                  color: Color(0xFF344C36),
                                                  width: 2,
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Download Resume",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: "font1",
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(left: 40),
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  launchUrl(
                                                    Uri.parse(
                                                      "https://github.com/fizanoor2005",
                                                    ),
                                                  );
                                                },
                                                child: Container(
                                                  height: 50,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                    // color: Colors.blue,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          50,
                                                        ),
                                                    // color: Colors.blue,
                                                    border: Border.all(
                                                      color: Color(0xFFFAAD1A),
                                                    ),
                                                  ),

                                                  child: Image.asset(
                                                    "assets/github.png",
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                              InkWell(
                                                onTap: () {
                                                  launchUrl(
                                                    Uri.parse(
                                                      "https://www.linkedin.com/in/fizanoor/",
                                                    ),
                                                  );
                                                },

                                                child: Container(
                                                  height: 50,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                    // color: Colors.blue,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          50,
                                                        ),
                                                    border: Border.all(
                                                      color: Color(0xFFFAAD1A),
                                                    ),
                                                  ),
                                                  child: Image.asset(
                                                    "assets/linkedn1.png",
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: 30,
                                            top: 50,
                                            left: 20,
                                          ),
                                          child: Container(
                                            height: 200,
                                            width: 200,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: Color(0xFF344C36),
                                                width: 3,
                                              ),
                                            ),
                                            child: CircleAvatar(
                                              backgroundColor: Color(
                                                0xFFFAAD1A,
                                              ),
                                              // Image.asset("assets/github.png"),
                                              backgroundImage: AssetImage(
                                                "assets/fiza1.png",
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

            Container(
              // height: size.height * 0.99,
              width: double.infinity,
              color: Colors.grey[200],
              child:
                  size.width >= 914
                      ? Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: size.height * 0.05,
                              bottom: size.height * 0.05,
                            ),
                            child: Container(
                              key: about,
                              color: Colors.grey[200],
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.person,
                                    size: 50,
                                    color: Color(0xFF344C36),
                                  ),
                                  Text(
                                    " About ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 50,
                                      color: Color(0xFF344C36),
                                      fontFamily: "font",
                                    ),
                                  ),
                                  Text(
                                    "Me",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 50,
                                      color: Color(0xFFFAAD1A),
                                      fontFamily: "font",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 40,
                                      right: 40,
                                      bottom: 40,
                                    ),
                                    child: Container(
                                      height: size.height * 0.70,
                                      width: size.width * 0.30,
                                      color: Color(0xFF344C36),
                                      child: Image.asset(
                                        "assets/fiza1.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),

                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 10,
                                        right: 80,
                                      ),
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "I'm $name",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Color(0xFFFAAD1A),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,

                                            child: Text(
                                              profession,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Color(0xFFFAAD1A),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 20),
                                          Column(
                                            children: [
                                              Text(
                                                // "I am a dedicated Flutter developer with a passion for building modern, high-quality mobile applications that deliver smooth performance and great user experiences. With expertise in creating cross-platform apps for both Android and iOS, I focus on writing clean, maintainable code and implementing responsive, visually appealing designs. My skill set includes working with state management solutions, integrating REST APIs, optimizing app performance, and following best practices for scalability and maintainability. I enjoy turning ideas into functional products, solving complex problems with efficient solutions, and continuously learning new tools and technologies to improve my work. My goal is to create applications that are not only functional but also intuitive, engaging, and impactful for end users.",
                                                about_description,
                                                style: TextStyle(fontSize: 16),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 20),
                                          Row(
                                            children: [
                                              Text(
                                                "Email: ",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color(0xFFFAAD1A),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                // "fiza28320@gmail.com",
                                                email,
                                                style: TextStyle(fontSize: 16),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10),

                                          Row(
                                            children: [
                                              Text(
                                                "Place: ",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color(0xFFFAAD1A),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                // "Lahore, Punjab, Pakistan",
                                                location,
                                                style: TextStyle(fontSize: 16),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10),

                                          Row(
                                            children: [
                                              Text(
                                                "Phone Number: ",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color(0xFFFAAD1A),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                // "+92 305-433-4454",
                                                phone,
                                                style: TextStyle(fontSize: 16),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: size.height * 0.05),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                      : Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: size.height * 0.03,
                              bottom: size.height * 0.05,
                            ),
                            child: Container(
                              key: about,
                              color: Colors.grey[200],
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.person,
                                    size: 50,
                                    color: Color(0xFF344C36),
                                  ),
                                  Text(
                                    " About ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 50,
                                      color: Color(0xFF344C36),
                                      fontFamily: "font",
                                    ),
                                  ),
                                  Text(
                                    "Me",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 50,
                                      color: Color(0xFFFAAD1A),
                                      fontFamily: "font",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            // height: size.height*0.5,
                            // width: double.infinity,
                            color: Colors.grey[200],
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: size.height * 0.30,
                                  width: size.width * 0.40,
                                  color: Color(0xFF344C36),
                                  child: Image.asset(
                                    "assets/fiza1.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 15,
                                    right: 15,
                                    top: 25,
                                  ),
                                  child: Container(
                                    // height:size.height*0.80,
                                    // width: double.infinity,
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "I'm $name",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Color(0xFF344C36),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,

                                          child: Text(
                                            // 
                                            profession,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Color(0xFF344C36),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Column(
                                          children: [
                                            Text(
                                              // "I am a dedicated Flutter developer with a passion for building modern, high-quality mobile applications that deliver smooth performance and great user experiences. With expertise in creating cross-platform apps for both Android and iOS, I focus on writing clean, maintainable code and implementing responsive, visually appealing designs.I use Provider for state management, SharedPreferences for local storage, and follow the MVC architecture for better structure. I also work with REST APIs, use Git and GitHub for version control, and keep learning new tools to improve my skills.I enjoy turning ideas into functional products, solving complex problems with efficient solutions, and continuously learning new tools and technologies to improve my work. My goal is to create applications that are not only functional but also intuitive, engaging, and impactful for end users.",
                                             about_description,
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          children: [
                                            Text(
                                              "Email: ",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFF344C36),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              // "fiza28320@gmail.com",
                                              email,
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 3),

                                        Row(
                                          children: [
                                            Text(
                                              "Place: ",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFF344C36),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              // "Lahore, Punjab, Pakistan",
                                              location,
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 3),

                                        Row(
                                          children: [
                                            Text(
                                              "Phone Number: ",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFF344C36),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              // "+92 305-433-4454",
                                              phone,
                                              style: TextStyle(fontSize: 10),
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
                          //  SizedBox(height: 10,),
                          SizedBox(height: size.height * 0.05),
                        ],
                      ),
            ),

            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: size.height * 0.05,
                    bottom: size.height * 0.05,
                  ),
                  child: Container(
                    key: skills,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.laptop, size: 60),
                        Text(
                          " Skills &",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Color(0xFF344C36),
                            fontFamily: "font",
                          ),
                        ),
                        Text(
                          " Course",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Color(0xFFFAAD1A),
                            fontFamily: "font",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child:
                      size.width >= 900
                          ? Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.05,
                                  right: size.width * 0.05,
                                ),
                                child: Container(
                                  width: size.width * 0.50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF344C36),
                                    border: Border.all(
                                      color: Color(0xFF344C36),
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),

                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 30,
                                          bottom: 30,
                                        ),
                                      child:
                                     Wrap(
  alignment: WrapAlignment.spaceAround,
  spacing: 20,
  runSpacing: 20,
  children: skill.map<Widget>((s) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // CircleAvatar(
          //   radius: 30,
          //   backgroundColor: Colors.white,
          //   child: s['icon'] != null
          //       ? Image.asset(
          //           s['icon'],
          //           height: 30,
          //           width: 30,
          //         )
          //       : SizedBox(),
          // ),
         
          Center(child: Text(s['name'] ?? "")),
        ],
      ),
    );
  }).toList(),
)
  ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.05,
                                  right: size.width * 0.05,
                                ),
                                child: Container(
                                  height: size.height * 0.70,
                                  width: size.width * 0.30,

                                  // color: Colors.amber,
                                  child: Image.asset(
                                    "assets/image1.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              SizedBox(height: size.height * 0.05),
                            ],
                          )
                          : Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.05,
                                  right: size.width * 0.05,
                                ),
                                child: Container(
                                  // height: size.height*0.78,
                                  width: size.width * 0.90,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF344C36),
                                    border: Border.all(
                                      color: Color(0xFF344C36),
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),

                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 30,
                                          bottom: 30,
                                        ),
                                          child: Wrap(
  alignment: WrapAlignment.spaceAround,
  spacing: 20,
  runSpacing: 20,
  children: skill.map<Widget>((s) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // CircleAvatar(
          //   radius: 30,
          //   backgroundColor: Colors.white,
          //   child: s['icon'] != null
          //       ? Image.asset(
          //           s['icon'],
          //           height: 30,
          //           width: 30,
          //         )
          //       : SizedBox(),
          // ),
         
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Text(s['name'] ?? "")),
            ],
          ),
        ],
      ),
    );
  }).toList(),
),
  
                                         ),
                                      Row(),
                                      Row(),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                ),
                SizedBox(height: size.height * 0.05),
              ],
            ),
           Container(
  color: Colors.grey[200],
  child: Column(
    children: [
      Padding(
        padding: EdgeInsets.only(
          top: size.height * 0.05,
          bottom: size.height * 0.05,
        ),
        child: Container(
          key: education,
          color: Colors.grey[200],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.school_sharp,
                size: 60,
                color: Color(0xFF344C36),
              ),
              Text(
                " My ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Color(0xFF344C36),
                  fontFamily: "font",
                ),
              ),
              Text(
                "Education ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Color(0xFFFAAD1A),
                  fontFamily: "font",
                ),
              ),
            ],
          ),
        ),
      ),

      Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Container(
          color: Colors.grey[200],
          child: Wrap(
            alignment: WrapAlignment.spaceAround,
            spacing: 40,
            runSpacing: 40,
            children: educations.map<Widget>((education) {
              return Container(
                height: size.width >= 390 ? 380 : 400,
                width: size.width >= 375 ? 352 : 330,
                decoration: BoxDecoration(
                  color: Color(0xFF344C36),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: Color(0xFF344C36)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 250,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        image: DecorationImage(
                          image: AssetImage(education['image'] ?? "assets/uni.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.width >= 375 ? 10 : 7,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              education['level'] ?? "BSCS",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: size.width >= 375 ? 20 : 14,
                                color: Color(0xFFFAAD1A),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.width >= 375 ? 10 : 7,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              education['years'] ?? "2022-2026",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: size.width >= 375 ? 20 : 14,
                                color: Color(0xFFFAAD1A),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.width >= 375 ? 10 : 7,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              education['institution'] ?? "Lahore College for Women University",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: size.width >= 375 ? 20 : 14,
                                color: Color(0xFFFAAD1A),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
      SizedBox(height: size.height * 0.05),
    ],
  ),
),
Column(
  children: [
    Padding(
      padding: EdgeInsets.only(
        top: size.height * 0.05,
        bottom: size.height * 0.05,
      ),
      child: Container(
        key: work,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.laptop, size: 60, color: Color(0xFF344C36)),
            Text(
              " Projects ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Color(0xFF344C36),
                fontFamily: "font",
              ),
            ),
            Text(
              "Made ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Color(0xFFFAAD1A),
                fontFamily: "font",
              ),
            ),
          ],
        ),
      ),
    ),

    Padding(
      padding: EdgeInsets.only(
        left: size.width * 0.05,
        right: size.width * 0.05,
      ),
      child: Container(
        child: Wrap(
          alignment: WrapAlignment.spaceAround,
          spacing: 40,
          runSpacing: 40,
          children: projects.map<Widget>((project) {
            return InkWell(
              onTap: () {},
              child: Container(
                height: size.width >= 400 ? 450 : 480,
                width: 420,
                decoration: BoxDecoration(
                  color: Color(0xFF344C36),
                  border: Border.all(color: Color(0xFF344C36)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.02,
                    right: size.width * 0.02,
                    top: size.height * 0.02,
                    bottom: size.height * 0.02,
                  ),
                  child: Column(
                    children: [
                      Text(
                        project['name'] ?? "Project Name",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color(0xFFFAAD1A),
                          fontFamily: "font1",
                        ),
                      ),
                      SizedBox(height: size.height * 0.02),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Text(
                            project['description'] ?? "Project description",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.02,
                        ),
                        child: Container(
                          height: 40,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            border: Border.all(
                              color: Color(0xFFFAAD1A),
                            ),
                          ),
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                launchUrl(
                                  Uri.parse(
                                    project['preview_url'] ?? "https://example.com",
                                  ),
                                );
                              },
                              child: Text(
                                "View",
                                style: TextStyle(
                                  color: Color(0xFFFAAD1A),
                                  fontFamily: "font1",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    ),
  ],
),

Padding(
  padding: EdgeInsets.only(top: 30),
  child: Container(
    color: Colors.grey[200],
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.05,
            bottom: size.height * 0.05,
          ),
          child: Container(
            key: experience,
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.work,
                  size: 60,
                  color: Color(0xFF344C36),
                ),
                Text(
                  " Experience ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Color(0xFF344C36),
                    fontFamily: "font",
                  ),
                ),
              ],
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.05,
            right: size.width * 0.05,
          ),
          child: Container(
            child: Wrap(
              alignment: WrapAlignment.spaceAround,
              spacing: 40,
              runSpacing: 40,
              children: experiences.map<Widget>((exp) {
                return Container(
                  width: size.width >= 900 ? 810 : size.width * 0.90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                    border: Border.all(color: Color(0xFF344C36)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 2,
                        offset: Offset(2, 4),
                      ),
                    ],
                  ),
                  child: size.width >= 900
                      ? Row(
                          children: [
                            Container(
                              height: 250,
                              width: 300,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                      exp['companyLogo'] ?? "assets/devsinn.png",
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  InkWell(
                                    onTap: () {
                                      launchUrl(
                                        Uri.parse(
                                          exp['companyWebsite'] ?? "https://www.devsinntechnologies.com/",
                                        ),
                                      );
                                    },
                                    child: Tooltip(
                                      message: "View ${exp['company'] ?? 'Company'} Website",
                                      child: Text(
                                        exp['company'] ?? "Devsinn Technologies",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.blue,
                                          fontFamily: "font1",
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 250,
                              width: 500,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      exp['role'] ?? "Flutter Developer",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Color(0xFFFAAD1A),
                                        fontFamily: "font1",
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      exp['duration'] ?? "March 2025 - Present",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Color(0xFFFAAD1A),
                                        fontFamily: "font1",
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: size.width * 0.05,
                                      top: size.height * 0.02,
                                    ),
                                    child: Text(
                                      exp['description'] ?? "Developed cross-platform mobile apps using Flutter with Provider for state management. Designed clean, responsive UIs in collaboration with the design team. Integrated APIs to display and manage real-time data. Focused on creating fast, user-friendly apps for Android and iOS.",
                                      style: TextStyle(
                                        color: Color(0xFF344C36),
                                        fontFamily: "font1",
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      : Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: CircleAvatar(
                                  radius: 60,
                                  backgroundColor: Color(0xFF344C36),
                                  backgroundImage: AssetImage(
                                    exp['companyLogo'] ?? "assets/devsinn.png",
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              InkWell(
                                onTap: () {
                                  launchUrl(
                                    Uri.parse(
                                      exp['companyWebsite'] ?? "https://www.devsinntechnologies.com/",
                                    ),
                                  );
                                },
                                child: Tooltip(
                                  message: "View ${exp['company'] ?? 'Company'} Website",
                                  child: Text(
                                    exp['company'] ?? "Devsinn Technologies",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.05,
                                  right: size.width * 0.05,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 20),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        exp['role'] ?? "Flutter Developer",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Color(0xFFFAAD1A),
                                          fontFamily: "font1",
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        exp['duration'] ?? "March 2025 - Present",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Color(0xFFFAAD1A),
                                          fontFamily: "font1",
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: size.width * 0.05,
                                        top: size.height * 0.02,
                                        bottom: size.height * 0.02,
                                      ),
                                      child: Text(
                                        exp['description'] ?? "Developed cross-platform mobile apps using Flutter with Provider for state management. Designed clean, responsive UIs in collaboration with the design team. Integrated APIs to display and manage real-time data. Focused on creating fast, user-friendly apps for Android and iOS.",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: size.height * 0.05),
                            ],
                          ),
                        ),
                );
              }).toList(),
            ),
          ),
        ),
        SizedBox(height: size.height * 0.05),
      ],
    ),
  ),
),
              SizedBox(height: 30),
            Container(
              child: Column(
                children: [
                  Container(
                    key: contact,
                    color: Colors.white,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.headphones, size: 60),
                        Text(
                          " Get in ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Color(0xFF344C36),
                          ),
                        ),
                        Text(
                          "Touch",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Color(0xFFFAAD1A),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.05),
                    child:
                        size.width >= 900
                            ? Container(
                              height: size.height * 0.80,
                              width: double.infinity,

                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: size.width * 0.10,
                                    ),
                                    child: Container(
                                      height: size.height * 0.80,
                                      width: size.width * 0.40,
                                      // color: Colors.amber,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF344C36),
                                        border: Border.all(
                                          color: Color(0xFF344C36),
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomLeft: Radius.circular(20),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage("assets/login.jpg"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: size.width * 0.10,
                                    ),
                                    child: Container(
                                      height: size.height * 0.80,
                                      width: size.width * 0.40,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF344C36),
                                        border: Border.all(
                                          color: Color(0xFF344C36),
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                        ),
                                      ),
                                      // color: Color(0xFF344C36),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: size.width * 0.03,
                                          right: size.width * 0.03,
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 20),

                                            SizedBox(
                                              width: 400,
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          10,
                                                        ),
                                                  ),
                                                  prefixIcon: Icon(
                                                    Icons.person,
                                                    color: Color(0xFFFAAD1A),
                                                  ),
                                                  hintText: " Name",
                                                  filled: true,
                                                  fillColor: Colors.white,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              10,
                                                            ),
                                                        borderSide: BorderSide(
                                                          color: Colors.black,
                                                        ),
                                                      ),

                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              10,
                                                            ),

                                                        borderSide: BorderSide(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 30),

                                            SizedBox(
                                              width: 400,

                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          10,
                                                        ),
                                                  ),
                                                  prefixIcon: Icon(
                                                    Icons.email,
                                                    color: Color(0xFFFAAD1A),
                                                  ),
                                                  hintText: " Email",
                                                  filled: true,
                                                  fillColor: Colors.white,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              10,
                                                            ),

                                                        borderSide: BorderSide(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              10,
                                                            ),
                                                        borderSide: BorderSide(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 30),

                                            SizedBox(
                                              width: 400,

                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          10,
                                                        ),
                                                  ),
                                                  prefixIcon: Icon(
                                                    Icons.call,
                                                    color: Color(0xFFFAAD1A),
                                                  ),
                                                  hintText: " Phone",
                                                  filled: true,
                                                  fillColor: Colors.white,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              10,
                                                            ),
                                                        borderSide: BorderSide(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              10,
                                                            ),
                                                        borderSide: BorderSide(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 30),

                                            SizedBox(
                                              width: 400,

                                              child: TextField(
                                                maxLines: 5,
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          10,
                                                        ),
                                                  ),
                                                  // prefixIcon: Icon(Icons.message),
                                                  hintText: " Message",
                                                  filled: true,
                                                  fillColor: Colors.white,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              10,
                                                            ),
                                                        borderSide: BorderSide(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              10,
                                                            ),
                                                        borderSide: BorderSide(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 20),
                                            Container(
                                              height: 35,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFFAAD1A),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(20),
                                                ),
                                                border: Border.all(
                                                  color: Color(0xFFFAAD1A),
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Submit",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                            : Container(
                              // height:  size.height*0.80,
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    //  height:  size.width>=482?size.height*0.80:size.height*0.70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      color: Color(0xFF344C36),
                                    ),
                                    width:
                                        size.width >= 482
                                            ? size.width * 0.70
                                            : size.width * 0.90,
                                    // color:  Color(0xFF344C36),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: size.width * 0.03,
                                        right: size.width * 0.03,
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 20),

                                          SizedBox(
                                            width: 400,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                prefixIcon: Icon(
                                                  Icons.person,
                                                  color: Color(0xFFFAAD1A),
                                                ),
                                                hintText: " Name",
                                                filled: true,
                                                fillColor: Colors.white,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            10,
                                                          ),
                                                      borderSide: BorderSide(
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            10,
                                                          ),
                                                      borderSide: BorderSide(
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 30),

                                          SizedBox(
                                            width: 400,

                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                prefixIcon: Icon(
                                                  Icons.email,
                                                  color: Color(0xFFFAAD1A),
                                                ),
                                                hintText: " Email",
                                                filled: true,
                                                fillColor: Colors.white,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            10,
                                                          ),
                                                      borderSide: BorderSide(
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            10,
                                                          ),
                                                      borderSide: BorderSide(
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 30),

                                          SizedBox(
                                            width: 400,

                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                prefixIcon: Icon(
                                                  Icons.call,
                                                  color: Color(0xFFFAAD1A),
                                                ),
                                                hintText: " Phone",
                                                filled: true,
                                                fillColor: Colors.white,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            10,
                                                          ),
                                                      borderSide: BorderSide(
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            10,
                                                          ),
                                                      borderSide: BorderSide(
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 30),

                                          SizedBox(
                                            width: 400,

                                            child: TextField(
                                              maxLines: 5,
                                              decoration: InputDecoration(
                                                // prefixIcon: Icon(Icons.message),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                hintText: " Message",
                                                filled: true,
                                                fillColor: Colors.white,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            10,
                                                          ),
                                                      borderSide: BorderSide(
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            10,
                                                          ),
                                                      borderSide: BorderSide(
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 20),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 10,
                                              bottom: 10,
                                            ),
                                            child: Container(
                                              height: 40,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFFAAD1A),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(20),
                                                ),
                                                border: Border.all(
                                                  color: Color(0xFF344C36),
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Submit",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
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
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Container(
              child:
                  size.width >= 768
                      ? Container(
                        // height: size.height*0.50,
                        color: Color(0xFF344C36),
                        child: Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 20),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.05,
                                  right: size.width * 0.05,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Quick Links",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFFAAD1A),
                                          fontFamily: "font",
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Scrollable.ensureVisible(
                                          home.currentContext!,
                                          duration: Duration(milliseconds: 600),
                                          curve: Curves.easeInOut,
                                        );
                                      },
                                      child: Text(
                                        "Home",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: "font1",
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),

                                    TextButton(
                                      onPressed: () {
                                        Scrollable.ensureVisible(
                                          about.currentContext!,
                                          duration: Duration(milliseconds: 600),
                                          curve: Curves.easeInOut,
                                        );
                                      },
                                      child: Text(
                                        "About",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: "font1",
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),

                                    TextButton(
                                      onPressed: () {
                                        Scrollable.ensureVisible(
                                          skills.currentContext!,
                                          duration: Duration(milliseconds: 600),
                                          curve: Curves.easeInOut,
                                        );
                                      },
                                      child: Text(
                                        "Skills",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: "font1",
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),

                                    TextButton(
                                      onPressed: () {
                                        Scrollable.ensureVisible(
                                          education.currentContext!,
                                          duration: Duration(milliseconds: 600),
                                          curve: Curves.easeInOut,
                                        );
                                      },
                                      child: Text(
                                        "Education",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: "font1",
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Scrollable.ensureVisible(
                                          education.currentContext!,
                                          duration: Duration(milliseconds: 600),
                                          curve: Curves.easeInOut,
                                        );
                                      },
                                      child: Text(
                                        "Work",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: "font1",
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Scrollable.ensureVisible(
                                          education.currentContext!,
                                          duration: Duration(milliseconds: 600),
                                          curve: Curves.easeInOut,
                                        );
                                      },
                                      child: Text(
                                        "Experience",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: "font1",
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Scrollable.ensureVisible(
                                          education.currentContext!,
                                          duration: Duration(milliseconds: 600),
                                          curve: Curves.easeInOut,
                                        );
                                      },
                                      child: Text(
                                        "Contact",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: "font1",
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right: size.width * 0.05,
                                    left: size.width * 0.05,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 350,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "$name's Portfolio",
                                              style: TextStyle(
                                                color: Color(0xFFFAAD1A),
                                                fontFamily: "font",
                                                fontSize: 20,
                                              ),
                                            ),
                                            Text(
                                              "Thank you for visiting my portfolio!I truly appreciate your time and interest in my work.If you’d like to collaborate, share feedback, or discuss an opportunity, feel free to reach out — I’d love to connect with you!",
                                              style: TextStyle(
                                                fontSize:
                                                    size.width >= 844 ? 20 : 14,
                                                color: Colors.white,
                                                fontFamily: "font1",
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  right: size.width * 0.05,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Text(
                                      "Conatct Info",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xFFFAAD1A),
                                        fontFamily: "font",
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.call,
                                          color: Color(0xFFFAAD1A),
                                        ),
                                        Text(
                                          phone,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: "font1",
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.mail,
                                          color: Color(0xFFFAAD1A),
                                        ),
                                        Text(
                                          email,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: "font1",
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: Color(0xFFFAAD1A),
                                        ),
                                        Text(
                                          location,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: "font1",
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 15),
                                      child: Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              launchUrl(
                                                Uri.parse(
                                                  "https://github.com/fizanoor2005",
                                                ),
                                              );
                                            },
                                            child: Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                // color: Colors.blue,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                // color: Colors.blue,
                                                border: Border.all(
                                                  color: Color(0xFFFAAD1A),
                                                ),
                                              ),

                                              child: Image.asset(
                                                "assets/github.png",
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 20),
                                          InkWell(
                                            onTap: () {
                                              launchUrl(
                                                Uri.parse(
                                                  "https://www.linkedin.com/in/fizanoor/",
                                                ),
                                              );
                                            },

                                            child: Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                // color: Colors.blue,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                border: Border.all(
                                                  color: Color(0xFFFAAD1A),
                                                ),
                                              ),
                                              child: Image.asset(
                                                "assets/linkedn1.png",
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(thickness: 2, color: Colors.black),
                            ],
                          ),
                        ),
                      )
                      : Container(
                        // height: size.height*0.99,
                        color: Color(0xFF344C36),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.05,
                            left: size.width * 0.05,
                            right: size.width * 0.05,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: size.height * 0.02,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Quick Links",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFFAAD1A),
                                          fontFamily: "font",
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Scrollable.ensureVisible(
                                          home.currentContext!,
                                          duration: Duration(milliseconds: 600),
                                          curve: Curves.easeInOut,
                                        );
                                      },
                                      child: Text(
                                        "Home",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: "font1",
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),

                                    TextButton(
                                      onPressed: () {
                                        Scrollable.ensureVisible(
                                          about.currentContext!,
                                          duration: Duration(milliseconds: 600),
                                          curve: Curves.easeInOut,
                                        );
                                      },
                                      child: Text(
                                        "About",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: "font1",
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),

                                    TextButton(
                                      onPressed: () {
                                        Scrollable.ensureVisible(
                                          skills.currentContext!,
                                          duration: Duration(milliseconds: 600),
                                          curve: Curves.easeInOut,
                                        );
                                      },
                                      child: Text(
                                        "Skills",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: "font1",
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),

                                    TextButton(
                                      onPressed: () {
                                        Scrollable.ensureVisible(
                                          education.currentContext!,
                                          duration: Duration(milliseconds: 600),
                                          curve: Curves.easeInOut,
                                        );
                                      },
                                      child: Text(
                                        "Education",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: "font1",
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Scrollable.ensureVisible(
                                          education.currentContext!,
                                          duration: Duration(milliseconds: 600),
                                          curve: Curves.easeInOut,
                                        );
                                      },
                                      child: Text(
                                        "Work",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: "font1",
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Scrollable.ensureVisible(
                                          education.currentContext!,
                                          duration: Duration(milliseconds: 600),
                                          curve: Curves.easeInOut,
                                        );
                                      },
                                      child: Text(
                                        "Experience",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: "font1",
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Scrollable.ensureVisible(
                                          education.currentContext!,
                                          duration: Duration(milliseconds: 600),
                                          curve: Curves.easeInOut,
                                        );
                                      },
                                      child: Text(
                                        "Contact",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: "font1",
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.03,
                                  right: size.width * 0.05,
                                  bottom: size.height * 0.02,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      // height: 500,
                                      // width: 350,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "$name's Portfolio",
                                            style: TextStyle(
                                              color: Color(0xFFFAAD1A),
                                              fontFamily: "font",
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "Thank you for visiting my portfolio!I truly appreciate your time and interest in my work.If you’d like to collaborate, share feedback, or discuss an opportunity, feel free to reach out — I’d love to connect with you!",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: "font1",
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.03,
                                  right: size.width * 0.05,
                                  bottom: size.height * 0.02,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Text(
                                      "Conatct Info",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: "font",
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFFAAD1A),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.call,
                                          color: Color(0xFFFAAD1A),
                                          size: 20,
                                        ),
                                        Text(
                                          " $phone",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "font1",
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.mail,
                                          color: Color(0xFFFAAD1A),
                                          size: 20,
                                        ),
                                        Text(
                                          " $email",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "font1",
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: Color(0xFFFAAD1A),
                                          size: 20,
                                        ),
                                        Text(
                                          " Lahore, Pakistan-540000",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "font1",
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),

                                        //  SizedBox(height: size.height*0.010,),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 8.0),
                                      child: Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              launchUrl(
                                                Uri.parse(
                                                  "https://github.com/fizanoor2005",
                                                ),
                                              );
                                            },
                                            child: Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                // color: Colors.blue,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                // color: Colors.blue,
                                                border: Border.all(
                                                  color: Color(0xFFFAAD1A),
                                                ),
                                              ),

                                              child: Image.asset(
                                                "assets/github.png",
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 20),
                                          InkWell(
                                            onTap: () {
                                              launchUrl(
                                                Uri.parse(
                                                  "https://www.linkedin.com/in/fizanoor/",
                                                ),
                                              );
                                            },

                                            child: Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                // color: Colors.blue,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                border: Border.all(
                                                  color: Color(0xFFFAAD1A),
                                                ),
                                              ),
                                              child: Image.asset(
                                                "assets/linkedn1.png",
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              //  Divider(thickness: 2,color: Colors.black,),
                              SizedBox(height: size.height * 0.02),
                            ],
                          ),
                        ),
                      ),
            ),

            Divider(thickness: 2, color: Colors.black),

            //  Divider(thickness: 2,color: Colors.white,),
            Container(
              height: 80,
              width: double.infinity,
              color: Color(0xFF344C36),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      launchUrl(
                        Uri.parse("https://www.linkedin.com/in/fizanoor/"),
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                          "Designed By Fiza Noor ",
                          style: TextStyle(
                            color: Color(0xFFFAAD1A),
                            fontSize: 16,
                            fontFamily: "font",
                          ),
                        ),
                        Icon(Icons.favorite, color: Colors.red),
                      ],
                    ),
                  ),
                  //  SizedBox(height: size.height*0.05,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}