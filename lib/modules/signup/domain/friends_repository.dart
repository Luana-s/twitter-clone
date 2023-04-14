import 'package:twitter_clone/modules/signup/domain/user.dart';


abstract class FriendRepository {
  Future<List<User>> loadSuggestionsFriends();
}