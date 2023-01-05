import 'package:flutter/material.dart';
import 'package:kupa_project/Onboard/model/onboard_model.dart';

class OnboardCard extends StatelessWidget {
  const OnboardCard({Key? key, required this.model}) : super(key: key);
  final OnBoardModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          model.imageWithPath,
          height: 300,
        ),
        Text(
          model.title,
          textAlign: TextAlign.center,
          style: ThemeData().textTheme.headline1!.copyWith(
                color: Colors.black,
                fontSize: 34,
                fontWeight: FontWeight.w700,
              ),
        ),
        Text(
          model.description,
          style: TextStyle(color: Colors.grey[500], fontSize: 16),
          textAlign: TextAlign.center,
          maxLines: 3,
        )
      ],
    );
  }
}
