import 'package:mobx/mobx.dart';
import 'package:twitter_clone/modules/signup/domain/signup_repository.dart';

import '../../../domain/friend.dart';
part 'friend_suggestions_page_contoller.g.dart';

class FriendsSuggestionsPageController = _FriendsSuggestionsPageController with _$FriendsSuggestionsPageController;

abstract class _FriendsSuggestionsPageController with Store {
  SignUpRepository repository;

  _FriendsSuggestionsPageController({required this.repository});

   @action
  Future<List<Friend>> loadFriendSuggestions() async {
    await Future.delayed(const Duration(seconds: 5));

    return await repository.loadSuggestionsFriends();
  }
}
  
