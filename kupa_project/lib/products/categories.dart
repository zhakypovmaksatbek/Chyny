import 'package:flutter/material.dart';
import 'package:kupa_project/Padding/padding_project.dart';

import '../constant.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "All",
    "Featured",
    "Top of Week",
    "Soup",
    "Seafood"
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) => GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Padding(
          padding: Paddigs.horizontalSmoll,
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                categories[index],
                style: TextStyle(
                    color: _selectedIndex == index
                        ? Colors.black
                        : Colors.grey[500],
                    fontSize: _selectedIndex == index ? 20 : 18,
                    fontWeight: _selectedIndex == index
                        ? FontWeight.w500
                        : FontWeight.normal),
              ),
              Container(
                margin: EdgeInsets.only(top: kDefaulPadding / 4, bottom: 1),
                height: 3,
                width: 20,
                color: _selectedIndex == index
                    ? kPrimaryColor
                    : Colors.transparent,
              )
            ],
          )),
        ),
      );
}
