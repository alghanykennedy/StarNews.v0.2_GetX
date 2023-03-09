import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  final splashController = Get.put(SplashController);

  @override
  Widget build(BuildContext context) {
    SplashController.find.startAnimation();

    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Obx(
            () => Center(
              child: AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: controller.animate.value ? 1 : 0,
                  child: SvgPicture.asset("assets/logo/logo-splash.svg"),
                ),
              ),
            ),
          ),
        ]));
  }
}
