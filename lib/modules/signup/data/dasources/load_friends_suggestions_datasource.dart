import '../../domain/friend.dart';

abstract class LoadFriendSuggestionsDatasource {
  Future<List<Friend>> loadFriendSuggestions();
}