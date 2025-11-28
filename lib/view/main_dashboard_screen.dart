
import 'package:flutter/material.dart';
import 'package:cvtojson/globals/app_colors.dart';
import 'package:cvtojson/globals/app_text_styles.dart';
import 'package:cvtojson/view/skill_screen.dart';
import 'package:cvtojson/view/abouts_screen.dart';
import 'package:cvtojson/view/contacts_screen.dart';
import 'package:cvtojson/view/educations_screen.dart';
import 'package:cvtojson/view/experiences_screen.dart';
import 'package:cvtojson/view/footer_screen.dart';
import 'package:cvtojson/view/home_screen.dart';
import 'package:cvtojson/view/work_screen.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';


class MainDashboardScreen extends StatefulWidget {
  const MainDashboardScreen({super.key, List<Map<String, dynamic>>? cvData});

  @override
  State<MainDashboardScreen> createState() => _MainDashboardScreenState();
}

class _MainDashboardScreenState extends State<MainDashboardScreen> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final onMenuHover = Matrix4.identity()..scale(1.0);

  final menuItems = [
    "Home",
    "About",
    "Skills",
    "Education",
    "Work",
    "Experience",
    "Contact",
  ];

  var menuIndex = 0;

  List<Widget> get screenList => [
        HomeScreen(),
        AboutsScreen(),
        SkillScreen(),
        EducationScreen(),
        WorkScreen(),
        ExperienceScreen(),
        ContactScreen(),
        FooterScreen(
          onTap: (index) {
            scrollTo(index: index);
          },
        ),
      ];

  final ValueNotifier<int> menuIndexNotifier = ValueNotifier<int>(0);

  Future scrollTo({required int index}) async {
    if (itemScrollController.isAttached) {
      await itemScrollController.scrollTo(
        index: index,
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
      menuIndexNotifier.value = index;
    }
  }

  @override
  void initState() {
    super.initState();
    // ✅ Ensure scroll position set after first frame (DevTools safe)
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (itemScrollController.isAttached) {
        itemScrollController.jumpTo(index: menuIndexNotifier.value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bg,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.white, width: 1)),
        titleSpacing: size.width < 320 ? 20 : 50,
        backgroundColor: const Color.fromARGB(255, 4, 38, 66),
        toolbarHeight: 60,
        title: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 800) {
              return Row(
                children: [
                  Text(
                    "Muqadas",
                    style: AppTextStyles.headerTextStyle(
                      fontsize: size.width < 320 ? 15 : 30,
                      color: AppColors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  PopupMenuButton(
                    icon: Icon(
                      Icons.menu_sharp,
                      size: size.width < 320 ? 20 : 32,
                      color: AppColors.white,
                    ),
                    color: AppColors.bg,
                    position: PopupMenuPosition.under,
                    constraints:
                        BoxConstraints.tightFor(width: size.width * 0.9),
                    itemBuilder: (BuildContext context) => menuItems
                        .asMap()
                        .entries
                        .map(
                          (e) => PopupMenuItem(
                            onTap: () {
                              scrollTo(index: e.key);
                            },
                            child: Text(
                              e.value,
                              style: AppTextStyles.HeadingStyle(
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  )
                ],
              );
            } else {
              return Row(
                children: [
                  Text(
                    "Muqadas",
                    style: AppTextStyles.headerTextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 30,
                    child: ListView.separated(
                      separatorBuilder: (context, child) => SizedBox(width: 8),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: menuItems.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            scrollTo(index: index);
                          },
                          borderRadius: BorderRadius.circular(100),
                          onHover: (value) {
                            setState(() {
                              if (value) {
                                menuIndex = index;
                              } else {
                                menuIndex = 0;
                              }
                            });
                          },
                          child: BuildNavBarAnimaterContainer(
                            index,
                            menuIndex == index ? true : false,
                          ),
                        );
                      },
                    ),
                  )
                ],
              );
            }
          },
        ),
      ),
      body: ScrollablePositionedList.builder(
        // [FIX] removed Scrollbar to prevent error
        itemCount: screenList.length,
        itemScrollController: itemScrollController,
        itemBuilder: (context, index) {
          return screenList[index];
        },
      ),
    );
  }

  AnimatedContainer BuildNavBarAnimaterContainer(int index, bool hover) {
    return AnimatedContainer(
      alignment: Alignment.center,
      width: hover ? 80 : 75,
      duration: Duration(milliseconds: 200),
      transform: hover ? onMenuHover : null,
      child: Text(
        menuItems[index],
        style: AppTextStyles.HeadingStyle(
          fontsize: 15,
          fontWeight: FontWeight.bold,
          color: hover ? AppColors.Theme : AppColors.white,
        ),
      ),
    );
  }
}
