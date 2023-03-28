import 'package:flut_kit_project/shoppingApp/comman/CartListModel.dart';
import 'package:flut_kit_project/shoppingApp/comman/cartlist.dart';
import 'package:flutter/material.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  List<CartListModel> cartListModelList = [
    CartListModel(
      "assets/shopping/sweet_gems.jpg",
      "Pumpkin\nCream",
      "\$13.99",
    ),
    CartListModel(
      "assets/shopping/sweet_gems.jpg",
      "Pumpkin\nCream",
      "\$13.99",
    ),
    CartListModel(
      "assets/shopping/sweet_gems.jpg",
      "Pumpkin\nCream",
      "\$13.99",
    ),
  ];

  int itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          children: [
            const SizedBox(height: 50),
            ListView.builder(
              shrinkWrap: true,
              itemCount: cartListModelList.length,
              itemBuilder: (context, index) {
                return CartList(
                  image: cartListModelList[index].image,
                  name: cartListModelList[index].name,
                  price: cartListModelList[index].price,
                  count: cartListModelList[index].count,
                  onPlusTap: () {
                    cartListModelList[index].getSum();
                    setState(() {});
                  },
                  onMinusTap: () {
                    cartListModelList[index].getMinus();
                    setState(() {});
                  },
                );
              },
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
