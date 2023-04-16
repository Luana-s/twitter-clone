
import '../entities/credentials.dart';
import '../user.dart';

abstract class SignUpUsecase {
  Future<User> call({Credentials? credentials});
}