import 'package:flutter/material.dart';

import '../constant.dart';

class AdressCard extends StatelessWidget {
  const AdressCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              trailing: Icon(
                Icons.navigate_next_outlined,
                color: kPrimaryLightColor,
              ),
              title: const Text(
                "Үйгө жеткирүү",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("Кой-Таш, Кул уулу . Бишкек"),
              onTap: () {},
              textColor: kPrimaryLightColor,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: kPrimaryLightColor,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                //alignment: Alignment.bottomLeft,
                child: Text(
                  "2.5 км",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: kPrimaryColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
