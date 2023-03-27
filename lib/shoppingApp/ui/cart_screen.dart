import 'package:flutter/material.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          children: [
            const SizedBox(height: 50),
            _buildForList(
              image: "assets/shopping/sweet_gems.jpg",
              name: "Pumpkin\nCream",
              price: "\$13.99",
            ),
            const SizedBox(height: 15),
            _buildForList(
              image: "assets/shopping/sweet_gems.jpg",
              name: "Carrom\nRoll",
              price: "\$13.99",
            ),
            const SizedBox(height: 15),
            _buildForList(
              image: "assets/shopping/sweet_gems.jpg",
              name: "Other\nSeed",
              price: "\$13.99",
            ),
            const SizedBox(height: 15),
            const Divider(color: Colors.grey),
            const SizedBox(height: 15),
            _buildDiscountText(),
            const SizedBox(height: 15),
            _buildTotalText(),
            const SizedBox(height: 15),
            _buildButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildForList({
    String? image,
    String? name,
    String? price,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 110,
      child: Card(
        color: Colors.white10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        elevation: 10,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                "$image",
                fit: BoxFit.cover,
                height: 120,
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(top: 15, right: 20, left: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "$name",
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.exposure_plus_1,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(width: 100),
                        Text(
                          "1",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "$price",
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 5),
                            GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.exposure_minus_1,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDiscountText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Discount",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Text(
          "-\$9.99",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Widget _buildTotalText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Total",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Text(
          "\$79.99",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Widget _buildButton() {
    return SizedBox(
      height: 40,
      child: MaterialButton(
        onPressed: () {},
        color: Colors.lightBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.shopping_cart_outlined),
            SizedBox(width: 10),
            Text("CHECK OUT"),
          ],
        ),
      ),
    );
  }
}
