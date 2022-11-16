import 'package:flutter/material.dart';
import 'package:kupa_project/constant.dart';

class TamaktynPortsasy extends StatefulWidget {
  const TamaktynPortsasy({
    Key? key,
  }) : super(key: key);

  @override
  State<TamaktynPortsasy> createState() => _TamaktynPortsasyState();
}

class _TamaktynPortsasyState extends State<TamaktynPortsasy> {
  int count = 1;
  int index = 1;
  int _priceLagman = 250;

  void summa() {
    setState(() {
      count += 1;
      _priceLagman += 250;
    });
  }

  void kemituu() {
    setState(() {
      if (count > 1 || _priceLagman > 100) {
        count -= 1;
        _priceLagman -= 250;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Card(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: IconButton(
                      tooltip: "Чыгаруу",
                      onPressed: () {
                        kemituu();
                      },
                      icon: const Icon(
                        Icons.remove_circle_outlined,
                        size: 34,
                        color: Colors.grey,
                      )),
                ),
                Text(
                  count.toString(),
                  style: const TextStyle(fontSize: 24),
                ),
                IconButton(
                    tooltip: "Кошуу",
                    onPressed: () {
                      summa();
                    },
                    icon: Icon(
                      Icons.add_circle_outlined,
                      size: 34,
                      color: kPrimaryColor,
                    )),
              ],
            ),
          ),
          Expanded(
            child: Text(
              _priceLagman.toString() + " som",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: kPrimaryColor),
            ),
          )
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
    );
  }
}
