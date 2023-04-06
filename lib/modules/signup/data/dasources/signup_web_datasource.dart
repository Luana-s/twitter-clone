import 'package:twitter_clone/modules/signup/domain/credentials.dart';
import 'package:twitter_clone/modules/signup/domain/user.dart';

abstract class SignUpWebDatasource {

  Future<User> signInWithWeb({required Credentials credentials});

}