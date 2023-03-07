import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class ListArticle extends StatelessWidget {
  final String title, description, id;

  const ListArticle({super.key, required this.title, required this.description, required this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.DETAIL_ARTICLE, arguments: {'id': id});
        print(id);
      },
      child: Container(
        margin: EdgeInsets.all(24),
        width: Get.width * 0.9,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: Color(0xFF2F2D76), fontWeight: FontWeight.bold, fontSize: 22),
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
