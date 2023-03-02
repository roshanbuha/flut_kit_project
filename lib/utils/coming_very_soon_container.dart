import 'package:flutter/material.dart';

class ComingVerySoon extends StatefulWidget {
  ComingVerySoon({Key? key, this.text}) : super(key: key);

  String? text;

  @override
  State<ComingVerySoon> createState() => _ComingVerySoonState();
}

class _ComingVerySoonState extends State<ComingVerySoon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.indigo.shade50,
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      width: 375,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${widget.text}",
            style: const TextStyle(
              color: Colors.indigo,
            ),
          ),
        ],
      ),
    );
  }
}
