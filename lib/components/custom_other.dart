import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double? height, width;
  final Color? color;

  CustomContainer({this.color, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 600;

        return Container(
          padding: const EdgeInsets.only(top: 40),
          margin:
              isMobile
                  ? const EdgeInsets.only(top: 20, left: 10, right: 10)
                  : const EdgeInsets.only(top: 60, left: 70),
          height: isMobile ? null : 770,
          width: isMobile ? double.infinity : 295,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: const Color.fromARGB(255, 56, 54, 54)),
            color: const Color(0xff1E1E1F),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                isMobile
                    ? Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xff363637),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.network(
                              "https://codewithsadee.github.io/vcard-personal-portfolio/assets/images/my-avatar.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          "Richard Hanrick",
                          style: const TextStyle(
                            fontFamily: "PoppinsR",
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    )
                    : Column(
                      children: [
                        Container(
                          height: 145,
                          width: 155,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xff363637),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.network(
                              "https://codewithsadee.github.io/vcard-personal-portfolio/assets/images/my-avatar.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Richard Hanrick",
                          style: TextStyle(
                            fontFamily: "PoppinsR",
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 22,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                const SizedBox(height: 20),

                // Dropdown / ProfileDetails
                isMobile
                    ? ExpansionTile(
                      title: const Text(
                        "More Info",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      iconColor: Colors.white,
                      collapsedIconColor: Colors.white,
                      children: [profileDetails()],
                    )
                    : profileDetails(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget profileDetails() {
    return Column(
      children: [
        Container(
          height: 25,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xff2B2B2C),
          ),
          child: const Center(
            child: Text(
              "Web Developer",
              style: TextStyle(color: Color(0xffD5D5D6), fontSize: 12),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Container(height: 1, width: 400, color: const Color(0xff383838)),
        const SizedBox(height: 20),

        profileTile(Icons.email_outlined, "EMAIL", "richard@example.com"),
        const SizedBox(height: 15),
        profileTile(Icons.phone_iphone, "PHONE", "+1 (213) 352-2795"),
        const SizedBox(height: 15),
        profileTile(Icons.calendar_month, "BIRTHDAY", "June 23, 1982"),
        const SizedBox(height: 15),
        profileTile(
          Icons.location_on_outlined,
          "LOCATION",
          "Sacramento, California, USA",
        ),
        const SizedBox(height: 30),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.facebook,
              color: Color.fromARGB(255, 158, 155, 155),
              size: 20,
            ),
            const SizedBox(width: 10),
            Image.asset("images/b.png", height: 20, width: 20),
            const SizedBox(width: 10),
            Image.asset("images/i.png", height: 20, width: 20),
          ],
        ),
      ],
    );
  }

  Widget profileTile(IconData icon, String title, String subtitle) {
    return ListTile(
      leading: Container(
        height: 80,
        width: 50,
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 44, 44, 44)),
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xff202022),
        ),
        child: Icon(icon, color: const Color(0xffEFCE6A), size: 20),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Color.fromARGB(255, 163, 163, 167),
          fontSize: 13,
        ),
      ),
      subtitle: Text(
        subtitle,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(color: Color(0xffF3F0F3), fontSize: 14),
      ),
    );
  }
}
