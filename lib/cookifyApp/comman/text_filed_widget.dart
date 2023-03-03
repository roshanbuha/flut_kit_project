import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatefulWidget {
  CustomTextFieldWidget({
    this.prefixIcon,
    this.suffixIcon,
    this.iconColor,
    this.hintText,
    this.keyboardType,
    this.onTap,
    this.controller,
    this.maxLength,
    this.validation,
    this.obscureText,
    Key? key,
  }) : super(key: key);

  final Widget? prefixIcon;
  final Widget? suffixIcon;
  Color? iconColor;
  int? maxLength;
  String? hintText;
  final TextInputType? keyboardType;
  final Function? onTap;
  final TextEditingController? controller;
  final validation;
  bool? obscureText = false;

  @override
  State<CustomTextFieldWidget> createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF88464A),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: TextFormField(
        obscureText: widget.obscureText ?? false,
        validator: widget.validation,
        onTap: () => widget.onTap,
        cursorColor: Colors.black12,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        maxLength: widget.maxLength,
        decoration: InputDecoration(
          counterText: "",
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: widget.prefixIcon,
          ),
          suffixIcon: widget.suffixIcon,
          prefixIconConstraints:
              const BoxConstraints(maxHeight: 50, maxWidth: 50),
          iconColor: widget.iconColor,
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: Color(0xFFF37C83),
            fontFamily: "Mynerve",
          ),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
