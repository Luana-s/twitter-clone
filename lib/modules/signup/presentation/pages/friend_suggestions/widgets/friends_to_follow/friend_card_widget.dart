import 'package:flutter/material.dart';
import 'package:twitter_clone/modules/signup/domain/friend.dart';
import 'package:twitter_clone/modules/signup/presentation/pages/friend_suggestions/widgets/friends_to_follow/friend_username_widget.dart';
import 'package:twitter_clone/shared/ui/widgets/twitter_button.dart';

import 'friend_name_widget.dart';

class FriendCard extends StatelessWidget {
  final Friend friend;

  const FriendCard({super.key, required this.friend});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildFriendAvatar(),
          _buildFriendContent(),
        ],
      ),
    );
  }

  Widget _buildFriendAvatar() {
    return CircleAvatar(
      backgroundImage: NetworkImage(friend.imageURL),
      radius: 30,
    );
  }

  Widget _buildFriendContent() {
    return Column(
      children: [
        _buildFriendTopContent(),
        _buildFriendMessage(),
      ],
    );
  }

  Widget _buildFriendTopContent() {
    return Row(
      children: [
        Column(
          children: [
            FriendName(name: friend.name),
            FriendUsernameWidget(username: friend.username)
          ],
        ),
        TwitterButton(
          width: 100,
          height: 30,
          child: const Text('Seguir')
        ,)
      ],
    );
  }

  Widget _buildFriendMessage() {
    return Text(friend.message);
  }
}