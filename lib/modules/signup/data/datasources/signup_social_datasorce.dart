import '../../domain/user.dart';

abstract class SignUpSocialDatasource {
  Future<User> signUp();

}