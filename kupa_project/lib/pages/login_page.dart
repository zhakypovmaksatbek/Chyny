// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:kupa_project/constant.dart';
import 'package:kupa_project/language/language.dart';
import 'package:kupa_project/pages/home_page.dart';
import 'package:kupa_project/products/password_textFiled.dart';
import 'package:kupa_project/products/button.dart';
import 'package:kupa_project/products/outline_button.dart';

import '../products/email_textfiled.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          backgroundColor: kPrimaryLightColor,
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Strings().welcome,
              style: const TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              Strings().signToYour,
              style: TextStyle(fontSize: 16, color: Colors.grey[500]),
            ),
            const SizedBox(height: 20),
            const Text(
              "Email",
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            const emailTextField(textName: "Your email"),
            const SizedBox(height: 20),
            const Text(
              "Password",
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            const Password(),
            const SizedBox(height: 10),
            _textButton(text: Strings().ForgotPass),
            const SizedBox(height: 20),
            ButtonLogin(
                text: "Login",
                color: kPrimaryColor,
                textColor: Colors.white,
                onTapButton: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
                }),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Strings().signToYour,
                  style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                ),
                const _textButton(text: "Sing Up"),
              ],
            ),
            Center(
              child: Text(
                "-------------------------Or with-------------------------",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[500]),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(primary: Colors.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/google.png",
                        height: 20,
                      ),
                      const SizedBox(width: 10),
                      const Text("Sign in with Google")
                    ],
                  )),
            ),
            const SizedBox(height: 20),
            const OutlinedButtons(
              icon: Icons.apple,
              text: "Sign in with Apple",
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class _textButton extends StatelessWidget {
  const _textButton({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
        ));
  }
}
