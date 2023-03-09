import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:get/get.dart';
import 'package:star/app/modules/home/widget/list_news_widget.dart';
import 'package:star/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          'StarNews',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => ListView.builder(
                  itemCount: homeController.listNews.length,
                  itemBuilder: ((context, index) {
                    final model = homeController.listNews[index];
                    print(model.body);
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () => Get.toNamed(Routes.DETAILNEWS),
                            child: Slidable(
                              // Specify a key if the Slidable is dismissible.
                              key: UniqueKey(),
                              // The end action pane is the one at the right or the bottom side.
                              endActionPane: ActionPane(
                                motion: ScrollMotion(),
                                children: [
                                  CustomSlidableAction(
                                    autoClose: false,
                                    padding: EdgeInsets.only(left: 15),
                                    onPressed: ((context) async {
                                      await homeController.deleteNews(
                                          homeController.listNews[index].id
                                              .toString());
                                    }),
                                    child: CircleAvatar(
                                      radius: 26,
                                      backgroundColor: Colors.red,
                                      child: Icon(
                                        Icons.delete_outline,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                    ),
                                  ),
                                  CustomSlidableAction(
                                    padding: EdgeInsets.only(right: 30),
                                    onPressed: ((context) {}),
                                    child: CircleAvatar(
                                      radius: 26,
                                      backgroundColor: Colors.blue,
                                      child: Icon(
                                        Icons.archive_outlined,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              child: ListNews(
                                  title: homeController.listNews[index].title,
                                  description:
                                      homeController.listNews[index].body,
                                  id: homeController.listNews[index].id
                                      .toString()),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          )
                        ],
                      ),
                    );
                  })),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.FORM),
        backgroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
