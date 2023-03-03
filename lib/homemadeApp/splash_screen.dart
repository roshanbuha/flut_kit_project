import 'package:flutter/material.dart';

class HomemadeSplashScreen extends StatefulWidget {
  const HomemadeSplashScreen({Key? key}) : super(key: key);

  @override
  State<HomemadeSplashScreen> createState() => _HomemadeSplashScreenState();
}

class _HomemadeSplashScreenState extends State<HomemadeSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Image.asset(
              "assets/homemade/splash_cook.jpg",
              fit: BoxFit.cover,
            ),
          ),
          const Center(child: Text("data")),
        ],
      ),
    );
  }
}
