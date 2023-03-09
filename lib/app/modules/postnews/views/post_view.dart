import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:star/app/modules/postnews/widget/form_widget.dart';

import '../controllers/post_controller.dart';

class PostView extends GetView<PostController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        title: Text(
          'StarNews',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: FormWidget(),
      // body: FormWidget(),
    );
  }
}
