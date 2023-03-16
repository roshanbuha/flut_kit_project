import 'package:flutter/material.dart';

class ShoppingHistoryPage extends StatefulWidget {
  const ShoppingHistoryPage({Key? key}) : super(key: key);

  @override
  State<ShoppingHistoryPage> createState() => _ShoppingHistoryPageState();
}

class _ShoppingHistoryPageState extends State<ShoppingHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: const Text(
          "Orders",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            _buildCard(
              order: "Order 4568\n\$ 49.49",
              status: "IN PROGRESS",
              date: "12 April 2020, 1:45",
            ),
            const SizedBox(height: 15),
            _buildCard(
              order: "Order 1478\n\$ 54.99",
              status: "DELIVERED",
              date: "14 Feb 2020, 12:04",
            ),
            const SizedBox(height: 15),
            _buildCard(
              order: "Order 1123\n\$ 69.99",
              status: "DELIVERED",
              date: "12 April 2020, 1:45",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({
    String? order,
    String? status,
    String? date,
  }) {
    return Card(
      color: const Color(0xFF191B1D),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$order",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "$status",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Text(
                  "$date",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/shopping/candies.jpg",
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/shopping/candies.jpg",
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/shopping/candies.jpg",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
