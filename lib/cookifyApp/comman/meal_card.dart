import 'package:flutter/material.dart';

class MealCard extends StatefulWidget {
  MealCard({
    this.title,
    this.image,
    this.text,
    this.time,
    Key? key,
  }) : super(key: key);
  String? text;
  String? title;
  String? time;
  String? image;
  @override
  State<MealCard> createState() => _MealCardState();
}

class _MealCardState extends State<MealCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${widget.text}',
          style: const TextStyle(
            fontFamily: "Mynerve",
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Card(
          color: Colors.white10,
          child: ListTile(
            title: Text(
              "${widget.title}",
              style: const TextStyle(
                fontFamily: "Mynerve",
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "${widget.time}",
              style: const TextStyle(
                fontFamily: "Mynerve",
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "${widget.image}",
                fit: BoxFit.cover,
                width: 50,
                height: 50,
              ),
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
