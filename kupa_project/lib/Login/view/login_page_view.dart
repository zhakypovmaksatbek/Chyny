// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:kupa_project/constant.dart';
import 'package:kupa_project/language/language.dart';
import 'package:kupa_project/pages/register_page.dart';
import 'package:kupa_project/products/button.dart';
import 'package:kupa_project/products/outline_button.dart';

import '../../pages/home_page.dart';

class LoginPage extends StatefulWidget {
  //const LoginPage({Key? key,required  this.submitFn}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final bool _isLogin = true;
  String _userEmail = '';

  String _userPassword = '';

  void _trySubmit() {
    final bool? isValid = _formKey.currentState?.validate();
    FocusScope.of(context).unfocus();
    if (isValid!) {
      _formKey.currentState?.save();
    }
  }

  bool _isObscure = true;

  void _isChangeLoading() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: kPrimaryLightColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings().welcome,
                  style: const TextStyle(
                      fontSize: 34, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  Strings().signToYour,
                  style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                ),
                const SizedBox(height: 20),
                _emailText(),
                _emailTFiled(),
                const SizedBox(height: 20),
                _passwordText(),
                _passwordTField(),
                const SizedBox(height: 10),
                _textButton(text: Strings().ForgotPass),
                const SizedBox(height: 20),
                ButtonLogin(
                    text: "Login",
                    color: kPrimaryColor,
                    textColor: Colors.white,
                    onTapButton: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ));
                      }
                    }),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Strings().signToYour,
                      style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                    ),
                    const _textButton(text: "Sing In"),
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
                      style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.black),
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
        ),
      ),
    );
  }

  Text _emailText() {
    return const Text(
      "Email",
      textAlign: TextAlign.right,
      style: TextStyle(
          fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
    );
  }

  Container _passwordTField() {
    return Container(
      //height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: kPrimaryColor)
          //color: const Color.fromARGB(255, 228, 234, 228),
          ),
      child: TextFormField(
        onSaved: (newValue) {
          _userPassword = newValue ?? '';
        },
        validator: (String? value) {
          if (value == null || value.length < 4) {
            return "Сыр сөздү эң аз 6 символ м-н толтуруңуз";
          }
          return null;
        },
        textInputAction: TextInputAction.done,
        autocorrect: true,
        obscureText: _isObscure,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
            hintText: "Your password",
            border: InputBorder.none,
            suffixIcon: IconButton(
                onPressed: _isChangeLoading,
                icon: Icon(_isObscure
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined)),
            fillColor: Colors.grey),
      ),
    );
  }

  Text _passwordText() {
    return const Text(
      "Password",
      textAlign: TextAlign.right,
      style: TextStyle(
          fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
    );
  }

  Container _emailTFiled() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: kPrimaryColor)),
      child: TextFormField(
        validator: (String? value) {
          if (value == null || !value.contains('@') || !value.contains('.')) {
            return "Сураныч почтаңызды туура жазыңыз";
          }
          return null;
        },
        onSaved: (newValue) {
          _userEmail = newValue ?? '';
        },
        textInputAction: TextInputAction.next,
        autofillHints: const [AutofillHints.email],
        autocorrect: true,
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
            hintText: 'Your email',
            border: InputBorder.none,
            fillColor: Colors.grey),
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
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const RegisterPage(),
          ));
        },
        child: Text(
          text,
          style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
        ));
  }
}
