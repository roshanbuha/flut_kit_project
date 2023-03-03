import 'package:flutter/material.dart';

class CookShowCaseScreen extends StatefulWidget {
  const CookShowCaseScreen({Key? key}) : super(key: key);

  @override
  State<CookShowCaseScreen> createState() => _CookShowCaseScreenState();
}

class _CookShowCaseScreenState extends State<CookShowCaseScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          children: [
            const SizedBox(height: 70),
            _buildSearchBar(),
            const SizedBox(height: 15),
            _buildListCategories(),
            const SizedBox(height: 15),
            _buildFoodList(),
            const SizedBox(height: 20),
            _buildFoodList(),
            const SizedBox(height: 20),
            _buildFoodList(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: Container(
            width: 150,
            decoration: const BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Mynerve",
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Container(
            height: 45,
            decoration: const BoxDecoration(
              color: Color(0xFF88464A),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: const Icon(
              Icons.fastfood,
              color: Color(0xFFF37C83),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildListCategories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            _buildViewCard(
              image: Icons.all_inbox,
              title: "All",
            ),
            const SizedBox(width: 15),
            _buildViewCard(
              image: Icons.fastfood_outlined,
              title: "FastFood",
            ),
            const SizedBox(width: 15),
            _buildViewCard(
              image: Icons.all_inbox,
              title: "Pizza",
            ),
            const SizedBox(width: 15),
            _buildViewCard(
              image: Icons.all_inbox,
              title: "Cake",
            ),
            const SizedBox(width: 15),
            _buildViewCard(
              image: Icons.all_inbox,
              title: "Sea Food",
            ),
            const SizedBox(width: 15),
          ],
        ),
      ),
    );
  }

  Widget _buildViewCard({
    IconData? image,
    String? title,
    Color? color,
  }) {
    return GestureDetector(
      child: Card(
        color: const Color(0xFF88464A),
        elevation: 0,
        child: Container(
          width: 70,
          height: 80,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Icon(
                image,
                size: 30,
                color: const Color(0xFFF37C83),
              ),
              const SizedBox(height: 10),
              Text(
                title ?? "",
                style: const TextStyle(
                  color: Color(0xFFF37C83),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFoodList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          "https://c0.wallpaperflare.com/preview/839/412/980/food-and-drink-pizza-pizzas-tomato.jpg",
        ),
        const SizedBox(height: 10),
        const Text(
          "Cacoa Maca Walnut Milk",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "Easy, quick and yet so delicious!",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: const [
            Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
            SizedBox(width: 10),
            Text(
              "100",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(width: 20),
            Icon(
              Icons.timelapse,
              color: Colors.grey,
            ),
            SizedBox(width: 10),
            Text(
              "50'",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(width: 20),
            Text(
              "2 Ingredients",
              style: TextStyle(
                color: Colors.grey,
              ),
            )
          ],
        )
      ],
    );
  }
}