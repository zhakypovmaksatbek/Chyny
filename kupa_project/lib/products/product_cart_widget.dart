// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProductCartWidget extends StatefulWidget {
  const ProductCartWidget({
    Key? key,
    required this.active,
    required this.onTap,
  }) : super(key: key);
  final bool active;
  final Function onTap;
  @override
  State<ProductCartWidget> createState() => _ProductCartWidgetState();
}

class _ProductCartWidgetState extends State<ProductCartWidget> {
  int daana = 1;
  void _add() {
    setState(() {
      ++daana;
    });
  }

  void _remove() {
    setState(() {
      if (daana > 1) {
        --daana;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 500),
      curve: Curves.decelerate,
      bottom: 5,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
