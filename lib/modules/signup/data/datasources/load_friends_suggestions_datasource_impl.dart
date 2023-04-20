
import 'package:dio/dio.dart';
import '../../domain/entities/friend.dart';
import 'load_friends_suggestions_datasource.dart';

class LoadFriendSuggestionsDatasourceImpl implements LoadFriendSuggestionsDatasource {
  LoadFriendSuggestionsDatasourceImpl({required this.dio});

  final Dio dio;

  Future<List<Friend>> loadFriendSuggestions() async {
    Dio dio2 = Dio();
    print('loading friends');

    var response = await dio2.get('https://dummyjson.com/users');

    List<dynamic> users = response.data['users'] as List;

    

    return users.map((usersJson) => Friend.fromMap(usersJson)).toList();
  }
  
}
  
