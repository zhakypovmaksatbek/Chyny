import 'package:flutter/material.dart';
class CustomChecBox extends StatefulWidget {
  const CustomChecBox({ Key? key }) : super(key: key);

  @override
  State<CustomChecBox> createState() => _CustomChecBoxState();
}

class _CustomChecBoxState extends State<CustomChecBox> {
   bool _isChacked = false;
  void OnChacked() {
    setState(() {
      _isChacked = !_isChacked;
    });
  } 
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
