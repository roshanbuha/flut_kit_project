import 'package:flutter/material.dart';

class CardWidgets extends StatefulWidget {
  CardWidgets({
    Key? key,
    this.color,
    this.title,
    this.icon,
  }) : super(key: key);

  Color? color;
  String? title;
  IconData? icon;

  @override
  State<CardWidgets> createState() => _CardWidgetsState();
}

class _CardWidgetsState extends State<CardWidgets> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.42,
        height: 120,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              size: 50,
              color: Colors.indigo,
            ),
            const SizedBox(height: 10),
            Text(
              widget.title ?? "",
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
