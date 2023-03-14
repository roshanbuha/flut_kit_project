import 'package:flut_kit_project/shoppingApp/comman/search_card.dart';
import 'package:flutter/material.dart';

class ShoppingSearch extends StatefulWidget {
  const ShoppingSearch({Key? key}) : super(key: key);

  @override
  State<ShoppingSearch> createState() => _ShoppingSearchState();
}

class _ShoppingSearchState extends State<ShoppingSearch> {
  String? sort;
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Column(
        children: [
          const SizedBox(height: 50),
          _buildSearch(),
          const SizedBox(height: 20),
          _buildGridView(),
        ],
      ),
    );
  }

  Widget _buildSearch() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 40,
            decoration: const BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.search_sharp,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Search",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: GestureDetector(
            onTap: () {
              openBottomSheet(context);
            },
            child: Container(
              height: 40,
              decoration: const BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.compare_arrows_rounded,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Sort",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Container(
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.filter_list,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Filter",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildGridView() {
    return Column(
      children: [
        Row(
          children: [
            SearchCard(
              image: "assets/shopping/popcorn.jpeg",
              name: "Pop corn",
              price: "39.99",
              rating: "3.99",
            ),
            const SizedBox(width: 30),
            SearchCard(
              image: "assets/shopping/popcorn.jpeg",
              name: "Pop corn",
              price: "39.99",
              rating: "3.99",
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            SearchCard(
              image: "assets/shopping/popcorn.jpeg",
              name: "Pop corn",
              price: "39.99",
              rating: "3.99",
            ),
            const SizedBox(width: 30),
            SearchCard(
              image: "assets/shopping/popcorn.jpeg",
              name: "Pop corn",
              price: "39.99",
              rating: "3.99",
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            SearchCard(
              image: "assets/shopping/popcorn.jpeg",
              name: "Pop corn",
              price: "39.99",
              rating: "3.99",
            ),
            const SizedBox(width: 30),
            SearchCard(
              image: "assets/shopping/popcorn.jpeg",
              name: "Pop corn",
              price: "39.99",
              rating: "3.99",
            ),
          ],
        ),
      ],
    );
  }

  openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Radio(
                activeColor: isActive ? Colors.black : Colors.white,
                value: "High",
                groupValue: sort,
                onChanged: (value) {
                  isActive = true;
                  setState(() {
                    sort = value.toString();
                  });
                },
              ),
              title: const Text("Price - High to Low"),
            ),
            ListTile(
              leading: Radio(
                activeColor: isActive ? Colors.black : Colors.white,
                value: "Low",
                groupValue: sort,
                onChanged: (value) {
                  isActive = true;
                  setState(() {
                    sort = value.toString();
                  });
                },
              ),
              title: const Text("Price - Low to High"),
            ),
            ListTile(
              leading: Radio(
                activeColor: isActive ? Colors.black : Colors.white,
                value: "A",
                groupValue: sort,
                onChanged: (value) {
                  isActive = true;
                  setState(() {
                    sort = value.toString();
                  });
                },
              ),
              title: const Text("Name - A to Z"),
            ),
            ListTile(
              leading: Radio(
                activeColor: isActive ? Colors.black : Colors.white,
                value: "Z",
                groupValue: sort,
                onChanged: (value) {
                  isActive = true;
                  setState(() {
                    sort = value.toString();
                  });
                },
              ),
              title: const Text("Name - Z to A"),
            ),
          ],
        );
      },
    );
  }
}
