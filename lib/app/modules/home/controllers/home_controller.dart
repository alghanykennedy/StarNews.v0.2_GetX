import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:star/app/data/news_service.dart';
import 'package:star/app/modules/home/model/list_news_model.dart';
import 'package:star/app/modules/home/widget/list_news_widget.dart';

class HomeController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<ListNewsModel> listNews = <ListNewsModel>[].obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    getAllNews();
  }

  getAllNews() async {
    isLoading(true);
    try {
      var response = await NewsService().getAllNews();
      print(response.length);
      listNews.value = response;
      isLoading(false);
    } catch (e) {
      isLoading(false);
      Get.snackbar('Error', e.toString());
    }
  }

  Future<bool> deleteNews(String id) async {
    bool _delete = false;
    await Get.defaultDialog(
        title: "DELETE",
        middleText: "Are you sure?",
        textConfirm: "Yes",
        confirmTextColor: Colors.white,
        onConfirm: () {
          NewsService().deleteNews(id: id).then(
            (_) {
              listNews.removeWhere((element) => element.id.toString() == id);
              _delete = true;
            },
          );
          Get.back();
        },
        textCancel: "No");
    return _delete;
  }
}
