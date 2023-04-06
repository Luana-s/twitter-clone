import 'package:twitter_clone/modules/signup/data/dasources/load_friends_suggestions_datasource.dart';
import 'package:twitter_clone/modules/signup/data/dasources/signup_google_datasource.dart';
import 'package:twitter_clone/modules/signup/data/dasources/signup_web_datasource.dart';
import 'package:twitter_clone/modules/signup/domain/friend.dart';

import '../repositories/signup_repository.dart';

class SignUpRepositoryImpl implements SignUpRepository {
  SignUpRepositoryImpl({required this.datasource, required SignUpGoogleDatasource socialDatasource, required SignUpWebDatasource webDatasource});

  LoadFriendSuggestionsDatasource datasource;

  @override
  Future<List<Friend>> loadSuggestionsFriends() async {
    return await datasource.loadFriendSuggestions();
  }
}