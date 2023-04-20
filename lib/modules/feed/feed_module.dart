import 'package:flutter_modular/flutter_modular.dart';
import 'package:twitter_clone/modules/feed/presentation/feed_page.dart';


class FeedModule extends Module {
  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args)=> const FeedPage()),
    
  ];
}