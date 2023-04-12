import 'package:mobx/mobx.dart';

import '../../../domain/friend.dart';
import '../../../domain/signup_repository.dart';
part 'friend_suggestions_page_controller.g.dart';

class FriendSuggestionsPageController = _FriendSuggestionsPageControllerBase with _$FriendSuggestionsPageController;

abstract class _FriendSuggestionsPageControllerBase with Store {
  SignUpRepository repository;

  _FriendSuggestionsPageControllerBase({required this.repository});

  

  @action
  Future<List<Friend>> loadFriendSuggestions() async {
   
    await Future.delayed(const Duration(seconds: 5));

    return await repository.loadSuggestionsFriends();
  }
}