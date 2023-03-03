import 'package:flut_kit_project/cookifyApp/ui/splash_screen.dart';
import 'package:flut_kit_project/utils/card_widgets.dart';
import 'package:flut_kit_project/utils/coming_very_soon_container.dart';
import 'package:flut_kit_project/utils/text_widget.dart';
import 'package:flutter/material.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(text: "COOL ANIMATION"),
            const SizedBox(height: 15),
            Wrap(
              children: [
                CardWidgets(icon: Icons.shopping_bag, title: "Shopping"),
                CardWidgets(icon: Icons.car_repair, title: "Rental Service"),
                CardWidgets(icon: Icons.currency_bitcoin, title: "NFT"),
                CardWidgets(
                    icon: Icons.manage_accounts_rounded,
                    title: "Shopping Manager"),
              ],
            ),
            const SizedBox(height: 15),
            TextWidget(text: "FULL APPS"),
            const SizedBox(height: 15),
            Wrap(
              children: [
                CardWidgets(
                  icon: Icons.cake,
                  title: "Homemade",
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const CookifySplashScreen(),
                      ),
                    );
                  },
                  child: CardWidgets(
                    icon: Icons.cookie,
                    title: "Cookify",
                  ),
                ),
                CardWidgets(icon: Icons.health_and_safety, title: "Medi Care"),
                CardWidgets(icon: Icons.shopping_bag, title: "Shopping"),
                CardWidgets(icon: Icons.home, title: "Estate"),
                CardWidgets(icon: Icons.apple, title: "Grocery"),
                CardWidgets(icon: Icons.favorite_border, title: "Dating"),
                CardWidgets(icon: Icons.video_call, title: "Muvi"),
              ],
            ),
            const SizedBox(height: 15),
            TextWidget(text: "MATERIAL YOU"),
            const SizedBox(height: 15),
            Wrap(
              children: [
                CardWidgets(icon: Icons.book, title: "Learning"),
                CardWidgets(icon: Icons.cookie_outlined, title: "Cookify"),
                CardWidgets(icon: Icons.favorite_border, title: "Dating"),
                CardWidgets(icon: Icons.home_outlined, title: "Estate"),
                CardWidgets(icon: Icons.cake_outlined, title: "Homemade"),
              ],
            ),
            const SizedBox(height: 15),
            ComingVerySoon(
              text: "More widgets are coming very soon...",
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
