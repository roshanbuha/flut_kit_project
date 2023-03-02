import 'package:flut_kit_project/utils/card_widgets.dart';
import 'package:flut_kit_project/utils/coming_very_soon_container.dart';
import 'package:flut_kit_project/utils/text_widget.dart';
import 'package:flutter/material.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({Key? key}) : super(key: key);

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(text: "APPS"),
            const SizedBox(height: 15),
            Wrap(
              children: [
                CardWidgets(icon: Icons.shop_two_rounded, title: "Shopping"),
                CardWidgets(icon: Icons.health_and_safety, title: "Health"),
                CardWidgets(icon: Icons.fastfood_outlined, title: "Food"),
                CardWidgets(icon: Icons.hotel, title: "Hotel"),
                CardWidgets(icon: Icons.golf_course, title: "Course"),
                CardWidgets(icon: Icons.media_bluetooth_on, title: "Social"),
                CardWidgets(icon: Icons.event, title: "Event"),
                CardWidgets(icon: Icons.music_note, title: "Music"),
                CardWidgets(icon: Icons.chat, title: "Chat"),
                CardWidgets(icon: Icons.man, title: "Handyman"),
                CardWidgets(icon: Icons.newspaper, title: "News"),
              ],
            ),
            const SizedBox(height: 15),
            TextWidget(text: "PAGES"),
            const SizedBox(height: 15),
            Wrap(
              children: [
                CardWidgets(icon: Icons.quiz, title: "Quiz"),
                CardWidgets(icon: Icons.mail, title: "Mail"),
                CardWidgets(icon: Icons.security, title: "Authentication"),
                CardWidgets(
                    icon: Icons.settings_suggest_outlined, title: "Settings"),
                CardWidgets(icon: Icons.person, title: "Profile"),
                CardWidgets(icon: Icons.dashboard, title: "Dashbord"),
                CardWidgets(icon: Icons.wallet, title: "Wallet"),
                CardWidgets(
                    icon: Icons.check_box_outline_blank_rounded,
                    title: "Other"),
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
