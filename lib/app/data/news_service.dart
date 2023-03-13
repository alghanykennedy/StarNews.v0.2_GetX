import 'package:get/get.dart';
import 'package:star/app/modules/home/model/list_news_model.dart';

class NewsService {
  final _connect = Get.find<GetConnect>();

  Future<List<ListNewsModel>> getAllNews() async {
    // final response = await _connect.get('posts');
    // if (!response.hasError) {
    //   return response.body!;
    // } else {
    //   throw Get.snackbar('Error', response.statusCode.toString());
    // }

    final response = await _connect.get('posts', decoder: (value) {
      return List<ListNewsModel>.from(
          value.map((x) => ListNewsModel.fromJson(x)));
    });

    print(response.statusCode);
    print(response.body!.first.id);

    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString(),
          duration: const Duration(seconds: 10));
    }
  }

  Future getDetailNews({required String id}) async {
    print('cek');
    final response = await _connect.get('posts/$id');

    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }

  Future postNews({required String title, required String desc}) async {
    final response = await _connect.post(
      'posts',
      {
        'title': title,
        'body': desc,
        'userId': 1,
      },
    );
    print(response.statusCode);
    if (!response.hasError) {
      print(response.body);
      return response.body;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }

  Future deleteNews({required String id}) async {
    print('delete');
  }
}
