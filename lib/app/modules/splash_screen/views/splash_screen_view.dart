import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: SvgPicture.asset(
                  "assets/icons/icon1.svg",
                  color: Color(0xFF06AED5),
                ),
              ),
              Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Star',
                    style: TextStyle(
                        fontSize: 36, fontWeight: FontWeight.bold, color: Color(0xFF2F2D76)),
                  ),
                  Text(
                    'News',
                    style: TextStyle(
                        fontSize: 36, fontWeight: FontWeight.bold, color: Color(0xFF06AED5)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
