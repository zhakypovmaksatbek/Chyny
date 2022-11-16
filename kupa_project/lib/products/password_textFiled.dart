import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({
    Key? key,
  }) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool _isObscure = true;

  void _isChangeLoading() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

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
        textInputAction: TextInputAction.done,
        autocorrect: true,
        obscureText: _isObscure,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
            hintText: "Your password",
            border: InputBorder.none,
            suffixIcon: IconButton(
                onPressed: _isChangeLoading,
                icon: Icon(_isObscure
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined)),
            fillColor: Colors.grey),
      ),
    );
  }
}
