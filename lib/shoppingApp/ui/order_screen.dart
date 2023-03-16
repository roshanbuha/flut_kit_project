import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ShoppingFavoritePage extends StatefulWidget {
  const ShoppingFavoritePage({Key? key}) : super(key: key);

  @override
  State<ShoppingFavoritePage> createState() => _ShoppingFavoritePageState();
}

class _ShoppingFavoritePageState extends State<ShoppingFavoritePage> {
  bool _showFab = true;
  Duration duration = const Duration(milliseconds: 300);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          "Orders",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          final ScrollDirection direction = notification.direction;
          setState(() {
            if (direction == ScrollDirection.reverse) {
              _showFab = false;
            } else if (direction == ScrollDirection.forward) {
              _showFab = true;
            }
          });
          return true;
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                _buildCard(
                  image: "assets/shopping/candies.jpg",
                  name: "Cup Cake",
                  price: "\$35.79",
                  image2: "assets/shopping/candies.jpg",
                  name2: "Roll",
                  price2: "\$45.89",
                  image3: "assets/shopping/candies.jpg",
                  name3: "Biscuit",
                  price3: "\$14.29",
                ),
                _buildCard(
                  image: "assets/shopping/candies.jpg",
                  name: "Unsought",
                  price: "\$35.79",
                  image2: "assets/shopping/candies.jpg",
                  name2: "Roll",
                  price2: "\$45.89",
                  image3: "assets/shopping/candies.jpg",
                  name3: "Biscuit",
                  price3: "\$14.29",
                ),
                _buildCard(
                  image: "assets/shopping/candies.jpg",
                  name: "Cup Cake",
                  price: "\$35.79",
                  image2: "assets/shopping/candies.jpg",
                  name2: "Roll",
                  price2: "\$45.89",
                  image3: "assets/shopping/candies.jpg",
                  name3: "Biscuit",
                  price3: "\$14.29",
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: AnimatedSlide(
        duration: duration,
        offset: _showFab ? Offset.zero : const Offset(0, 0),
        child: AnimatedOpacity(
          duration: duration,
          opacity: _showFab ? 1 : 0,
          child: FloatingActionButton.extended(
            onPressed: () {
              // Add your onPressed code here!
            },
            label: const Text(
              'Create List',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            icon: const Icon(
              Icons.add,
              color: Colors.black,
            ),
            backgroundColor: const Color(0xFF82C0FF),
          ),
        ),
      ),
    );
  }

  Widget _buildCard({
    String? image,
    String? name,
    String? price,
    String? image2,
    String? name2,
    String? price2,
    String? image3,
    String? name3,
    String? price3,
  }) {
    return Card(
      color: const Color(0xFF191B1D),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "List 1",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Remove",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "$image",
              ),
            ),
            title: Text(
              "$name",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "$price",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: const Icon(
              Icons.add_circle_outline,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "$image2",
              ),
            ),
            title: Text(
              "$name2",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "$price2",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: const Icon(
              Icons.add_circle_outline,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "$image3",
              ),
            ),
            title: Text(
              "$name3",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "$price3",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: const Icon(
              Icons.add_circle_outline,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
