// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 249, 246, 246),
      ),
      child: TextField(
        textInputAction: TextInputAction.search,
        autocorrect: true,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            icon: const Icon(Icons.search_outlined),
            hintText: widget.text,
            border: InputBorder.none,
            fillColor: const Color.fromARGB(255, 210, 208, 208)),
      ),
    );
  }
}
