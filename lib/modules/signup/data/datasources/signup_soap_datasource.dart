
import 'package:twitter_clone/modules/signup/data/datasources/signup_web_datasource.dart';
import 'package:twitter_clone/modules/signup/domain/user.dart';
import 'package:twitter_clone/modules/signup/domain/entities/credentials.dart';

class SignUpSOAPDatasource implements SignUpWebDatasource{
  @override
  Future<User> signInWithWeb({required Credentials credentials}) {
    throw UnimplementedError();
  }

}