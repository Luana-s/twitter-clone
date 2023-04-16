import 'package:mobx/mobx.dart';

import '../../../data/datasources/signup_google_datasource.dart';
import '../../../data/datasources/signup_rest_datasource.dart';
import '../../../data/datasources/signup_web_datasource.dart';
import '../../../data/repositories/signup_repository.dart';
import '../../../domain/entities/credentials.dart';
import '../../../domain/repositories/signup_repository.dart';
import '../../../domain/usecases/signup_usecases.dart';
import '../../../domain/usecases/signup_with_credentials_usecase.dart';
import '../../../domain/user.dart';
part 'create_account_page_controller.g.dart';


class CreateAccountPageController = _CreateAccountPageControllerBase with _$CreateAccountPageController;

abstract class _CreateAccountPageControllerBase with Store {
  
  Future<User> confirmWithCredentials({required String name, required String username, required String email, required String password}) async {
    SignUpGoogleDatasource googleDatasource = SignUpGoogleDatasource();
    SignUpWebDatasource signUpWebDatasource = SignUpRestDatasource();
    SignUpRepository repository = SignUpRepositoryImpl(
      socialDatasource: googleDatasource, 
      webDatasource: signUpWebDatasource
    );

    SignUpUsecase usecase = SignUpWithCredentialsUsecase(repository: repository);

    Credentials credential = Credentials(
      name: name,
      username: username,
      password: password,
      email: email,
    );

    return await usecase(credentials: credential); 

    // Navigator.pushNamed(context, '/friend_suggestions');
  }

}
  
