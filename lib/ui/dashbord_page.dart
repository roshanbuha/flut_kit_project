import 'package:flut_kit_project/ui/pageview/animation_screen.dart';
import 'package:flut_kit_project/ui/pageview/apps_screen.dart';
import 'package:flut_kit_project/ui/pageview/material_page.dart';
import 'package:flut_kit_project/ui/pageview/other_screen.dart';
import 'package:flut_kit_project/ui/pageview/screen_page.dart';
import 'package:flutter/material.dart';

class DashbordPage extends StatefulWidget {
  const DashbordPage({Key? key}) : super(key: key);

  @override
  State<DashbordPage> createState() => _DashbordPageState();
}

class _DashbordPageState extends State<DashbordPage> {
  int _currentIndex = 0;
  static const List<Widget> _appBarTitle = <Widget>[
    Text(
      'Animation',
      style: TextStyle(color: Colors.black),
    ),
    Text(
      'Apps',
      style: TextStyle(color: Colors.black),
    ),
    Text(
      'Screen',
      style: TextStyle(color: Colors.black),
    ),
    Text(
      'Material Widget',
      style: TextStyle(color: Colors.black),
    ),
    Text(
      'Other Widget',
      style: TextStyle(color: Colors.black),
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
      backgroundColor: Colors.white,
      body: buildPageView(),
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: _appBarTitle.elementAt(_currentIndex),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        elevation: 0,
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
