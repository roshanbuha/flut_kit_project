import 'package:flut_kit_project/cookifyApp/ui/home_screen.dart';
import 'package:flut_kit_project/cookifyApp/ui/meal_screen.dart';
import 'package:flut_kit_project/cookifyApp/ui/profile_screen.dart';
import 'package:flut_kit_project/cookifyApp/ui/show_case_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CookDashBordScreen extends StatefulWidget {
  const CookDashBordScreen({Key? key}) : super(key: key);

  @override
  State<CookDashBordScreen> createState() => _CookDashBordScreenState();
}

class _CookDashBordScreenState extends State<CookDashBordScreen> {
  int _selectedIndex = 0;

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  void pageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      _selectedIndex = index;
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
      backgroundColor: Colors.white10,
      body: buildPageView(),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white10,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              gap: 8,
              activeColor: const Color(0xFFF37C83),
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              color: const Color(0xFFF37C83),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.menu_book,
                  text: 'Showcase',
                ),
                GButton(
                  icon: Icons.fastfood_outlined,
                  text: 'Meal',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                bottomTapped(index);
                setState(() {});
              },
            ),
          ),
        ),
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
        CookHomeScreen(),
        CookShowCaseScreen(),
        CookMealScreen(),
        CookProfileScreen(),
      ],
    );
  }
}
