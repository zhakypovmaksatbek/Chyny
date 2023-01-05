import 'package:flutter/material.dart';
import 'package:kupa_project/Onboard/view/onboarding_page_view.dart';
import 'package:kupa_project/constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  final String path = "assets/images/kupa.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      // appBar: AppBar(
      //   backgroundColor: kPrimaryColor,
      //   elevation: 0,
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return const OnboardingPageView();
            },
          ));
        },
        hoverElevation: 5,
        backgroundColor: kPrimaryLightColor,
        child: Icon(
          Icons.navigate_next_outlined,
          color: kPrimaryColor,
          size: 30,
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Center(
                child: Image.asset(
                  path,
                  width: 60,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  "Чыны",
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
