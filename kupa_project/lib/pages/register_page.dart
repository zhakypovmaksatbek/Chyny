import 'package:flutter/material.dart';

import 'package:kupa_project/constant.dart';
import 'package:kupa_project/language/language.dart';
import 'package:kupa_project/pages/home_page.dart';
import 'package:kupa_project/products/password_textFiled.dart';
import 'package:kupa_project/products/button.dart';

import '../products/email_textfiled.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings().signUp,
                  style: const TextStyle(
                      fontSize: 34, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  Strings().createAccount,
                  style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Name",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                const emailTextField(
                  
                  textName: "Your name"),
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
                const SizedBox(height: 20),
                ButtonLogin(
                    text: "Register",
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
                      Strings().haveYou,
                      style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                    ),
                    const _textButton(text: "Sing In"),
                  ],
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Strings().byClicking,
                    style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                  ),
                  const _textButton(text: "Terms and Data Policy")
                ],
              ),
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
