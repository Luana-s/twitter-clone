import '../../domain/friend.dart';
import 'load_friends_suggestions_datasource.dart';

class LoadFriendSuggestionsDatasourceImpl implements LoadFriendSuggestionsDatasource {
  Future<List<Friend>> loadFriendSuggestions() async {
    Friend friend1 = Friend(
      name: 'João', 
      username: 'joaogomes', 
      message: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      imageURL: 'https://img.freepik.com/fotos-gratis/feche-o-retrato-de-um-rosto-jovem-barbudo_171337-2887.jpg',
    );
    
    Friend friend2 = Friend(
      name: 'Maria', 
      username: 'mariagomes', 
      message: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      imageURL: 'https://www.fashionbubbles.com/wp-content/uploads/2021/01/bill-7-1.png',
    );

    return [friend1, friend2];
  }

  
}