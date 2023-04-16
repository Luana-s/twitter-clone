import 'package:flutter/material.dart';
import 'package:twitter_clone/modules/signup/presentation/pages/friend_suggestions/widgets/friends_to_follow/friend_username_widget.dart';
import 'package:twitter_clone/shared/ui/widgets/twitter_button.dart';

import '../../../../../domain/entities/friend.dart';
import 'friend_name_widget.dart';

class FriendCard extends StatelessWidget {
  final Friend friend;

  const FriendCard({super.key, required this.friend});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildFriendAvatar(),
          const SizedBox(width: 10),
          Expanded(child: _buildFriendContent()),
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            FriendName(name: friend.firstName),
            FriendUsernameWidget(username: friend.username)
          ],
        ),
        TwitterButton(
          width: 100,
          height: 30,
          child: const Text('Seguir'),
          onPressed: () {},
        )
      ],
    );
  }

  Widget _buildFriendMessage() {
    return Text(friend.message);
  }
}