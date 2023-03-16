import 'package:flutter/material.dart';

class ShoppingCategoryPage extends StatefulWidget {
  const ShoppingCategoryPage({Key? key}) : super(key: key);

  @override
  State<ShoppingCategoryPage> createState() => _ShoppingCategoryPageState();
}

class _ShoppingCategoryPageState extends State<ShoppingCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          "Category",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildCard(
              image: "assets/shopping/category.png",
              item: "241 Item",
              name: "Technology",
            ),
            const SizedBox(height: 10),
            _buildCard(
              image: "assets/shopping/category.png",
              item: "352 Item",
              name: "Life Style",
            ),
            const SizedBox(height: 10),
            _buildCard(
              image: "assets/shopping/category.png",
              item: "784 Item",
              name: "Fashion",
            ),
            const SizedBox(height: 10),
            _buildCard(
              image: "assets/shopping/category.png",
              item: "124 Item",
              name: "Art",
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({
    String? image,
    String? item,
    String? name,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "$image",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 40,
            color: Colors.black54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "$item",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "$name",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
