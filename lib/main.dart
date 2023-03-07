import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'app/modules/splash_screen/views/splash_screen_view.dart';
import 'app/routes/app_pages.dart';
import 'initializer.dart';

Future<void> main() async {
  await Initializer.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SplashScreenView();
          } else {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Application",
              initialRoute: AppPages.INITIAL,
              getPages: AppPages.routes,
            );
          }
        });
  }
}
