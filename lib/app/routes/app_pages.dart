import 'package:get/get.dart';

import '../modules/articles/bindings/articles_binding.dart';
import '../modules/articles/views/articles_view.dart';
import '../modules/detail_article/bindings/detail_article_binding.dart';
import '../modules/detail_article/views/detail_article_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/post_article/bindings/post_article_binding.dart';
import '../modules/post_article/views/post_article_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ARTICLES;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.ARTICLES,
      page: () => ArticlesView(),
      binding: ArticlesBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_ARTICLE,
      page: () => const DetailArticleView(),
      binding: DetailArticleBinding(),
    ),
    GetPage(
      name: _Paths.POST_ARTICLE,
      page: () => const PostArticleView(),
      binding: PostArticleBinding(),
    ),
  ];
}
