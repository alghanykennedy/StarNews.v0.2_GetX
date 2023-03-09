import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:star/app/modules/home/views/home_view.dart';

class SplashController extends GetxController {
  static SplashController get find => Get.find();

  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to(() => HomeView());
  }
}
