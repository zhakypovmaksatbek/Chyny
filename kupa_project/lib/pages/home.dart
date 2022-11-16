import 'package:flutter/material.dart';
import 'package:kupa_project/Padding/padding_project.dart';

import '../constant.dart';
import '../products/adres_cart.dart';
import '../products/menu_food.dart';
import '../products/search_textfield.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Home", style: TextStyle(color: Colors.black)),
        actions: const [Notification()],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            const SearchTextField(text: "Search on Kupa"),
            const SizedBox(height: 10),
            const AdressCard(),
            const SizedBox(height: 20),
            const FoodCard(),
            const SizedBox(height: 20),
            _textCategory(),
            const SizedBox(height: 20),
            SizedBox(
              height: 300,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: GridMap.length,
                  itemBuilder: (context, index) {
                    return menuFood(
                        image: "${GridMap.elementAt(index)["image"]}",
                        title: "${GridMap.elementAt(index)["title"]}",
                        count: "${GridMap.elementAt(index)["price"]}");
                  }),
              // child: ListView(

              //   scrollDirection: Axis.horizontal,
              //   children: [
              //     menuFood(
              //         image: Images.beshbarmak,
              //         count: "450",
              //         title: "Беш-Бармак"),
              //     menuFood(image: Images.manty, count: "300", title: "Манты"),
              //     menuFood(image: Images.lagman, count: "250", title: "Лагман"),
              //     menuFood(
              //         image: Images.plov, count: "250", title: "Ташкент Плов"),
              //   ],
              // ),
            )
          ],
        ),
      ),
    );
  }

  Text _textCategory() {
    return const Text("Top of Week",
        style: TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black));
  }
}

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key? key,
  }) : super(key: key);
  final String _image = "assets/images/lagman.png";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kPrimaryLight, borderRadius: BorderRadius.circular(12)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: Paddigs.allPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Boso Lagman",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                const SizedBox(height: 10),
                const Text("Арзандатуу 25%",
                    style: TextStyle(
                        fontSize: 17,

                        //fontWeight: FontWeight.bold,
                        color: Colors.black)),
                const SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Заказ кыл",
                        style:
                            TextStyle(color: kPrimaryLightColor, fontSize: 20),
                      )),
                )
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              _image,
              height: 200,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}

class Images {
  static String plov = "assets/images/plov.jpeg";
  static String manty = "assets/images/manty.jpeg";
  static String beshbarmak = "assets/images/beshbarmak.jpg";
  static String lagman = "assets/images/lagman1.jpg";
  static String salad = "assets/images/salad.png";
}

class Notification extends StatelessWidget {
  const Notification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Stack(
            children: [
              const Icon(
                Icons.notifications_outlined,
                color: Colors.black,
                size: 30,
              ),
              Positioned(
                right: 7,
                top: 7,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 6,
                  width: 6,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
