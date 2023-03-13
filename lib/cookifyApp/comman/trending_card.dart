import 'dart:core';

import 'package:flutter/material.dart';

class TrendingCard extends StatefulWidget {
  TrendingCard({
    Key? key,
    this.text,
    this.cardText,
    this.image,
    this.descriptionText,
  }) : super(key: key);
  String? image;
  String? text;
  String? cardText;
  String? descriptionText;
  @override
  State<TrendingCard> createState() => _TrendingCardState();
}

class _TrendingCardState extends State<TrendingCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "${widget.image}",
              fit: BoxFit.cover,
              height: 350,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80,
                  height: 25,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "${widget.text}",
                      style: const TextStyle(
                        fontFamily: "Mynerve",
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 20,
            child: SizedBox(
              width: 240,
              height: 100,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.black54,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${widget.cardText}",
                            style: const TextStyle(
                              fontFamily: "Mynerve",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const Icon(
                            Icons.bookmark,
                            color: Color(0xFFF37C83),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "${widget.descriptionText}",
                        style: const TextStyle(
                          fontFamily: "Mynerve",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
