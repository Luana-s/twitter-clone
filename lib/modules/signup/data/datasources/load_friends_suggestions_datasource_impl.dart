
import 'package:dio/dio.dart';
import '../../domain/entities/friend.dart';
import 'load_friends_suggestions_datasource.dart';

class LoadFriendSuggestionsDatasourceImpl implements LoadFriendSuggestionsDatasource {
    Future<List<Friend>> loadFriendSuggestions() async {
  Dio dio = Dio();
    var response = await dio.get('https://dummyjson.com/users');

    List<dynamic> users = response.data['users'] as List;

    print(users);

    return users.map((usersJson) => Friend.fromMap(usersJson)).toList();
  }
  
}
  
