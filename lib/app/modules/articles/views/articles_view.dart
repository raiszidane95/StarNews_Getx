import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/articles_controller.dart';
import '../widgets/list_article.dart';

class ArticlesView extends GetView<ArticlesController> {
  final ArticlesController homeController = Get.put(ArticlesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF06AED5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        elevation: 0.0,
        title: Row(
          children: [
            Text(
              'Star',
              style: TextStyle(color: Color(0xFF2F2D76)),
            ),
            Text(
              'News',
              style: TextStyle(
                color: Color(0xFF06AED5),
              ),
            ),
          ],
        ),
      ),
      body: Obx(() => SingleChildScrollView(
            child: Column(
              children: [
                ...homeController.listArticle.reversed.map((element) => ListArticle(
                    title: element.title, description: element.body, id: element.id.toString()))
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF2F2D76),
        child: const Icon(Icons.add),
      ),
    );
  }
}
