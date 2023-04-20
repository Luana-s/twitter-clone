import '../presentation/moldels/post.dart';

abstract class FeedDatasource {
  Future<List<Post>> loadPosts();
}