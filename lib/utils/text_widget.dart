import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  TextWidget({Key? key, this.text}) : super(key: key);

  String? text;

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "${widget.text}",
      style: const TextStyle(
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
