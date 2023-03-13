import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({
    Key? key,
    this.onChange,
  }) : super(key: key);
  Function(bool)? onChange;
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: const Text("Settings"),
      ),
      body: _buildMain(),
    );
  }

  Widget _buildMain() {
    return Column(
      children: [
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
          trailing: DayNightSwitcherIcon(
            isDarkModeEnabled: isDarkModeEnabled,
            onStateChanged: (isDarkModeEnabled) {
              this.isDarkModeEnabled = isDarkModeEnabled;
              widget.onChange!(isDarkModeEnabled);
              setState(() {});
            },
          ),
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
          trailing: const Icon(
            Icons.arrow_forward_ios,
          ),
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
          trailing: const Icon(
            Icons.arrow_forward_ios,
          ),
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
          trailing: const Icon(
            Icons.arrow_forward_ios,
          ),
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
          trailing: const Icon(
            Icons.arrow_forward_ios,
          ),
        ),
      ],
    );
  }
}
