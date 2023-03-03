import 'package:flutter/material.dart';

class CookHomeScreen extends StatefulWidget {
  const CookHomeScreen({Key? key}) : super(key: key);

  @override
  State<CookHomeScreen> createState() => _CookHomeScreenState();
}

class _CookHomeScreenState extends State<CookHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          children: [
            const SizedBox(height: 70),
            _buildHelloText(),
            const SizedBox(height: 20),
            _buildCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildHelloText() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Hello Den,",
              style: TextStyle(
                fontSize: 50,
                fontFamily: "Mynerve",
                color: Color(0xFFF37C83),
              ),
            ),
            Text(
              "Excited to cook something new today?",
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Mynerve",
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCard() {
    return Card(
      color: const Color(0xFF88464A),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.fromLTRB(15, 10, 25, 10),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "You have 12 recipes that",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "you haven't tried yet",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "See Recipes",
                    style: TextStyle(
                      fontFamily: "Mynerve",
                      color: Color(0xFFF37C83),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            leading: const Icon(
              Icons.fastfood,
              size: 40,
              color: Color(0xFFF37C83),
            ),
          ),
        ],
      ),
    );
  }
}
