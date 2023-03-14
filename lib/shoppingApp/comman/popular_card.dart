import 'dart:core';

import 'package:flutter/material.dart';

class PopularCard extends StatefulWidget {
  PopularCard({
    Key? key,
    this.name,
    this.price,
    this.image,
  }) : super(key: key);
  String? image;
  String? name;
  String? price;

  @override
  State<PopularCard> createState() => _PopularCardState();
}

class _PopularCardState extends State<PopularCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "${widget.image}",
            fit: BoxFit.cover,
            height: 150,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "${widget.name}",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          "${widget.price}",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
