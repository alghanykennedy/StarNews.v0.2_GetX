import 'package:get/get.dart';

import 'package:star/app/modules/detailnews/bindings/detailnews_binding.dart';
import 'package:star/app/modules/detailnews/views/detailnews_view.dart';
import 'package:star/app/modules/postnews/bindings/post_binding.dart';
import 'package:star/app/modules/postnews/views/post_view.dart';
import 'package:star/app/modules/home/bindings/home_binding.dart';
import 'package:star/app/modules/home/views/home_view.dart';
import 'package:star/app/modules/splash/bindings/splash_binding.dart';
import 'package:star/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.DETAILNEWS,
      page: () => DetailnewsView(),
      binding: DetailnewsBinding(),
    ),
    GetPage(
      name: _Paths.FORM,
      page: () => PostView(),
      binding: PostBinding(),
    ),
  ];
}
