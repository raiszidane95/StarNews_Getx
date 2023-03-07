import 'package:get/get.dart';

class ArticlesProvider {
  final _connect = Get.find<GetConnect>();

  Future<List> getArticles() async {
    final response = await _connect.get('posts');
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar(
        "Error",
        response.statusCode.toString(),
        duration: const Duration(seconds: 10),
      );
    }
  }

  Future getDetailArticles({required String id}) async {
    print('p');
    final response = await _connect.get('posts/$id');
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }
}
