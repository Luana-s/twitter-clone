import 'friend.dart';

abstract class SignUpRepository {
  Future<List<Friend>> loadSuggestionsFriends();
}


abstract class FriendRepository {
}
