import 'package:twitter_clone/modules/signup/domain/usecases/signup_usecases.dart';
import '../entities/credentials.dart';
import '../repositories/signup_repository.dart';
import '../user.dart';

class SignUpWithCredentialsUsecase implements SignUpUsecase {

  SignUpWithCredentialsUsecase({required this.repository});

  SignUpRepository repository;

  @override
  Future<User> call({Credentials? credentials}) async {
    if (credentials != null) {
      return await repository.signUpWeb(credentials: credentials);
    }

    return await repository.socialSignUp();
  }
}