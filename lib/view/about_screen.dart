import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  final List<Map<String, dynamic>>? cvData;
  const AboutScreen({super.key, this.cvData});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    // Data extraction with null safety
    String name = cvData?.isNotEmpty == true ? cvData![0]['common']['name'] ?? 'Zainab Batool' : 'Zainab Batool';
    String profession = cvData?.isNotEmpty == true ? cvData![0]['common']['profession'] ?? 'Flutter Developer' : 'Flutter Developer';
    String email = cvData?.isNotEmpty == true ? cvData![0]['common']['email'] ?? 'zainab3devsinn@gmail.com' : 'zainab3devsinn@gmail.com';
    String phone = cvData?.isNotEmpty == true ? cvData![0]['common']['phone'] ?? '+92 334-426-1127' : '+92 334-426-1127';
    String location = cvData?.isNotEmpty == true ? cvData![0]['common']['location'] ?? 'Lahore, Pakistan' : 'Lahore, Pakistan';
    String about_description = cvData?.isNotEmpty == true ? cvData![0]['about_section']['description'] ?? 'I am an enthusiastic and dedicated Flutter developer...' : 'I am an enthusiastic and dedicated Flutter developer...';

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
            top: size.width < 485
                ? size.width < 162
                    ? 10
                    : 40
                : 60,
            left: size.width < 340
                ? size.width < 220
                    ? size.width < 220
                        ? 0
                        : 5
                    : 20
                : 60,
            right: size.width < 340
                ? size.width < 220
                    ? size.width < 220
                        ? 0
                        : 5
                    : 20
                : 60),
        height: size.width < 1115
            ? size.width < 794
                ? size.width < 734
                    ? size.width < 469
                        ? size.width < 357
                            ? size.width < 170
                                ? size.height * 5
                                : size.height * 3.8
                            : size.height * 3.5
                        : size.height * 2.8
                    : size.height * 2.4
                : size.height * 2.1
            : size.height * 2,
        width: size.width,
        color: Colors.grey[200],
        child: Column(
          children: [
            Column(
              children: [
                if (size.width > 110)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person, size: 35),
                      SizedBox(width: 10),
                      Text(
                        "About", // Fixed typo: "Aboout" to "About"
                        style: TextStyle(
                            fontSize: size.width <= 375
                                ? size.width < 159
                                    ? 10
                                    : 20
                                : 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Me",
                        style: TextStyle(
                            color: Color(0xff2187DF),
                            fontSize: size.width < 375
                                ? size.width < 159
                                    ? 10
                                    : 20
                                : 40,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                SizedBox(height: size.width < 162 ? 10 : 20),
                size.width < 1115
                    ? Wrap(
                        children: [
                          Container(
                            height: size.width < 340
                                ? size.width < 162
                                    ? 200
                                    : 300
                                : 400,
                            width: size.width < 340
                                ? size.width < 162
                                    ? 200
                                    : 300
                                : 400,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("flower/doll.png"),
                                ),
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "I'm $name", // Fixed: comma to apostrophe and dynamic name
                                style: TextStyle(
                                    fontSize: size.width < 159
                                        ? size.width < 159
                                            ? 10
                                            : 20
                                        : 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (size.width > 108)
                                    Text(
                                      profession, // Using dynamic profession
                                      style: TextStyle(
                                          fontSize: size.width < 375
                                              ? size.width < 159
                                                  ? 10
                                                  : 17
                                              : 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  SizedBox(width: 5),
                                  if (size.width < 155)
                                    Text(
                                      "(1 year)",
                                      style: TextStyle(
                                          fontSize: size.width < 246
                                              ? size.width < 220
                                                  ? 6
                                                  : 12
                                              : 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                ],
                              ),
                              SizedBox(height: 10),
                              // Single dynamic description instead of multiple hardcoded texts
                              Container(
                                width: size.width < 1115 ? size.width * 0.6 : null,
                                child: Text(
                                  about_description,
                                  style: TextStyle(
                                      fontSize: size.width < 159 ? 10 : 16,
                                      height: 1.5),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 20),
                              if (size.width > 235) ...[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Email:",
                                      style: TextStyle(
                                          color: Color(0xff0066CC),
                                          fontSize: size.width < 425
                                              ? size.width < 340
                                                  ? 12
                                                  : 17
                                              : 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      email, // Using dynamic email
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: size.width <= 551
                                              ? size.width <= 414
                                                  ? size.width <= 375
                                                      ? 12
                                                      : 14
                                                  : 16
                                              : 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Place:",
                                      style: TextStyle(
                                          color: Color(0xff0066CC),
                                          fontSize: size.width < 425
                                              ? size.width < 340
                                                  ? 12
                                                  : 17
                                              : 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      location, // Using dynamic location
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: size.width < 375 ? 12 : 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Phone Number:",
                                      style: TextStyle(
                                          color: Color(0xff0066CC),
                                          fontSize: size.width < 425
                                              ? size.width < 340
                                                  ? 12
                                                  : 17
                                              : 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      phone, // Using dynamic phone
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: size.width <= 551
                                              ? size.width <= 414
                                                  ? size.width <= 375
                                                      ? 12
                                                      : 14
                                                  : 16
                                              : 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                              if (size.width < 235)
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Email:",
                                          style: TextStyle(
                                              color: Color(0xff0066CC),
                                              fontSize: size.width < 425
                                                  ? size.width < 340
                                                      ? size.width < 167
                                                          ? 7
                                                          : 12
                                                      : 17
                                                  : 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          email, // Using dynamic email
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: size.width <= 551
                                                  ? size.width <= 414
                                                      ? size.width <= 375
                                                          ? size.width < 167
                                                              ? 7
                                                              : 12
                                                          : 14
                                                      : 16
                                                  : 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    if (size.width < 170) SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Text(
                                          "Place:",
                                          style: TextStyle(
                                              color: Color(0xff0066CC),
                                              fontSize: size.width < 425
                                                  ? size.width < 340
                                                      ? size.width < 167
                                                          ? 7
                                                          : 12
                                                      : 17
                                                  : 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          location, // Using dynamic location
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: size.width < 375
                                                  ? size.width < 167
                                                      ? 7
                                                      : 12
                                                  : 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    if (size.width < 170) SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Text(
                                          "Phone Number:",
                                          style: TextStyle(
                                              color: Color(0xff0066CC),
                                              fontSize: size.width < 425
                                                  ? size.width < 340
                                                      ? size.width < 167
                                                          ? 7
                                                          : 12
                                                      : 17
                                                  : 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          phone, // Using dynamic phone
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: size.width <= 551
                                                  ? size.width <= 414
                                                      ? size.width <= 375
                                                          ? size.width < 167
                                                              ? 7
                                                              : 12
                                                          : 14
                                                      : 16
                                                  : 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                            ],
                          )
                        ],
                      )
                    : Row(
                        children: [
                          Container(
                            height: 400,
                            width: 400,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("flower/doll.png"),
                                ),
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Spacer(),
                          if (size.width > 340)
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("I'm $name", // Fixed: comma to apostrophe and dynamic name
                                    style: TextStyle(
                                        fontSize: 30, fontWeight: FontWeight.bold)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(profession, // Using dynamic profession
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold)),
                                    SizedBox(width: 5),
                                    Text("(1 year)",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                SizedBox(height: 10),
                                // Single dynamic description
                                Container(
                                  width: 500,
                                  child: Text(
                                    about_description,
                                    style: TextStyle(fontSize: 20, height: 1.5),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Email:",
                                          style: TextStyle(
                                              color: Color(0xff0066CC),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          email, // Using dynamic email
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Place:",
                                          style: TextStyle(
                                              color: Color(0xff0066CC),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          location, // Using dynamic location
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Phone Number:",
                                          style: TextStyle(
                                              color: Color(0xff0066CC),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          phone, // Using dynamic phone
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                        ],
                      ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),
                SizedBox(height: 30)
              ],
            ),
          ],
        ),
      ),
    );
  }
}