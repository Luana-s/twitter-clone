import 'package:dio/dio.dart';
import 'package:twitter_clone/modules/feed/data/feed_datasource.dart';

import '../presentation/moldels/post.dart';

class FeedRestDatasource implements FeedDatasource {

  const FeedRestDatasource({required this.dio});
  final Dio dio;

  @override
  Future<List<Post>> loadPosts() async {
    final response = await dio.get('/posts');

    final dataList = response.data['posts'] as List;
    return dataList.map((eachPostMap) => Post.fromMap(eachPostMap)).toList();
  }
  
}