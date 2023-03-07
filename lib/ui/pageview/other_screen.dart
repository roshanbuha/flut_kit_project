import 'package:flut_kit_project/utils/card_widgets.dart';
import 'package:flut_kit_project/utils/coming_very_soon_container.dart';
import 'package:flut_kit_project/utils/text_widget.dart';
import 'package:flutter/material.dart';

class OtherScreen extends StatefulWidget {
  const OtherScreen({Key? key}) : super(key: key);

  @override
  State<OtherScreen> createState() => _OtherScreenState();
}

class _OtherScreenState extends State<OtherScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  TextWidget(text: "SYNCFUSION"),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Wrap(
              children: [
                CardWidgets(icon: Icons.auto_graph, title: "Cartesian Chart"),
                CardWidgets(icon: Icons.bar_chart, title: "Circular Chart"),
                CardWidgets(icon: Icons.area_chart, title: "Other Chart"),
                CardWidgets(icon: Icons.calendar_month, title: "Date Range"),
                CardWidgets(icon: Icons.speed, title: "Gauges"),
                CardWidgets(icon: Icons.linear_scale_rounded, title: "Sliders"),
                CardWidgets(
                    icon: Icons.linear_scale_sharp, title: "Range Slider"),
                CardWidgets(icon: Icons.select_all, title: "Range Selector"),
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  TextWidget(text: "CUPERTINO"),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Wrap(
              children: [
                CardWidgets(
                    icon: Icons.dashboard_customize_outlined, title: "Dialogs"),
                CardWidgets(icon: Icons.input, title: "Input"),
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
