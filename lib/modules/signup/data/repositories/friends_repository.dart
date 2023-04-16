

import 'package:twitter_clone/modules/signup/domain/user.dart';

import '../../domain/entities/friend.dart';
import '../../domain/repositories/friends_repository.dart';
import '../datasources/load_friends_suggestions_datasource.dart';



class FriendsRepositoryImpl implements FriendRepository {
  FriendsRepositoryImpl({required this.datasource});

  LoadFriendSuggestionsDatasource datasource;

 
  
  @override
  Future<List<Friend>> loadSuggestionsFriends() async {
     return await datasource.loadFriendSuggestions();
  }
  }
 



  
