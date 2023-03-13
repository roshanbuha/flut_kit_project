import 'package:flut_kit_project/cookifyApp/ui/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CookProfileScreen extends StatefulWidget {
  const CookProfileScreen({Key? key}) : super(key: key);

  @override
  State<CookProfileScreen> createState() => _CookProfileScreenState();
}

class _CookProfileScreenState extends State<CookProfileScreen> {
  bool switchValue = true;
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            const SizedBox(height: 70),
            _buildCard(),
            _buildOptionCard(),
            const SizedBox(height: 20),
            _buildHelp(),
          ],
        ),
      ),
    );
  }

  Widget _buildCard() {
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.white10,
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  "assets/cook/profile_1.jpeg",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Lawrence M. Carlisle",
                    style: TextStyle(
                      fontFamily: "Mynerve",
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "lawrence_car@gmail.com",
                    style: TextStyle(
                      fontFamily: "Mynerve",
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextButton(
                    style: TextButton.styleFrom(
                      side: const BorderSide(
                        color: Color(0xFFF37C83),
                        width: 2,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                          fontFamily: "Mynerve",
                          color: Color(0xFFF37C83),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionCard() {
    return SizedBox(
      width: double.infinity,
      height: 480,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.white10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Option",
                style: TextStyle(
                  fontFamily: "Mynerve",
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Notification",
                    style: TextStyle(
                      fontFamily: "Mynerve",
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CupertinoSwitch(
                    value: switchValue,
                    activeColor: CupertinoColors.activeBlue,
                    onChanged: (bool? value) {
                      setState(() {
                        switchValue = value ?? false;
                      });
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Language",
                    style: TextStyle(
                      fontFamily: "Mynerve",
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Offline Reading",
                    style: TextStyle(
                      fontFamily: "Mynerve",
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CupertinoSwitch(
                    value: _switchValue,
                    activeColor: CupertinoColors.activeBlue,
                    onChanged: (bool? value) {
                      setState(() {
                        _switchValue = value ?? false;
                      });
                    },
                  )
                ],
              ),
            ),
            const Divider(color: Colors.grey),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Account",
                style: TextStyle(
                  fontFamily: "Mynerve",
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Personal Information",
                    style: TextStyle(
                      fontFamily: "Mynerve",
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Country",
                    style: TextStyle(
                      fontFamily: "Mynerve",
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Favorite Recipes",
                    style: TextStyle(
                      fontFamily: "Mynerve",
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CookifySplashScreen(),
                      ),
                    );
                  },
                  color: const Color(0xFFF37C83),
                  child: const Text(
                    "LOGOUT",
                    style: TextStyle(
                      fontFamily: "Mynerve",
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHelp() {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF88464A),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      width: 375,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.music_note_outlined,
            color: Color(0xFFF37C83),
            size: 30,
          ),
          SizedBox(width: 10),
          Text(
            "Feel Free to Ask, We Ready to Help",
            style: TextStyle(
              fontFamily: "Mynerve",
              color: Color(0xFFF37C83),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
