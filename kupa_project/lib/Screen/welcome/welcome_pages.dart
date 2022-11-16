// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:kupa_project/constant.dart';
import 'package:kupa_project/language/language.dart';
import 'package:kupa_project/pages/login_page.dart';
import 'package:kupa_project/pages/onboarding_pages.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final String _path = "assets/images/kupaa.png";

  final String _path1 = "assets/images/salad.png";

  final String _path2 = "assets/images/courier.png";

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBody: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryLightColor,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: Image.asset(
                _path,
                height: 24,
              ),
            ),
            const Text(
              "Чыны",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
          child: Stack(
            children: [
              PageView(
                controller: _controller,
                children: [
                  OnboardingPages(
                    textBut: Strings().signIn,
                    textButton: Strings().continueText,
                    onPress: () {
                      _controller.nextPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeIn);
                    },
                    path1: _path1,
                    text: Strings().pageTextOne,
                    title: Strings().pagesTitle,
                  ),
                  OnboardingPages(
                    textBut: Strings().signIn,
                    textButton: Strings().getStarted,
                    onPress: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const LoginPage();
                        },
                      ));
                    },
                    path1: _path2,
                    text: Strings().pageTextTwo,
                    title: Strings().pagesTitleTwo,
                  ),
                ],
              ),
              Container(
                  alignment: const Alignment(0, 0.90),
                  child: SmoothPageIndicator(
                      effect: WormEffect(
                          activeDotColor: kPrimaryColor,
                          dotColor: const Color.fromARGB(255, 229, 244, 229)),
                      controller: _controller,
                      count: 2))
            ],
          ),
        ),
      ),
    );
  }
}
