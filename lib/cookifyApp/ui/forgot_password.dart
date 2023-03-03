import 'package:flut_kit_project/cookifyApp/comman/text_filed_widget.dart';
import 'package:flut_kit_project/cookifyApp/ui/sign_screen.dart';
import 'package:flutter/material.dart';

class CookForgotPassword extends StatefulWidget {
  const CookForgotPassword({Key? key}) : super(key: key);

  @override
  State<CookForgotPassword> createState() => _CookForgotPasswordState();
}

class _CookForgotPasswordState extends State<CookForgotPassword> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30),
        child: Column(
          children: [
            const SizedBox(height: 80),
            _buildImage(),
            _buildEmailTextFiled(),
            const SizedBox(height: 30),
            _buildButton(),
            const SizedBox(height: 20),
            _buildHaveAccount(),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(
              Icons.menu_book,
              size: 55,
              color: Color(0xFFF37C83),
            ),
            SizedBox(height: 20),
            Text(
              "Forgot Password",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF37C83),
                fontFamily: "Mynerve",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmailTextFiled() {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: CustomTextFieldWidget(
        controller: emailController,
        prefixIcon: const Icon(
          Icons.email_outlined,
          color: Color(0xFFF37C83),
        ),
        hintText: "Email Address",
        keyboardType: TextInputType.text,
      ),
    );
  }

  Widget _buildButton() {
    return SizedBox(
      width: double.maxFinite,
      height: 45,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFF37C83),
        ),
        child: const Text(
          "Forgot Password",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: "Mynerve",
          ),
        ),
      ),
    );
  }

  Widget _buildHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const CookSignScreen(),
              ),
            );
          },
          child: const Text(
            "I have't an account",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: "Mynerve",
              color: Color(0xFFF37C83),
            ),
          ),
        )
      ],
    );
  }
}
