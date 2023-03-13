import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flut_kit_project/cookifyApp/comman/meal_card.dart';
import 'package:flut_kit_project/cookifyApp/ui/recipe_screen.dart';
import 'package:flutter/material.dart';

class CookMealScreen extends StatefulWidget {
  const CookMealScreen({Key? key}) : super(key: key);

  @override
  State<CookMealScreen> createState() => _CookMealScreenState();
}

class _CookMealScreenState extends State<CookMealScreen> {
  DateTime _selectedValue = DateTime.now();
  DatePickerController _controller = DatePickerController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            const SizedBox(height: 70),
            _buildTodayText(),
            const SizedBox(height: 15),
            _buildDate(),
            const SizedBox(height: 20),
            _buildCard(),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CookRecipeScreen(),
                  ),
                );
              },
              child: MealCard(
                text: "Breakfast",
                title: "Poached Egg",
                time: "Breakfast Time : 07:30",
                image: "assets/cook/egg_image.jpeg",
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CookRecipeScreen(),
                  ),
                );
              },
              child: MealCard(
                text: "Lunch",
                title: "Burger",
                time: "Lunch Time : 01:10",
                image: "assets/cook/burger.jpeg",
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CookRecipeScreen(),
                  ),
                );
              },
              child: MealCard(
                text: "Snacks",
                title: "lemonade",
                time: "Snacks Time : 05:15",
                image: "assets/cook/lemon.jpeg",
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CookRecipeScreen(),
                  ),
                );
              },
              child: MealCard(
                text: "Dinner",
                title: "Pop Corn",
                time: "Dinner Time : 08:30",
                image: "assets/cook/pop_corn.jpeg",
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildTodayText() {
    return Row(
      children: const [
        Text(
          "Today's Plan",
          style: TextStyle(
            fontFamily: "Mynerve",
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildDate() {
    return DatePicker(
      DateTime.now(),
      width: 60,
      height: 80,
      controller: _controller,
      initialSelectedDate: DateTime.now(),
      selectionColor: const Color(0xFFF37C83),
      selectedTextColor: Colors.white,
      monthTextStyle: const TextStyle(color: Colors.white),
      dayTextStyle: const TextStyle(color: Colors.white),
      dateTextStyle: const TextStyle(color: Colors.white),
      onDateChange: (date) {
        setState(() {
          _selectedValue = date;
        });
      },
    );
  }

  Widget _buildCard() {
    return SizedBox(
      width: double.infinity,
      height: 180,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: const Color(0xFF88464A),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                "Vitamins & Minerals",
                style: TextStyle(
                  fontFamily: "Mynerve",
                  color: Color(0xFFF37C83),
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ),
            const Text(
              "How Much Should You Take?",
              style: TextStyle(
                fontFamily: "Mynerve",
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          "80",
                          style: TextStyle(
                            fontFamily: "Mynerve",
                            color: Color(0xFFF37C83),
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                        Text(
                          "Vitamin A",
                          style: TextStyle(
                            fontFamily: "Mynerve",
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const VerticalDivider(
                    color: Color(0xFFF37C83),
                    width: 10,
                    thickness: 3,
                  ),
                  const SizedBox(width: 25),
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          "16",
                          style: TextStyle(
                            fontFamily: "Mynerve",
                            color: Color(0xFFF37C83),
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                        Text(
                          "Vitamin B",
                          style: TextStyle(
                            fontFamily: "Mynerve",
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const VerticalDivider(
                    color: Color(0xFFF37C83),
                    width: 10,
                    thickness: 3,
                  ),
                  const SizedBox(width: 25),
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          "97",
                          style: TextStyle(
                            fontFamily: "Mynerve",
                            color: Color(0xFFF37C83),
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                        Text(
                          "Water",
                          style: TextStyle(
                            fontFamily: "Mynerve",
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
