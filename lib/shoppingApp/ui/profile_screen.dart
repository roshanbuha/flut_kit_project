import 'package:flut_kit_project/shoppingApp/ui/category_page.dart';
import 'package:flut_kit_project/shoppingApp/ui/chat_bot_screen.dart';
import 'package:flut_kit_project/shoppingApp/ui/history_page.dart';
import 'package:flut_kit_project/shoppingApp/ui/order_screen.dart';
import 'package:flut_kit_project/ui/dashbord_page.dart';
import 'package:flutter/material.dart';

class ShoppingProfileScreen extends StatefulWidget {
  const ShoppingProfileScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingProfileScreen> createState() => _ShoppingProfileScreenState();
}

class _ShoppingProfileScreenState extends State<ShoppingProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          children: [
            const SizedBox(height: 50),
            _buildImage(),
            const SizedBox(height: 20),
            _buildContainer(),
            const SizedBox(height: 20),
            _buildList(),
            const SizedBox(height: 20),
            _buildButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: const [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                "assets/cook/profile_1.jpeg",
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Derrick Malone",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
          ],
        )
      ],
    );
  }

  Widget _buildContainer() {
    return Container(
      color: Colors.lightBlueAccent,
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: const [
                Icon(Icons.info_outline),
                SizedBox(width: 10),
                Text(
                  "Gold member",
                  style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Text(
              "upgrade",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildList() {
    return Column(
      children: [
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ShoppingCategoryPage(),
              ),
            );
          },
          leading: const Icon(
            Icons.category,
            color: Colors.white,
          ),
          title: const Text(
            "Category",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ),
        const Divider(color: Colors.grey),
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ShoppingHistoryPage(),
              ),
            );
          },
          leading: const Icon(
            Icons.history,
            color: Colors.white,
          ),
          title: const Text(
            "History",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ),
        const Divider(color: Colors.grey),
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ShoppingFavoritePage(),
              ),
            );
          },
          leading: const Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
          title: const Text(
            "Favorite",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ),
        const Divider(color: Colors.grey),
        const ListTile(
          leading: Icon(
            Icons.payment,
            color: Colors.white,
          ),
          title: Text(
            "payment",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ),
        const Divider(color: Colors.grey),
        const ListTile(
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: Text(
            "Mega Menu",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ),
        const Divider(color: Colors.grey),
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ChatbotDialogflow(),
              ),
            );
          },
          leading: const Icon(
            Icons.support_agent,
            color: Colors.white,
          ),
          title: const Text(
            "Help & Support",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DashbordPage(),
              ),
            );
          },
          color: Colors.lightBlueAccent,
          child: Row(
            children: const [
              Icon(Icons.login),
              SizedBox(width: 10),
              Text("LOGOUT"),
            ],
          ),
        ),
      ],
    );
  }
}
