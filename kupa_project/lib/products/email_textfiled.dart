// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class emailTextField extends StatelessWidget {
  const emailTextField({
    Key? key,
    required this.textName,
  }) : super(key: key);
  final String textName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 228, 234, 228),
      ),
      child: TextField(
        textInputAction: TextInputAction.next,
        autofillHints: const [AutofillHints.email],
        autocorrect: true,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: textName,
            border: InputBorder.none,
            fillColor: Colors.grey),
      ),
    );
  }
}
