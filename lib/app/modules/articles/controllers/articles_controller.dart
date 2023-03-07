import 'package:get/get.dart';

import '../../../data/articles_provider.dart';
import '../models/articles_models.dart';

class ArticlesController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<ArticlesModel> listArticle = <ArticlesModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    getListArticles();
  }

  getListArticles() async {
    isLoading(true);
    try {
      var response = await ArticlesProvider().getArticles();
      response.map((v) {
        final articles = ArticlesModel.fromJson(v);
        listArticle.add(articles);
      }).toList();
    } catch (e) {
      isLoading(false);
      Get.snackbar('Controller Error', e.toString());
    }
  }
}
