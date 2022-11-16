// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ImageItems {
  final String lagman = "lagman.png";
  final String plov = "plov.jpeg";
  final String manty = "manty.jpeg";
  final String salad = "salad.png";
  final String lagman1 = "lagman1.jpg";
}

class ImagePath extends StatelessWidget {
  const ImagePath({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/$name");
  }
}
class ImageMap {
  final List<Map<String, dynamic>> GridMap = [
    {
      "title": "Lagman",
      "price": "250 som",
      "image": "assets/images/lagman1.jpg"
    },
    {"title": "Plov", "price": "300 som", "image": "assets/images/plov.jpeg"},
    {"title": "Manty", "price": "200 som", "image": "assets/images/manty.jpeg"},
    {"title": "Salat", "price": "100 som", "image": "assets/images/salad.png"},
    {
      "title": "Beshbarmak",
      "price": "400 som",
      "image": "assets/images/beshbarmak.jpg"
    },
    {
      "title": "Lagman",
      "price": "220 som",
      "image": "assets/images/lagman.png"
    },
    {
      "title": "Lagman",
      "price": "250 som",
      "image": "assets/images/lagman1.jpg"
    },
    {"title": "Plov", "price": "300 som", "image": "assets/images/plov.jpeg"},
    {"title": "Manty", "price": "200 som", "image": "assets/images/manty.jpeg"},
    {"title": "Salat", "price": "100 som", "image": "assets/images/salad.png"},
    {
      "title": "Beshbarmak",
      "price": "400 som",
      "image": "assets/images/beshbarmak.jpg"
    },
    {
      "title": "Lagman",
      "price": "220 som",
      "image": "assets/images/lagman.png"
    },
  ];
  
}