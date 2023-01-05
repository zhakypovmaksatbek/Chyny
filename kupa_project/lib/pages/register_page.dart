import 'package:flutter/material.dart';
import 'package:kupa_project/Login/view/login_page_view.dart';

import 'package:kupa_project/constant.dart';
import 'package:kupa_project/language/language.dart';
import 'package:kupa_project/pages/home_page.dart';
import 'package:kupa_project/products/button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final bool _isLogin = true;
  String _userEmail = '';
  String _userPassword = '';

  // bool _isOkay = false;

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings().signIn,
                      style: const TextStyle(
                          fontSize: 34, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      Strings().createAccount,
                      style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                    ),
                    const SizedBox(height: 20),
                    _nameText(),
                    _nameTFiled(),
                    _defautlSizedBox20(),
                    _emailText(),
                    _emailTFiled(),
                    _defautlSizedBox20(),
                    _passwordText(),
                    _passwordTField(),
                    _defautlSizedBox20(),
                    ButtonLogin(
                        text: "Катталуу",
                        color: kPrimaryColor,
                        textColor: Colors.white,
                        onTapButton: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return const HomePage();
                              },
                            ));
                          }
                        }),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Strings().haveYou,
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[500]),
                        ),
                        const _textButton(text: "Кирүү"),
                      ],
                    ),
                  ],
                ),
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
      ),
    );
  }

  Text _nameText() {
    return const Text(
      "Аты жөнү",
      textAlign: TextAlign.right,
      style: TextStyle(
          fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
    );
  }

  SizedBox _defautlSizedBox20() => const SizedBox(height: 20);

  Text _passwordText() {
    return const Text(
      "Сыр сөз",
      textAlign: TextAlign.right,
      style: TextStyle(
          fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
    );
  }

  Text _emailText() {
    const data = "Электрондук почта";
    return const Text(
      data,
      textAlign: TextAlign.right,
      style: TextStyle(
          fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
    );
  }

  Container _nameTFiled() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: kPrimaryColor)),
      child: TextFormField(
        validator: (String? value) {
          if (value == null || value.length < 3) {
            return "Сураныч атыңызды жазыңыз";
          }
          return null;
        },
        onSaved: (newValue) {
          _userEmail = newValue ?? '';
        },
        textInputAction: TextInputAction.next,
        autofillHints: const [AutofillHints.name],
        autocorrect: true,
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
            hintText: 'Атыңыз',
            border: InputBorder.none,
            fillColor: Colors.grey),
      ),
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
            hintText: 'Электрондук почтаңыз',
            border: InputBorder.none,
            fillColor: Colors.grey),
      ),
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
            hintText: "Сыр сөз",
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
            builder: (context) => LoginPage(),
          ));
        },
        child: Text(
          text,
          style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
        ));
  }
}
