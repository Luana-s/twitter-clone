import 'package:flutter/material.dart';
import 'package:twitter_clone/modules/signup/presentation/pages/friend_suggestions/widgets/friends_to_follow/friend_card_widget.dart';

import '../../../domain/friend.dart';
import '../../widgets/twitter_appbar.dart';

class FriendSuggestionsPage extends StatefulWidget {
  const FriendSuggestionsPage({super.key});

  @override
  State<FriendSuggestionsPage> createState() => _FriendSuggestionsPageState();
}

class _FriendSuggestionsPageState extends State<FriendSuggestionsPage> {
  late Friend friend1;
  late Friend friend2;

  @override
  void initState() {
    friend1 = Friend(
      name: 'João', 
      username: 'joaogomes', 
      message: 'Cantor de brega!',
      imageURL: 'https://img.freepik.com/fotos-gratis/feche-o-retrato-de-um-rosto-jovem-barbudo_171337-2887.jpg',);
    
    friend2 = Friend(
      name: 'Maria', 
      username: 'mariagomes', 
      message: 'Atleta de volei!',
      imageURL: 'https://www.fashionbubbles.com/wp-content/uploads/2021/01/bill-7-1.png',);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TwitterAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              FriendCard(friend: friend1,),
              FriendCard(friend: friend2,),
            ],
          ),
        ),
      ),
    );
  }
}