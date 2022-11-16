// import 'package:flutter/material.dart';

// import '../constant.dart';
// import '../imagePath/image_path.dart';
// import '../pages/menu_page.dart';

// class CustomBottomSheet extends StatefulWidget {
//   const CustomBottomSheet({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<CustomBottomSheet> createState() => _CustomBottomSheetState();
// }

// class _CustomBottomSheetState extends State<CustomBottomSheet> {
  
//   final String nationality = "Kyrgyz Uluttuk Tamagy";

//   bool _onChanged = false;
//   void isChanged() {
//     setState(() {
//       _onChanged = !_onChanged;
//     });
//   }

  

//   @override
//   Widget build(BuildContext context) {

//     return Padding(
//       padding: const EdgeInsets.all(15.0),
//       child: SizedBox(
//         height: MediaQuery.of(context).size.height * 0.88,
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.78,
//               child: ListView(
//                 children: [
//                   Center(
//                     child: Container(
//                       height: 5,
//                       width: 60,
//                       decoration: BoxDecoration(
//                         color: Colors.black12,
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                   ),

//                   // Divider(
//                   //   color: Colors.black12,
//                   //   thickness: 5,
//                   //   indent:
//                   //       MediaQuery.of(context).size.width * 0.4,
//                   //   endIndent:
//                   //       MediaQuery.of(context).size.width * 0.4,
//                   // ),
//                   const Aralyk(height: 15),
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(20),
//                     child: Image.asset(
//                       "${ImageMap().GridMap.elementAt(index)["image"]}",
//                     ),
//                   ),
//                   ListTile(
//                     contentPadding: EdgeInsets.zero,
//                     title: Text(
//                         "${ImageMap().GridMap.elementAt(index)["title"]}",
//                         style: const TextStyle(
//                             fontSize: 26, fontWeight: FontWeight.w800)),
//                     subtitle: Text(
//                       nationality,
//                       style: Theme.of(context)
//                           .textTheme
//                           .headline1!
//                           .copyWith(fontWeight: FontWeight.w400, fontSize: 16),
//                     ),
//                     minVerticalPadding: 20,
//                     trailing: IconButton(
//                         onPressed: () {
//                           isChanged();
//                         },
//                         icon: Icon(
//                           _onChanged
//                               ? Icons.favorite_outlined
//                               : Icons.favorite_border_outlined,
//                           color: _onChanged ? Colors.red : Colors.black,
//                         )),
//                   ),

//                   const Aralyk(height: 20),
//                 ],
//               ),
//             ),
//             Container(
//               height: 60,
//               width: double.infinity,
//               margin: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 color: kPrimaryColor,
//               ),
//               child: TextButton(
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                   child: const Text(
//                     "Add to Cart",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.w700),
//                   )),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
