import 'package:flut_kit_project/shoppingApp/comman/search_card.dart';
import 'package:flutter/material.dart';

class ShoppingSearch extends StatefulWidget {
  const ShoppingSearch({Key? key}) : super(key: key);

  @override
  State<ShoppingSearch> createState() => _ShoppingSearchState();
}

class _ShoppingSearchState extends State<ShoppingSearch> {
  String? sort;
  bool isMenSelected = false;
  bool isWomanSelected = false;
  bool isShoesSelected = false;
  bool isSaleSelected = false;
  bool isMsSelected = false;
  bool isSSelected = false;
  bool isMSelected = false;
  bool isLSelected = false;
  bool isXlSelected = false;
  List<Color> colors = [];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          children: [
            const SizedBox(height: 50),
            _buildSearch(),
            const SizedBox(height: 20),
            _buildGridView(),
          ],
        ),
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
              openBottomSheet();
            },
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
          child: GestureDetector(
            onTap: () {
              filterBottomSheet();
            },
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
        ),
      ],
    );
  }

  Widget _buildGridView() {
    return Column(
      children: [
        GridView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
          ),
          children: [
            SearchCard(
              image: "assets/shopping/popcorn.jpeg",
              name: "Pop corn",
              price: "39.99",
              rating: "3.99",
            ),
            SearchCard(
              image: "assets/shopping/popcorn.jpeg",
              name: "Pop corn",
              price: "39.99",
              rating: "3.99",
            ),
            SearchCard(
              image: "assets/shopping/popcorn.jpeg",
              name: "Pop corn",
              price: "39.99",
              rating: "3.99",
            ),
            SearchCard(
              image: "assets/shopping/popcorn.jpeg",
              name: "Pop corn",
              price: "39.99",
              rating: "3.99",
            ),
            SearchCard(
              image: "assets/shopping/popcorn.jpeg",
              name: "Pop corn",
              price: "39.99",
              rating: "3.99",
            ),
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

  openBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(height: 20),
                ListTile(
                  leading: Radio(
                    activeColor: Colors.black,
                    value: "High",
                    groupValue: sort,
                    onChanged: (value) {
                      sort = value.toString();
                      setState(() {});
                    },
                  ),
                  title: const Text("Price - High to Low"),
                ),
                ListTile(
                  leading: Radio(
                    activeColor: Colors.black,
                    value: "Low",
                    groupValue: sort,
                    onChanged: (value) {
                      sort = value.toString();
                      setState(() {});
                    },
                  ),
                  title: const Text("Price - Low to High"),
                ),
                ListTile(
                  leading: Radio(
                    activeColor: Colors.black,
                    value: "AToZ",
                    groupValue: sort,
                    onChanged: (value) {
                      sort = value.toString();
                      setState(() {});
                    },
                  ),
                  title: const Text("Name - A to Z"),
                ),
                ListTile(
                  leading: Radio(
                    activeColor: Colors.black,
                    value: "ZToA",
                    groupValue: sort,
                    onChanged: (value) {
                      setState(() {
                        sort = value.toString();
                      });
                    },
                  ),
                  title: const Text("Name - Z to A"),
                ),
                const SizedBox(height: 20),
              ],
            );
          },
        );
      },
    );
  }

  filterBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(),
                    ),
                    const Expanded(
                      flex: 4,
                      child: Text(
                        "Filter",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const CircleAvatar(
                          child: Icon(
                            Icons.done,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10)
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Type",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          isMenSelected = !isMenSelected;
                          setState(() {});
                        },
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            color: isMenSelected ? Colors.blue : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "Men",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          isWomanSelected = !isWomanSelected;
                          setState(() {});
                        },
                        child: Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            color: isWomanSelected ? Colors.blue : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "Woman",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          isShoesSelected = !isShoesSelected;
                          setState(() {});
                        },
                        child: Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            color: isShoesSelected ? Colors.blue : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "Shoes",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          isSaleSelected = !isSaleSelected;
                          setState(() {});
                        },
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            color: isSaleSelected ? Colors.blue : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "Sale",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Color",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          if (colors.contains(Colors.black)) {
                            colors.remove(Colors.black);
                          } else {
                            colors.add(Colors.black);
                          }
                          setState(() {});
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Icon(
                            colors.contains(Colors.black) ? Icons.done : null,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          if (colors.contains(Colors.red)) {
                            colors.remove(Colors.red);
                          } else {
                            colors.add(Colors.red);
                          }
                          setState(() {});
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          child: Icon(
                            colors.contains(Colors.red) ? Icons.done : null,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          if (colors.contains(Colors.orange)) {
                            colors.remove(Colors.orange);
                          } else {
                            colors.add(Colors.orange);
                          }
                          setState(() {});
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.orange,
                          child: Icon(
                            colors.contains(Colors.orange) ? Icons.done : null,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          if (colors.contains(Colors.green)) {
                            colors.remove(Colors.green);
                          } else {
                            colors.add(Colors.green);
                          }
                          setState(() {});
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Icon(
                            colors.contains(Colors.green) ? Icons.done : null,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          if (colors.contains(Colors.purple)) {
                            colors.remove(Colors.purple);
                          } else {
                            colors.add(Colors.purple);
                          }
                          setState(() {});
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.purple,
                          child: Icon(
                            colors.contains(Colors.purple) ? Icons.done : null,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "Size",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          isMsSelected = !isMsSelected;
                          setState(() {});
                        },
                        child: SizedBox(
                          width: 50,
                          height: 60,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: const BorderSide(
                                color: Colors.grey,
                                width: 2.0,
                              ),
                            ),
                            elevation: 0,
                            color: isMsSelected ? Colors.blue : Colors.white,
                            child: const Center(
                              child: Text("Ms"),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          isSSelected = !isSSelected;
                          setState(() {});
                        },
                        child: SizedBox(
                          width: 50,
                          height: 60,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: const BorderSide(
                                  color: Colors.grey, width: 2.0),
                            ),
                            elevation: 0,
                            color: isSSelected ? Colors.blue : Colors.white,
                            child: const Center(
                              child: Text("S"),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          isMSelected = !isMSelected;
                          setState(() {});
                        },
                        child: SizedBox(
                          width: 50,
                          height: 60,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: const BorderSide(
                                  color: Colors.grey, width: 2.0),
                            ),
                            elevation: 0,
                            color: isMSelected ? Colors.blue : Colors.white,
                            child: const Center(
                              child: Text("M"),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          isLSelected = !isLSelected;
                          setState(() {});
                        },
                        child: SizedBox(
                          width: 50,
                          height: 60,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: const BorderSide(
                                  color: Colors.grey, width: 2.0),
                            ),
                            elevation: 0,
                            color: isLSelected ? Colors.blue : Colors.white,
                            child: const Center(
                              child: Text("L"),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          isXlSelected = !isXlSelected;
                          setState(() {});
                        },
                        child: SizedBox(
                          width: 50,
                          height: 60,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: const BorderSide(
                                  color: Colors.grey, width: 2.0),
                            ),
                            elevation: 0,
                            color: isXlSelected ? Colors.blue : Colors.white,
                            child: const Center(
                              child: Text("XL"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
              ],
            );
          },
        );
      },
    );
  }
}
