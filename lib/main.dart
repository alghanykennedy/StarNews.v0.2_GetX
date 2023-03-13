import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:star/initializer.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  await Intializer.init();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
