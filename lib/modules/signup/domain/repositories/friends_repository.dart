import 'package:twitter_clone/modules/signup/domain/entities/friend.dart';


abstract class FriendRepository {
  Future<List<Friend>> loadSuggestionsFriends();
}