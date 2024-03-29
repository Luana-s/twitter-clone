import 'package:twitter_clone/modules/signup/domain/user.dart';

import '../entities/credentials.dart';


abstract class SignUpRepository {
  Future<User> signUpWeb({required Credentials credentials});
  Future<User> socialSignUp();
}