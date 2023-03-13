import 'package:flut_kit_project/shoppingApp/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ShoppingDashbord extends StatefulWidget {
  const ShoppingDashbord({Key? key}) : super(key: key);

  @override
  State<ShoppingDashbord> createState() => _ShoppingDashbordState();
}

class _ShoppingDashbordState extends State<ShoppingDashbord> {
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
      backgroundColor: Colors.black,
      body: buildPageView(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey.shade700,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GNav(
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              color: Colors.grey,
              tabBackgroundColor: Colors.white,
              tabs: const [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.search_sharp,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.shopping_cart_outlined,
                  text: 'Cart',
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
        ShoppingHomePage(),
      ],
    );
  }
}
