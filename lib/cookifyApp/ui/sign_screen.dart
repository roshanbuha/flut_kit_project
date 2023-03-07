import 'package:flut_kit_project/cookifyApp/comman/text_filed_widget.dart';
import 'package:flut_kit_project/cookifyApp/ui/dashbord_screem.dart';
import 'package:flut_kit_project/cookifyApp/ui/forgot_password.dart';
import 'package:flut_kit_project/cookifyApp/ui/login_screen.dart';
import 'package:flutter/material.dart';

class CookSignScreen extends StatefulWidget {
  const CookSignScreen({Key? key}) : super(key: key);

  @override
  State<CookSignScreen> createState() => _CookSignScreenState();
}

class _CookSignScreenState extends State<CookSignScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30),
        child: Column(
          children: [
            _buildImage(),
            _buildNameTextFiled(),
            _buildEmailTextFiled(),
            _buildPasswordTextFiled(),
            const SizedBox(height: 10),
            _buildForgotText(),
            const SizedBox(height: 10),
            _buildButton(),
            const SizedBox(height: 10),
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
          children: const [
            Icon(
              Icons.menu_book,
              size: 55,
              color: Color(0xFFF37C83),
            ),
            SizedBox(height: 20),
            Text(
              "Create an Account",
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

  Widget _buildNameTextFiled() {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: CustomTextFieldWidget(
        controller: nameController,
        prefixIcon: const Icon(
          Icons.person,
          color: Color(0xFFF37C83),
        ),
        hintText: "Name",
        keyboardType: TextInputType.text,
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

  Widget _buildPasswordTextFiled() {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: CustomTextFieldWidget(
        controller: passwordController,
        prefixIcon: const Icon(
          Icons.lock,
          color: Color(0xFFF37C83),
        ),
        hintText: "Password",
        keyboardType: TextInputType.text,
      ),
    );
  }

  Widget _buildForgotText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const CookForgotPassword(),
              ),
            );
          },
          child: const Text(
            "Forgot Password?",
            style: TextStyle(
              color: Color(0xFFF37C83),
              fontWeight: FontWeight.bold,
              fontSize: 15,
              fontFamily: "Mynerve",
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildButton() {
    return SizedBox(
      width: double.maxFinite,
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CookDashBordScreen(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFF37C83),
        ),
        child: const Text(
          "Create an Account",
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
                builder: (context) => const CookLoginScreen(),
              ),
            );
          },
          child: const Text(
            "I have already an account",
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
