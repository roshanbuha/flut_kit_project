import 'package:flut_kit_project/utils/card_widgets.dart';
import 'package:flut_kit_project/utils/coming_very_soon_container.dart';
import 'package:flut_kit_project/utils/text_widget.dart';
import 'package:flutter/material.dart';

class MaterialPageScreen extends StatefulWidget {
  const MaterialPageScreen({Key? key}) : super(key: key);

  @override
  State<MaterialPageScreen> createState() => _MaterialPageScreenState();
}

class _MaterialPageScreenState extends State<MaterialPageScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(text: "BASIC"),
            const SizedBox(height: 15),
            Wrap(
              children: [
                CardWidgets(icon: Icons.circle_outlined, title: "Basic"),
                CardWidgets(icon: Icons.apps, title: "App Bar"),
                CardWidgets(icon: Icons.arrow_downward, title: "Bottom Sheet"),
                CardWidgets(icon: Icons.radio_button_checked, title: "Button"),
                CardWidgets(icon: Icons.card_giftcard, title: "Card"),
                CardWidgets(icon: Icons.ac_unit_rounded, title: "Dialogs"),
                CardWidgets(icon: Icons.list, title: "List"),
                CardWidgets(
                    icon: Icons.navigate_next_outlined, title: "Navigation"),
              ],
            ),
            const SizedBox(height: 15),
            TextWidget(text: "ADVANCED"),
            const SizedBox(height: 15),
            Wrap(
              children: [
                CardWidgets(icon: Icons.map, title: "Advanced"),
                CardWidgets(icon: Icons.view_carousel, title: "Carousel"),
                CardWidgets(
                    icon: Icons.double_arrow_sharp, title: "Expansions"),
                CardWidgets(icon: Icons.pages, title: "Forms"),
                CardWidgets(
                    icon: Icons.production_quantity_limits, title: "Progress"),
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
