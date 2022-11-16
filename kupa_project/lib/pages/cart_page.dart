// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:kupa_project/Padding/padding_project.dart';
import 'package:kupa_project/imagePath/image_path.dart';
import 'package:kupa_project/pages/menu_page.dart';
import 'package:kupa_project/products/adres_cart.dart';

import '../Widget/tamak_ports.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final double heightLittle = 10.0;

  final double heightBig = 20.0;

  final String ordertitle = "Your Order";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Корзина",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
      body: Padding(
        padding: Paddigs.horizontalLarge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Aralyk(height: heightLittle),
            const AdressCard(),
            Aralyk(height: heightBig),
            TextWidget(title: ordertitle),
            Aralyk(height: heightLittle),
            const CartList()
          ],
        ),
      ),
    );
  }
}

class CartList extends StatefulWidget {
  const CartList({
    Key? key,
  }) : super(key: key);

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView(
        children: [
          FoodOrderList(
              nameFood: "Boso Lagman", imageItems: ImageItems().lagman),
          FoodOrderList(nameFood: "Plov", imageItems: ImageItems().plov),
          FoodOrderList(nameFood: "Manty", imageItems: ImageItems().manty),
        ],
      ),
    );
  }
}

class FoodOrderList extends StatelessWidget {
  const FoodOrderList({
    Key? key,
    required this.nameFood,
    required this.imageItems,
  }) : super(key: key);
  final String nameFood;
  final String imageItems;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            SizedBox(
                height: 100, width: 100, child: ImagePath(name: imageItems)),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(nameFood,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600)),
                const TamaktynPortsasy(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
