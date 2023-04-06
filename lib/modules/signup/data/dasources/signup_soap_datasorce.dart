import 'package:twitter_clone/modules/signup/data/dasources/signup_web_datasource.dart';
import 'package:twitter_clone/modules/signup/domain/user.dart';

import '../../domain/credentials.dart';

class SignUpSOAPDatasource implements SignUpWebDatasource {
  
  @override
  Future<User> signInWithWeb({required Credentials credentials}) {

    throw UnimplementedError();
  }
  
}