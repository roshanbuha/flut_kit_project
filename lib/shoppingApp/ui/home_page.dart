import 'package:flutter/material.dart';

class ShoppingHomePage extends StatefulWidget {
  const ShoppingHomePage({Key? key}) : super(key: key);

  @override
  State<ShoppingHomePage> createState() => _ShoppingHomePageState();
}

class _ShoppingHomePageState extends State<ShoppingHomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          children: [
            const SizedBox(height: 50),
            _buildWelcomeText(),
            const SizedBox(height: 20),
            _buildCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomeText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Welcome",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        Icon(
          Icons.notification_add_outlined,
          color: Colors.white,
        ),
      ],
    );
  }

  Widget _buildCard() {
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: Card(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      "Trending",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  "assets/shopping/sandal_image.jpeg",
                  fit: BoxFit.contain,
                  width: 150,
                  height: 200,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
