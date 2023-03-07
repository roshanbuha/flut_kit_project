import 'package:flut_kit_project/cookifyApp/ui/login_screen.dart';
import 'package:flut_kit_project/cookifyApp/ui/sign_screen.dart';
import 'package:flutter/material.dart';

class CookifySplashScreen extends StatefulWidget {
  const CookifySplashScreen({Key? key}) : super(key: key);

  @override
  State<CookifySplashScreen> createState() => _CookifySplashScreenState();
}

class _CookifySplashScreenState extends State<CookifySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Image.asset(
              "assets/cook/splash_cook.jpg",
              fit: BoxFit.contain,
            ),
          ),
          _buildText(),
          _buildButton(),
        ],
      ),
    );
  }

  Widget _buildText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 70, left: 30),
          child: Text(
            "Welcome to\nCookify",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "Mynerve",
              color: Color(0xFFF37C83),
              fontSize: 50,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CookSignScreen(),
                  ),
                );
              },
              child: const Text(
                "SIGN UP",
                style: TextStyle(
                  color: Color(0xFFF37C83),
                  fontSize: 20,
                  fontFamily: "Mynerve",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 70),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF37C83),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CookLoginScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Log IN",
                  style: TextStyle(
                    fontFamily: "Mynerve",
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 40)
      ],
    );
  }
}
