import 'dart:math';

import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flut_kit_project/ui/pageview/animation_screen.dart';
import 'package:flut_kit_project/ui/pageview/apps_screen.dart';
import 'package:flut_kit_project/ui/pageview/material_page.dart';
import 'package:flut_kit_project/ui/pageview/other_screen.dart';
import 'package:flut_kit_project/ui/pageview/screen_page.dart';
import 'package:flut_kit_project/ui/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';

class DashbordPage extends StatefulWidget {
  DashbordPage({
    Key? key,
    this.dark,
    this.onChange,
  }) : super(key: key);
  bool? dark;
  Function(bool)? onChange;

  @override
  State<DashbordPage> createState() => _DashbordPageState();
}

class _DashbordPageState extends State<DashbordPage> {
  int _currentIndex = 0;
  bool isDarkModeEnabled = false;
  String? languageRadio;
  bool right = false;

  static final List<Widget> _appBarTitle = <Widget>[
    const Text(
      'Animation',
    ),
    const Text(
      'Apps',
    ),
    const Text(
      'Screen',
    ),
    const Text(
      'Material Widget',
    ),
    const Text(
      'Other Widget',
    ),
  ];

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      const BottomNavigationBarItem(
        icon: Icon(Icons.rocket_launch_outlined),
        label: "rocket",
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.home_filled),
        label: "home",
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.window_sharp),
        label: "window",
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.check_box_outline_blank),
        label: "box",
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.library_books),
        label: "books",
      ),
    ];
  }

  final List language = [
    {
      'name': 'English',
      'locale': const Locale('en', 'US'),
    },
    {
      'name': 'Hindi',
      'locale': const Locale('hi', 'IN'),
    },
    {
      'name': 'Gujarati',
      'locale': const Locale('gu', 'IN'),
    },
    {
      'name': 'Chinese',
      'locale': const Locale('ch', 'IN'),
    },
    {
      'name': 'Arabic',
      'locale': const Locale('ab', 'IN'),
    },
    {
      'name': 'French',
      'locale': const Locale('fr', 'IN'),
    }
  ];

  String oneValue = 'English';

  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  buildLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (builder) {
        return AlertDialog(
          elevation: 10,
          backgroundColor:
              isDarkModeEnabled ? Colors.grey.shade900 : Colors.white,
          title: Text(
            'Choose Your Language',
            style: TextStyle(
              color: isDarkModeEnabled ? Colors.white : Colors.black,
            ),
          ),
          content: SizedBox(
            width: double.maxFinite,
            child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              return ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      child: Row(
                        children: [
                          Radio(
                            value: language[index]['name'],
                            groupValue: oneValue,
                            onChanged: (value) {
                              log(language[index]['name']);
                              updateLanguage(language[index]['locale']);
                              setState(() {
                                oneValue = value.toString();
                              });
                            },
                          ),
                          Text(
                            language[index]['name'],
                            style: TextStyle(
                              color: isDarkModeEnabled
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        log(language[index]['name']);
                        updateLanguage(language[index]['locale']);
                        oneValue = language[index]['name'];
                      },
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Container();
                },
                itemCount: language.length,
              );
            }),
          ),
        );
      },
    );
  }

  void onStateChanged(bool isDarkModeEnabled) {
    setState(() {
      this.isDarkModeEnabled = isDarkModeEnabled;
    });
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  void pageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      _currentIndex = index;
      pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPageView(),
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        title: _appBarTitle.elementAt(_currentIndex),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        SettingScreen(
                      onChange: (bool isDarkModeEnabled1) {
                        onStateChanged(isDarkModeEnabled1);
                      },
                    ),
                    transitionDuration: const Duration(seconds: 1),
                    transitionsBuilder: (_, a, __, c) =>
                        FadeTransition(opacity: a, child: c),
                  ),
                );
              },
              icon: const Icon(
                Icons.settings,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: SafeArea(
          child: ListTileTheme(
            textColor: Colors.black,
            iconColor: Colors.black,
            child: Column(
              children: [
                const SizedBox(height: 20),
                Image.asset(
                  "assets/logo-main.png",
                  height: 100,
                  width: 100,
                ),
                const SizedBox(height: 15),
                Container(
                  width: 50,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade50,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "12.0",
                      style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Flutter 3.0.5 (Latest)",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "dark".tr,
                    style: TextStyle(
                      color: isDarkModeEnabled ? Colors.white : Colors.black,
                    ),
                  ),
                  leading: Container(
                    decoration: BoxDecoration(
                      color: Colors.brown.shade50,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    height: 40,
                    width: 40,
                    child: const Icon(
                      Icons.dark_mode_outlined,
                      color: Colors.brown,
                    ),
                  ),
                  trailing: DayNightSwitcherIcon(
                    isDarkModeEnabled: isDarkModeEnabled,
                    onStateChanged: (isDarkModeEnabled) {
                      this.isDarkModeEnabled = isDarkModeEnabled;
                      widget.onChange!(isDarkModeEnabled);
                    },
                  ),
                ),
                const SizedBox(height: 20),
                ListTile(
                  onTap: () {
                    buildLanguageDialog(context);
                    setState(() {});
                  },
                  title: Text(
                    "language".tr,
                    style: TextStyle(
                      color: isDarkModeEnabled ? Colors.white : Colors.black,
                    ),
                  ),
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.orange.shade50,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: const Icon(
                      Icons.language,
                      color: Colors.orange,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: isDarkModeEnabled ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "right_to_left".tr,
                    style: TextStyle(
                      color: isDarkModeEnabled ? Colors.white : Colors.black,
                    ),
                  ),
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: const Icon(
                      Icons.arrow_right_alt,
                      color: Colors.blue,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: isDarkModeEnabled ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                const Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  title: Text(
                    "documentation".tr,
                    style: TextStyle(
                      color: isDarkModeEnabled ? Colors.white : Colors.black,
                    ),
                  ),
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: const Icon(
                      Icons.book,
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ListTile(
                  title: Text(
                    "change_log".tr,
                    style: TextStyle(
                      color: isDarkModeEnabled ? Colors.white : Colors.black,
                    ),
                  ),
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.orange.shade50,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: const Icon(
                      Icons.padding_sharp,
                      color: Colors.orange,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigoAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "buy_now".tr,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        elevation: 5,
        onTap: (index) {
          bottomTapped(index);
        },
        items: buildBottomNavBarItems(),
      ),
    );
  }

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: const [
        AnimationScreen(),
        AppScreen(),
        ScreenPage(),
        MaterialPageScreen(),
        OtherScreen(),
      ],
    );
  }
}
