import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';

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

  final List language = [
    {
      'name': 'English',
      'locale': const Locale('en', 'US'),
    },
    {
      'name': 'Hindi',
      'locale': const Locale('hi', 'IN'),
    },
    {
      'name': 'Gujarati',
      'locale': const Locale('gu', 'IN'),
    },
    {
      'name': 'Chinese',
      'locale': const Locale('ch', 'IN'),
    },
    {
      'name': 'Arabic',
      'locale': const Locale('ab', 'IN'),
    },
    {
      'name': 'French',
      'locale': const Locale('fr', 'IN'),
    }
  ];
  String oneValue = 'English';
  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  buildLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (builder) {
        return AlertDialog(
          elevation: 10,
          backgroundColor:
              isDarkModeEnabled ? Colors.grey.shade900 : Colors.white,
          title: Text(
            'Choose Your Language',
            style: TextStyle(
              color: isDarkModeEnabled ? Colors.white : Colors.black,
            ),
          ),
          content: SizedBox(
            width: double.maxFinite,
            child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              return ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      child: Row(
                        children: [
                          Radio(
                            value: language[index]['name'],
                            groupValue: oneValue,
                            onChanged: (value) {
                              print(language[index]['name']);
                              updateLanguage(
                                language[index]['locale'],
                              );
                              setState(() {
                                oneValue = value.toString();
                              });
                            },
                          ),
                          Text(
                            language[index]['name'],
                            style: TextStyle(
                              color: isDarkModeEnabled
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        print(language[index]['name']);
                        updateLanguage(
                          language[index]['locale'],
                        );
                        oneValue = language[index]['name'];
                      },
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Container();
                },
                itemCount: language.length,
              );
            }),
          ),
        );
      },
    );
  }

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
          title: Text(
            "dark".tr,
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
          // trailing: DayNightSwitcherIcon(
          //   isDarkModeEnabled: isDarkModeEnabled,
          //   onStateChanged: (isDarkModeEnabled) {
          //     this.isDarkModeEnabled = isDarkModeEnabled;
          //     widget.onChange!(isDarkModeEnabled);
          //     setState(() {});
          //   },
          // ),
        ),
        const SizedBox(height: 20),
        ListTile(
          onTap: () {
            buildLanguageDialog(context);
            setState(() {});
          },
          title: Text(
            "language".tr,
            style: TextStyle(
              color: isDarkModeEnabled ? Colors.white : Colors.black,
            ),
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
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: isDarkModeEnabled ? Colors.white : Colors.black,
          ),
        ),
        const SizedBox(height: 20),
        ListTile(
          title: Text(
            "right_to_left".tr,
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
          title: Text(
            "documentation".tr,
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
          title: Text(
            "change_log".tr,
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
