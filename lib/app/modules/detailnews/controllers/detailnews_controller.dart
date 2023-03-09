import 'package:get/get.dart';
import 'package:star/app/data/news_service.dart';
import 'package:star/app/modules/detailnews/model/detail_news_model.dart';

class DetailnewsController extends GetxController {
  RxBool isLoading = false.obs;
  String id = '';
  Rx<DetailNewsModel> detailNews = DetailNewsModel().obs;
  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments;
    id = args['id'];
    print(args);
    getDetailNews();
  }

  getDetailNews() async {
    isLoading(true);
    try {
      final response = await NewsService().getDetailNews(id: id);
      final res = DetailNewsModel.fromJson(response);
      detailNews(res);
    } catch (e) {
      isLoading(false);
      print(e);
      Get.snackbar("Controller Error", e.toString());
    }
  }
}
