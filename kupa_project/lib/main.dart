import 'package:flutter/material.dart';
import 'package:kupa_project/Screen/welcome/welcome_screen.dart';
import 'package:kupa_project/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kupa Food',
      theme: ThemeData(
        
          tabBarTheme: TabBarTheme(labelColor: kPrimaryColor,
          ),
          appBarTheme: ThemeData().appBarTheme.copyWith(
              backgroundColor: kPrimaryLightColor,
              elevation: 0,
              centerTitle: true,
              iconTheme: const IconThemeData(color: Colors.black)),
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kPrimaryLightColor),
      home: const WelcomeScreen(),
    );
  }
}
