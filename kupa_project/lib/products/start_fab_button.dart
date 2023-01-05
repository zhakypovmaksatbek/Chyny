import 'package:flutter/material.dart';

import '../constant.dart';

class StartFabButton extends StatelessWidget {
  const StartFabButton({Key? key, required this.isLastPage, this.onPressed})
      : super(key: key);
  final String _start = 'Start';
  final String _end = 'Next';

  final VoidCallback? onPressed;

  final bool isLastPage;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(300, 60),
            backgroundColor: kPrimaryColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kBorderRadius))),
        child: Text(
          isLastPage ? _start : _end,
          style: const TextStyle(fontSize: 18),
        ));
  }
}
