import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:star/app/data/news_service.dart';

class PostController extends GetxController {
  final newsTitle = TextEditingController();
  final newsDesc = TextEditingController();
  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  onSubmit() async {
    isLoading(true);
    try {
      final response = await NewsService()
          .postNews(title: newsTitle.text, desc: newsDesc.text);
      print(response);
      isLoading(false);
      Get.back();
    } catch (e) {
      isLoading(false);
    }
  }
}
