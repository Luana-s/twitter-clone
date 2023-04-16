import 'package:twitter_clone/modules/signup/domain/entities/credentials.dart';
import 'package:twitter_clone/modules/signup/domain/user.dart';

abstract class SignUpWebDatasource{
  Future<User> signInWithWeb({required Credentials credentials});

}