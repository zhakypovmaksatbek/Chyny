import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Профил",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 250,
            child: Lottie.network(
                "https://assets4.lottiefiles.com/packages/lf20_v7gud2wh.json"),
          ),
          SizedBox(
            height: 250,
            child: Lottie.network(
                "https://assets7.lottiefiles.com/packages/lf20_hvzjb7o5.json"),
          ),
        ],
      )),
    );
  }
}
