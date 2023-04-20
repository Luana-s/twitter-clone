import 'package:flutter_modular/flutter_modular.dart';
import 'package:twitter_clone/modules/signin/signin_module.dart';
import 'package:twitter_clone/modules/signup/signup_module.dart';

import 'feed/feed_module.dart';

class AppModule extends Module {

  @override
  List<ModuleRoute> get routes => [
    ModuleRoute('/', module: SignUpModule()),
    ModuleRoute('/signin', module: SignInModule()),
    ModuleRoute('/feed', module: FeedModule()),
  ];
}