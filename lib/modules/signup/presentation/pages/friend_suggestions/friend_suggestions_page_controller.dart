import 'package:mobx/mobx.dart';
import 'package:twitter_clone/modules/signup/domain/entities/friend.dart';
import '../../../domain/repositories/friends_repository.dart';
part 'friend_suggestions_page_controller.g.dart';

class FriendSuggestionsPageController = _FriendSuggestionsPageControllerBase with _$FriendSuggestionsPageController;

abstract class _FriendSuggestionsPageControllerBase with Store {
  final FriendRepository repository;
  

  _FriendSuggestionsPageControllerBase({required this.repository});

  @observable
  ObservableFuture<List<Friend>>? observableLoadFriends;
  
  @observable
  List<Friend>? friends;

  @action
  Future<void> loadFriendSuggestions() async {
    print('loading friends...');
    observableLoadFriends = ObservableFuture(
      repository.loadSuggestionsFriends()
    );

    friends = await observableLoadFriends!;
  }
}