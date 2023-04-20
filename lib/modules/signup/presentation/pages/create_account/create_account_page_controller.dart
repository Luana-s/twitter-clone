import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import '../../../domain/entities/credentials.dart';
import '../../../domain/usecases/signup_usecases.dart';
import '../../../domain/user.dart';
part 'create_account_page_controller.g.dart';


class CreateAccountPageController = _CreateAccountPageControllerBase with _$CreateAccountPageController;

abstract class _CreateAccountPageControllerBase with Store {
   _CreateAccountPageControllerBase({required this.usecase});
   SignUpUsecase usecase;

   
  @observable
  User? user;

  @observable
  ObservableFuture<User>? createAccountObservableFuture;
  
  Future<void> confirmWithCredentials({
    required String name, 
    required String username, 
    required String email, required 
    String password}
  ) async {
    final usecase = Modular.get<SignUpUsecase>();
    
    Credentials credential = Credentials(
      firstName: name,
      email: email,
      age: 20,
      lastName: 'IFAL UFAL'
    );

    createAccountObservableFuture = ObservableFuture(usecase(credentials: credential));
    
    final user = await createAccountObservableFuture;
    Modular.to.pushNamed('/friend_suggestions', arguments: user);
  }

}
  
