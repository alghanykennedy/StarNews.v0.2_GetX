import 'package:get/get.dart';

import '../controllers/detailnews_controller.dart';

class DetailnewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailnewsController>(
      () => DetailnewsController(),
    );
  }
}
