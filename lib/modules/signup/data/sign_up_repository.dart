import 'package:twitter_clone/modules/signup/data/load_friends_suggestions_datasource.dart';
import 'package:twitter_clone/modules/signup/domain/friend.dart';
import '../domain/signup_repository.dart';

class SignUpRepositoryImpl implements SignUpRepository {
  SignUpRepositoryImpl({required this.datasource});

  LoadFriendSuggestionsDatasource datasource;

  @override
  Future<List<Friend>> loadSuggestionsFriends() async {
    return await datasource.loadFriendSuggestions();
  }
}