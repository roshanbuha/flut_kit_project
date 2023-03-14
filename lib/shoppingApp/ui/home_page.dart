import 'package:flut_kit_project/shoppingApp/comman/for_you_card.dart';
import 'package:flut_kit_project/shoppingApp/comman/popular_card.dart';
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
            const SizedBox(height: 10),
            _buildPopularText(),
            const SizedBox(height: 10),
            _buildPopularList(),
            const SizedBox(height: 10),
            _buildForText(),
            _buildForList(),
            const SizedBox(height: 25),
            _buildBestSellerText(),
            const SizedBox(height: 25),
            _buildGridView(),
            const SizedBox(height: 25),
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
      height: 210,
      child: Card(
        color: Colors.white10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  const SizedBox(height: 15),
                  const Text(
                    "Colorful Sandal",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "\$49.99",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Image.asset(
                  "assets/shopping/sandal_image.png",
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

  Widget _buildPopularText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Popular Deals",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "View All",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildPopularList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PopularCard(
            image: "assets/shopping/popcorn.jpeg",
            name: "Pop corn",
            price: "\$ 45.99",
          ),
          const SizedBox(width: 10),
          PopularCard(
            image: "assets/shopping/cosmic.jpeg",
            name: "Cosmic bang",
            price: "\$ 78.99",
          ),
          const SizedBox(width: 10),
          PopularCard(
            image: "assets/shopping/sweet_gems.jpg",
            name: "Sweet Gems",
            price: "\$ 35.99",
          ),
          const SizedBox(width: 10),
          PopularCard(
            image: "assets/shopping/toffees.jpg",
            name: "Toffees",
            price: "\$ 28.49",
          ),
          const SizedBox(width: 10),
          PopularCard(
            image: "assets/shopping/candies.jpg",
            name: "Candies",
            price: "\$ 15.99",
          ),
        ],
      ),
    );
  }

  Widget _buildForText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "For you",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "View All",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildForList() {
    return Column(
      children: [
        ForYouCard(
          image: "assets/shopping/sweet_gems.jpg",
          name: "Sweet Gems",
          text: "El Primo",
          price: "\$ 1470",
        ),
        const SizedBox(height: 20),
        ForYouCard(
          image: "assets/shopping/sweet_gems.jpg",
          name: "Lipsticks",
          text: "El Primo",
          price: "\$ 1486",
        ),
        const SizedBox(height: 20),
        ForYouCard(
          image: "assets/shopping/sweet_gems.jpg",
          name: "Candies",
          text: "El Primo",
          price: "\$ 1456",
        ),
      ],
    );
  }

  Widget _buildBestSellerText() {
    return Row(
      children: const [
        Text(
          "Best sellers",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildGridView() {
    return GridView(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      primary: false,
      children: <Widget>[
        Column(
          children: const [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/cook/profile_1.jpeg"),
            ),
            SizedBox(height: 8),
            Text(
              "Liss's Shop",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Column(
          children: const [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/cook/profile_1.jpeg"),
            ),
            SizedBox(height: 8),
            Text(
              "Ekk Shop",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Column(
          children: const [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/cook/profile_1.jpeg"),
            ),
            SizedBox(height: 8),
            Text(
              "Shop Center",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Column(
          children: const [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/cook/profile_1.jpeg"),
            ),
            SizedBox(height: 8),
            Text(
              "Sweety",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
