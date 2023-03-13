import 'package:flutter/material.dart';

class FoodCategoryCard extends StatefulWidget {
  FoodCategoryCard({
    this.image,
    this.title,
    this.color,
    Key? key,
  }) : super(key: key);
  IconData? image;
  String? title;
  Color? color;
  @override
  State<FoodCategoryCard> createState() => _FoodCategoryCardState();
}

class _FoodCategoryCardState extends State<FoodCategoryCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        color: const Color(0xFF88464A),
        elevation: 0,
        child: Container(
          width: 70,
          height: 80,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Icon(
                widget.image,
                size: 30,
                color: const Color(0xFFF37C83),
              ),
              const SizedBox(height: 10),
              Text(
                "${widget.title}",
                style: const TextStyle(
                  color: Color(0xFFF37C83),
                  fontFamily: "Mynerve",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
