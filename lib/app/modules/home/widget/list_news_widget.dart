import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:star/app/routes/app_pages.dart';

class ListNews extends StatelessWidget {
  final String title, description, id;

  const ListNews(
      {super.key,
      required this.title,
      required this.description,
      required this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.DETAILNEWS, arguments: {'id': id});
        print(id);
      },
      child: Container(
        width: Get.width * 0.9,
        decoration: BoxDecoration(
            color: Color(0xFFFD9D9D9), borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Color(0xFF2F2D76),
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            SizedBox(
              height: 14,
            ),
            Text(description)
          ],
        ),
      ),
    );
  }
}

// Widget buildListTile(MyModel model) => ListTile(
//     contentPadding: EdgeInsets.symmetric(
//       horizontal: 20,
//       vertical: 16,
//     ),
//     title: Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           model.title,
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         SizedBox(
//           height: 15,
//         ),
//         Text(
//           model.body,
//           style: TextStyle(fontSize: 20),
//         ),
//       ],
//     )
//     // Row(
//     //   children: [
//     //      Text(
//     //           model.price.toString(),
//     //           style: TextStyle(fontSize: 20),
//     //         ),
//     //     Column(
//     //       children: [
//     //         Text(
//     //           model.name,
//     //           style: TextStyle(fontSize: 20),
//     //         ),
//     //       ],
//     //     ),
//     //   ],
//     // ),
//     );
