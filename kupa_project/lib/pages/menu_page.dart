import 'package:flutter/material.dart';
import 'package:kupa_project/Padding/padding_project.dart';
import 'package:kupa_project/constant.dart';
import 'package:kupa_project/products/categories.dart';
import 'package:kupa_project/products/search_textfield.dart';

import '../products/grid_builder.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);
  final String text = "Our Food";
  final String title = "Special For You";
  final String searchText = "Search Your Menu";
  final double height10 = 10;
  final double height20 = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Menu", style: TextStyle(color: Colors.black)),
        actions: [_notification()],
      ),
      body: Padding(
        padding: Paddigs.horizontalLarge,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text,
                  style:
                      ThemeData().textTheme.headline4!.copyWith(fontSize: 18)),
              Aralyk(height: height10),
              Text(
                title,
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 32,
                    fontWeight: FontWeight.w700),
              ),
              Aralyk(height: height20),
              SearchTextField(text: searchText),
              Aralyk(height: height20),
              const Categories(),
              Aralyk(height: height20),
              const GridBuilderList(),
            ],
          ),
        ),
      ),
    );
  }

  Padding _notification() {
    return Padding(
      padding: Paddigs.horizontalSmoll,
      child: const Icon(
        Icons.notifications_none_outlined,
        color: Colors.black,
        size: 30,
      ),
    );
  }
}

class Aralyk extends StatelessWidget {
  const Aralyk({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}
