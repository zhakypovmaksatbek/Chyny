import 'package:flutter/material.dart';

import '../constant.dart';

class checkBox extends StatefulWidget {
  checkBox({
    Key? key,
    required this.souseName,
    required this.sousePrice,
  }) : super(key: key);

  bool _isChacked = false;
  final String souseName;
  final String sousePrice;

  @override
  State<checkBox> createState() => _checkBoxState();
}

class _checkBoxState extends State<checkBox> {
  void OnChacked() {
    setState(() {
      widget._isChacked = !widget._isChacked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        widget.souseName,
        style: const TextStyle(fontSize: 18),
      ),
      secondary: Text(
        widget.sousePrice + " som",
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
      ),

      //checkColor: kPrimaryColor,
      activeColor: kPrimaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      value: widget._isChacked,
      onChanged: (bool) {
        OnChacked();
      },
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}