import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detailnews_controller.dart';

class DetailnewsView extends GetView<DetailnewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          title: Text(
            'StarNews',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: false,
        ),
        body: Container(
          width: Get.width,
          margin: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Color(0xFFFD9D9D9),
            borderRadius: BorderRadius.circular(15.0),
          ),
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          child: Obx(() => Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    controller.detailNews.value.title ?? '',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    controller.detailNews.value.body ?? '',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              )),
        ));
  }
}
