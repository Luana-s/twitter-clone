import 'package:mobx/mobx.dart';
import '../data/feed_datasource.dart';
import 'moldels/post.dart';
part 'feed_controller.g.dart';

class FeedPageController = _FeedPageControllerBase with _$FeedPageController;

abstract class _FeedPageControllerBase with Store {

  _FeedPageControllerBase({required this.feedDatasource});
  FeedDatasource feedDatasource;

  @observable
  ObservableFuture<List<Post>>? postsFuture;

  @observable
  ObservableList<Post>? observablePostsList = ObservableList.of([]);

  Future<void> fetchFeed() async {
    postsFuture = ObservableFuture(feedDatasource.loadPosts());
    List<Post> postsList = await postsFuture!;

    observablePostsList!.addAll(postsList);
  }
  
}