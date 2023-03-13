import 'package:flutter/material.dart';

class CookRecipeScreen extends StatefulWidget {
  const CookRecipeScreen({Key? key}) : super(key: key);

  @override
  State<CookRecipeScreen> createState() => _CookRecipeScreenState();
}

class _CookRecipeScreenState extends State<CookRecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.transparent,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.favorite_border,
              color: Color(0xFFF37C83),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              _buildWaterText(),
              const SizedBox(height: 10),
              _buildDescriptionText(),
              const SizedBox(height: 20),
              _buildNutritionText(),
              const SizedBox(height: 20),
              _buildIngredientsText(),
              const SizedBox(height: 20),
              _buildPreparationText(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: const Color(0xFFF37C83),
        label: const Text(
          'Watch Video',
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Mynerve",
            fontWeight: FontWeight.bold,
          ),
        ),
        icon: const Icon(Icons.video_collection_sharp),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildWaterText() {
    return Row(
      children: const [
        Text(
          "Watercress salad",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Mynerve",
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildDescriptionText() {
    return Row(
      children: const [
        Text(
          "White Onion, Fennel and watercress Salad",
          style: TextStyle(
            color: Colors.grey,
            fontFamily: "Mynerve",
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildNutritionText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Nutritions",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Mynerve",
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 110,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xFF88464A),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Row(
                  children: [
                    const SizedBox(width: 8),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF37C83),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          "250",
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 4),
                        Text(
                          "Calories",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Mynerve",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Kcal",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "Mynerve",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 110,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xFF88464A),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Row(
                  children: [
                    const SizedBox(width: 8),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF37C83),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          "35",
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 4),
                        Text(
                          "Carbo",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Mynerve",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "g",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "Mynerve",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 110,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xFF88464A),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Row(
                  children: [
                    const SizedBox(width: 8),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF37C83),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          "6.8",
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 4),
                        Text(
                          "Protein",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Mynerve",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "g",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "Mynerve",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Column(
          children: const [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/cook/salad.jpeg"),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildIngredientsText() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Ingredients",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Mynerve",
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "2 cups pecans, divide",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Mynerve",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "1 tablespoon unsalted butter, melted",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Mynerve",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "11/2 tablespoon grated Parmesan cheese (Optional)",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Mynerve",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "1 teaspoon sea salt",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Mynerve",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "1/2 teaspoon ground black pepper",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Mynerve",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "1 tablespoon lemon juice (Optional)",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Mynerve",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPreparationText() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Preparation",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Mynerve",
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Place the asparagus into a mixing bowl, and\ndrizzle with the olive oil. Toss to coat the\nspears, then sprinkle with Parmesan cheese,\ngarlic, salt, and paper. Arrange the asparagus\nonto a baking sheet in a single layer.",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Mynerve",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Bake in the preheated oven until just tender, 12\nto 15 minutes depending on thickness. Sprinkle\nwith lemon juice before serving.",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Mynerve",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Bake in the preheated oven until just tender, 12\nto 15 minutes depending on thickness. Sprinkle\nwith lemon juice before serving.",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Mynerve",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
