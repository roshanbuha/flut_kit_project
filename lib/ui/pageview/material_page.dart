import 'package:flutter/material.dart';

class MaterialPageScreen extends StatefulWidget {
  const MaterialPageScreen({Key? key}) : super(key: key);

  @override
  State<MaterialPageScreen> createState() => _MaterialPageScreenState();
}

class _MaterialPageScreenState extends State<MaterialPageScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
    );
  }
}
