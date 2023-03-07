import 'package:get/get.dart';

import '../../../data/articles_provider.dart';
import '../models/detail_article_model.dart';

class DetailArticleController extends GetxController {
  RxBool isLoading = false.obs;
  String id = '';
  Rx<DetailArticlesModel> detailArticle = DetailArticlesModel().obs;
  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments;
    id = args['id'];
    print(args);
    getDetailArticles();
  }

  getDetailArticles() async {
    isLoading(true);
    try {
      final response = await ArticlesProvider().getDetailArticles(id: id);
      final res = DetailArticlesModel.fromJson(response);
      detailArticle(res);
    } catch (e) {
      isLoading(false);
      print(e);
      Get.snackbar("Controller Error", e.toString());
    }
  }
}
