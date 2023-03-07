import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../controllers/detail_article_controller.dart';

class DetailArticleView extends GetView<DetailArticleController> {
  const DetailArticleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        elevation: 0.0,
        title: Text(
          'Detail News',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        width: Get.width,
        margin: EdgeInsets.all(24),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Obx(() => Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.detailArticle.value.title ?? '',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36, color: Colors.black),
                ),
                Gap(15),
                Text(
                  controller.detailArticle.value.body ?? '',
                  style: TextStyle(fontSize: 14),
                )
              ],
            )),
      ),
    );
  }
}
