import 'package:flut_kit_project/utils/card_widgets.dart';
import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            children: [
              CardWidgets(icon: Icons.security, title: "Auth"),
              CardWidgets(icon: Icons.favorite_border, title: "Favorite"),
              CardWidgets(icon: Icons.sunny, title: "Theme Charger"),
              CardWidgets(icon: Icons.tour, title: "Intro Tour"),
              CardWidgets(
                  icon: Icons.compare_arrows_outlined, title: "Resizing House"),
              CardWidgets(icon: Icons.switch_access_shortcut, title: "Switch"),
              CardWidgets(
                icon: Icons.flip,
                title: "Flip",
              ),
              CardWidgets(
                icon: Icons.sunny_snowing,
                title: "Redial Menu",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
