// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:kupa_project/pages/menu_page.dart';

import '../Widget/chek_box.dart';
import '../constant.dart';

class GridBuilderList extends StatefulWidget {
  const GridBuilderList({
    Key? key,
  }) : super(key: key);

  @override
  State<GridBuilderList> createState() => _GridBuilderListState();
}

class _GridBuilderListState extends State<GridBuilderList> {
  final String nationality = "Kyrgyz Uluttuk Tamagy";
  int index = 0;
  bool _isChanged = false;
  bool _isChacked = false;
  void OnChanged() {
    setState(() {
      _isChanged = !_isChanged;
    });
  }

  void OnChacked() {
    setState(() {
      _isChacked = !_isChacked;
    });
  }

  get price => GridMap.elementAt(index)["price"].toString();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: GridMap.length,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 280,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      itemBuilder: (contex, index) {
        return GestureDetector(
          onTap: () {
            showModalBottomSheet(
                barrierColor: Colors.black38,
                context: context,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40))),
                builder: (contex) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.88,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.78,
                            child: ListView(
                              children: [
                                Center(
                                  child: Container(
                                    height: 5,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),

                                const Aralyk(height: 15),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "${GridMap.elementAt(index)["image"]}",
                                  ),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  title: Text(
                                      "${GridMap.elementAt(index)["title"]}",
                                      style: const TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.w800)),
                                  subtitle: Text(
                                    nationality,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16),
                                  ),
                                  minVerticalPadding: 20,
                                  trailing: IconButton(
                                      onPressed: () {
                                        OnChanged();
                                      },
                                      icon: Icon(
                                        _isChanged
                                            ? Icons.favorite_outlined
                                            : Icons.favorite_border_outlined,
                                        color: _isChanged
                                            ? Colors.red
                                            : Colors.black,
                                      )),
                                ),

                                const Aralyk(height: 10),
                                //const TamaktynPortsasy(),
                                const _TamaktynPortsasy(
                                  nationality: "Kyrgyz",
                                ),
                                const Divider(
                                  color: Colors.black12,
                                  thickness: 2,
                                  // indent: MediaQuery.of(context).size.width,
                                  // endIndent: MediaQuery.of(context).size.width * 0.6,
                                ),
                                const Aralyk(height: 10),

                                const TextWidget(title: "Soustar"),
                                const Aralyk(height: 10),

                                // CheckBox

                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black12, width: 2),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Column(
                                    children: [
                                      checkBox(
                                        souseName: "Ketchup",
                                        sousePrice: "0",
                                      ),
                                      const Divider(
                                        thickness: 2,
                                      ),
                                      checkBox(
                                        souseName: "Mayonez",
                                        sousePrice: "0",
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 60,
                            width: double.infinity,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: kPrimaryColor,
                            ),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  "Add to Cart  " +
                                      GridMap.elementAt(index)["price"]
                                          .toString(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                )),
                          )
                        ],
                      ),
                    ),
                  );
                });
          },
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "${GridMap.elementAt(index)["image"]}",
                    height: 200,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Text("${GridMap.elementAt(index)["title"]}",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500)),
                Text("${GridMap.elementAt(index)["price"]} som",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: kPrimaryColor)),
              ],
            ),
          ),
        );
      },
    );
  }
}

class FoodMenu extends StatelessWidget {
  const FoodMenu({
    Key? key,
    required this.image,
    required this.name,
    required this.count,
  }) : super(key: key);
  final String image;
  final String name;
  final String count;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        children: [
          Image.asset(image, height: 100),
          Text(name),
          Text(count + "Сом"),
        ],
      ),
    );
  }
}

class _TamaktynPortsasy extends StatefulWidget {
  const _TamaktynPortsasy({
    Key? key,
    required this.nationality,
  }) : super(key: key);

  final String nationality;
  @override
  State<_TamaktynPortsasy> createState() => _TamaktynPortsasyState();
}

class _TamaktynPortsasyState extends State<_TamaktynPortsasy> {
  int count = 1;
  int index = 0;
  // int _priceLagman = 250;
  get price => GridMap.elementAt(index)["price"];

  void summa() {
    setState(() {
      count += 1;
      price * count;
    });
  }

  void kemituu() {
    setState(() {
      if (count > 1 || price > 250) {
        count -= 1;
        price - (price * count);
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
                SizedBox(
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
              price.toString() + " som",
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
