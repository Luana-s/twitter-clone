import '../../domain/entities/friend.dart';


abstract class LoadFriendSuggestionsDatasource {
  Future<List<Friend>> loadFriendSuggestions();
}