import '../../domain/entities/credentials.dart';
import '../../domain/repositories/signup_repository.dart';
import '../../domain/user.dart';
import '../datasources/signup_social_datasorce.dart';
import '../datasources/signup_web_datasource.dart';



class SignUpRepositoryImpl implements SignUpRepository{
  SignUpRepositoryImpl({required this.webDatasource, required this.socialDatasource});

  final SignUpSocialDatasource socialDatasource;
  final SignUpWebDatasource webDatasource;
  
  @override
  Future<User>signUpWeb({required Credentials credentials}) async{
    return await webDatasource.signInWithWeb(credentials: credentials);

   
  }
  
  @override
  Future<User> socialSignUp() async{
     return await socialDatasource.signUp();
  
    
  }

}
