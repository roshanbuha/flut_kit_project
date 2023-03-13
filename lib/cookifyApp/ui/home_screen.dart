import 'package:flut_kit_project/cookifyApp/comman/trending_card.dart';
import 'package:flut_kit_project/cookifyApp/ui/recipe_screen.dart';
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
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CookRecipeScreen(),
                  ),
                );
              },
              child: _buildNonVegCard(),
            ),
            const SizedBox(height: 10),
            _buildTrendingText(),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CookRecipeScreen(),
                  ),
                );
              },
              child: _buildRecipeCard(),
            ),
            const SizedBox(height: 20),
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
                    fontFamily: "Mynerve",
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "you haven't tried yet",
                  style: TextStyle(
                    fontFamily: "Mynerve",
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

  Widget _buildNonVegCard() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "assets/cook/food_background_image.jpeg",
            fit: BoxFit.cover,
            height: 450,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 80,
                height: 25,
                decoration: const BoxDecoration(
                  color: Color(0xFF88464A),
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Non Veg",
                    style: TextStyle(
                      fontFamily: "Mynerve",
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Icon(
                Icons.bookmark_border,
                color: Color(0xFFF37C83),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 180,
            width: 390,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                stops: [0.0, 1.0],
                colors: [
                  Colors.white10,
                  Color(0xFFF37C83),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Chicken Makhani\nSouth Special",
                style: TextStyle(
                  fontFamily: "Mynerve",
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "30 Recipes | 1 Serving",
                style: TextStyle(
                  fontFamily: "Mynerve",
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTrendingText() {
    return Row(
      children: const [
        Text(
          "Trending Recipe",
          style: TextStyle(
            fontFamily: "Mynerve",
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildRecipeCard() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TrendingCard(
            image: "assets/cook/matar_paneer.jpeg",
            text: "South",
            cardText: "Mater Paneer",
            descriptionText: "30 Recipes | 1 Serving",
          ),
          const SizedBox(width: 20),
          TrendingCard(
            image: "assets/cook/matar_paneer.jpeg",
            text: "Non Veg",
            cardText: "Tandoori Chicken",
            descriptionText: "30 Recipes | 1 Serving",
          ),
          const SizedBox(width: 20),
          TrendingCard(
            image: "assets/cook/matar_paneer.jpeg",
            text: "Cheese",
            cardText: "Aloo Gobi",
            descriptionText: "30 Recipes | 1 Serving",
          ),
        ],
      ),
    );
  }
}
