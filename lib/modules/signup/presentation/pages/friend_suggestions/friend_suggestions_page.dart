import 'package:flutter/material.dart';
import 'package:twitter_clone/modules/signup/presentation/pages/friend_suggestions/widgets/friends_to_follow/friend_card_widget.dart';
import 'package:twitter_clone/shared/ui/title_widget.dart';
import '../../../../../shared/ui/subtitle_wigget.dart';
import '../../../data/dasources/load_friends_suggestions_datasource.dart';
import '../../../data/dasources/load_friends_suggestions_datasource_impl.dart';
import '../../../data/dasources/sign_up_repository.dart';
import '../../../data/dasources/signup_google_datasource.dart';
import '../../../data/dasources/signup_rest_datasource.dart';
import '../../../data/dasources/signup_web_datasource.dart';
import '../../../domain/friend.dart';
import '../../../data/repositories/signup_repository.dart';
import '../../widgets/twitter_appbar.dart';
import 'friend_suggestions_page_contoller.dart';


class FriendSuggestionsPage extends StatefulWidget {
  const FriendSuggestionsPage({super.key});

  @override
  State<FriendSuggestionsPage> createState() => _FriendSuggestionsPageState();
}

class _FriendSuggestionsPageState extends State<FriendSuggestionsPage> {
  late FriendsSuggestionsPageController controller;
  
  @override
  void initState() {
    SignUpGoogleDatasource googleDatasource = SignUpGoogleDatasource();
    SignUpWebDatasource signUpWebDatasource = SignUpRestDatasource();
    LoadFriendSuggestionsDatasource datasource = LoadFriendSuggestionsDatasourceImpl();
    SignUpRepository repository = SignUpRepositoryImpl(datasource: datasource, webDatasource);
    controller = FriendsSuggestionsPageController(repository: repository);

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TwitterAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Column( 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [  
                TitleWidget(title: 'Sugestões de perfis para seguir'),
                const SubtitleWidget(title: 'Ao seguir alguém você verá os twittes dessa pessoa em sua timeline na página inicial'),
                const SizedBox(height: 10),
                TitleWidget(title: 'Pessoas que talvez você conheça', size: 20),
                FutureBuilder<List<Friend>>(
                  future: controller.loadFriendSuggestions(),
                  builder: (_, snapshot) {
                    if (!snapshot.hasData) {
                      return const CircularProgressIndicator();
                    }

                    if (snapshot.data == null) {
                      return const Text('Não há sugestões de amigos!');
                    }
                    
                    List<Friend> friendsSuggestions = snapshot.data!;
                    List<Widget> friendCards = friendsSuggestions.map(_createFriendCard).toList();
                    
                    return Column(
                      children: friendCards,
                    );
                  })
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _createFriendCard(Friend friend) {
    return FriendCard(friend: friend); 
  }
}