import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:twitter_clone/modules/signup/presentation/pages/friend_suggestions/widgets/friends_to_follow/friend_card_widget.dart';
import '../../../../../shared/ui/subtitle_wigget.dart';
import '../../../../../shared/ui/title_widget.dart';
import '../../../../../shared/ui/widgets/twitter_button.dart';
import '../../../domain/entities/friend.dart';
import '../../widgets/twitter_appbar.dart';
import 'friend_suggestions_page_controller.dart';





class FriendSuggestionsPage extends StatefulWidget {
  const FriendSuggestionsPage({super.key});

  @override
  State<FriendSuggestionsPage> createState() => _FriendSuggestionsPageState();
}

class _FriendSuggestionsPageState extends State<FriendSuggestionsPage> {
  late FriendSuggestionsPageController controller;
  
  @override
  void initState() {
    print('init state friend sugg....');
    controller = Modular.get<FriendSuggestionsPageController>();
    controller.loadFriendSuggestions();
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
                Observer(
                  builder: (context) {
                    if (controller.observableLoadFriends != null && 
                        controller.observableLoadFriends!.status == FutureStatus.pending && 
                        controller.friends == null) {
                      return const CircularProgressIndicator();
                    }

                    List<Friend> friendsSuggestions = controller.friends!;
                    List<Widget> friendCards = friendsSuggestions.map(_createFriendCard).toList();
                    friendCards.add(
                      Align(
                        alignment: Alignment.centerRight,
                        child: TwitterButton(
                          child: const Text('Next'), 
                          onPressed: () {
                            Modular.to.pushNamed('/choose_themes');
                          },
                        ),
                      )
                    );
                    
                    return Column(
                      children: friendCards,
                    );  
                  }
                ),  
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _createFriendCard(Friend friend) {
    return FriendCard(friend: friend); //FriendCard é um widget
  }
}