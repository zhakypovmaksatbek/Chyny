// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:kupa_project/constant.dart';

class menuFood extends StatelessWidget {
  const menuFood({
    Key? key,
    required this.image,
    required this.title,
    required this.count,
  }) : super(key: key);

  final String image;
  final String title;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  image,
                  height: 200,
                ),
              ),
              Text(title,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w700)),
              Text(count + " Сом",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: kPrimaryColor)),
            ],
          ),
        ),
      ),
    );
  }
}
