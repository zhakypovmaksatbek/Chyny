import 'package:flutter/material.dart';
import 'package:kupa_project/pages/register_page.dart';

import '../constant.dart';
import '../products/button.dart';

class OnboardingPages extends StatelessWidget {
  OnboardingPages({
    Key? key,
    required this.onPress,
    required this.path1,
    required this.title,
    required this.text,
    required this.textBut,
    required this.textButton,
  }) : super(key: key);
  final PageController _controller = PageController();
  final String path1;
  final String title;
  final String text;
  final String textButton;
  final String textBut;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          path1,
          height: 300,
        ),
        SizedBox(
          width: 250,
          child: Text(
            title,
            textAlign: TextAlign.center,
            maxLines: 3,
            style: ThemeData().textTheme.headline1!.copyWith(
                color: Colors.black, fontSize: 34, fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 250,
          child: Text(
            text,
            style: TextStyle(color: Colors.grey[500], fontSize: 16),
            textAlign: TextAlign.center,
            maxLines: 3,
          ),
        ),
        const SizedBox(height: 20),
        ButtonLogin(
          onTapButton: onPress,
          color: kPrimaryColor,
          text: textButton,
          textColor: Colors.white,
        ),
        ButtonLogin(
          onTapButton: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const RegisterPage()));
          },
          color: const Color.fromARGB(255, 229, 244, 229),
          text: textBut,
          textColor: kPrimaryColor,
        ),
      ],
    );
  }
}
