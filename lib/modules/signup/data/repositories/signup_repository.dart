
import 'package:twitter_clone/modules/signup/domain/credentials.dart';


import '../../domain/signup_repository.dart';
import '../../domain/user.dart';
import '../datasources/signup_social_datasorce.dart';
import '../datasources/signup_web_datasource.dart';



/*abstract class SignUpRepository {
  Future<List<Friend>> signUpWeb({required Credentials credentials});
  Future <List<Friend>>socialSignUp();
}*/


class SignUpRepositoryImpl implements SignUpRepository{
  SignUpRepositoryImpl({required this.webDatasource, required this.socialDatasource});

  final SignUpSocialDatasource socialDatasource;
  final SignUpWebDatasource webDatasource;
  
  @override
  Future<User>signUpWeb({required Credentials credentials}) async{
    return await webDatasource.signInWithWeb(credentials: credentials);

   
  }
  
  @override
  Future<User> socialSignUp() {
    // TODO: implement socialSignUp
    throw UnimplementedError();
  }

}
