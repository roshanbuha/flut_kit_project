import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flut_kit_project/ui/pageview/animation_screen.dart';
import 'package:flut_kit_project/ui/pageview/apps_screen.dart';
import 'package:flut_kit_project/ui/pageview/material_page.dart';
import 'package:flut_kit_project/ui/pageview/other_screen.dart';
import 'package:flut_kit_project/ui/pageview/screen_page.dart';
import 'package:flutter/material.dart';

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

  static final List<Widget> _appBarTitle = <Widget>[
    const Text(
      'Animation',
      // style: TextStyle(color: Colors.black),
    ),
    const Text(
      'Apps',
      // style: TextStyle(color: Colors.black),
    ),
    const Text(
      'Screen',
      // style: TextStyle(color: Colors.black),
    ),
    const Text(
      'Material Widget',
      // style: TextStyle(color: Colors.black),
    ),
    const Text(
      'Other Widget',
      // style: TextStyle(color: Colors.black),
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
      ),
      drawer: Drawer(
        child: SafeArea(
          child: ListTileTheme(
            textColor: Colors.black,
            iconColor: Colors.black,
            child: Column(
              children: [
                const SizedBox(height: 20),
                Image.network(
                  "https://flutkit.coderthemes.com/images/logo-main.png",
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
                DayNightSwitcher(
                  isDarkModeEnabled: isDarkModeEnabled,
                  onStateChanged: (isDarkModeEnabled) {
                    this.isDarkModeEnabled = isDarkModeEnabled;
                    widget.onChange!(isDarkModeEnabled);
                  },
                ),
                ListTile(
                  onTap: () {},
                  title: const Text(
                    "Dark Mode",
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
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                const SizedBox(height: 20),
                ListTile(
                  title: const Text(
                    "Language",
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
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                const SizedBox(height: 20),
                ListTile(
                  title: const Text(
                    "Right to Left (RTL)",
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
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                const SizedBox(height: 20),
                const Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  title: const Text(
                    "Documentation",
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
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                const SizedBox(height: 20),
                ListTile(
                  title: const Text(
                    "Change Log",
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
                  trailing: const Icon(Icons.arrow_forward_ios),
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
                  child: const Text(
                    "BUY NOW",
                    style: TextStyle(fontWeight: FontWeight.w500),
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
