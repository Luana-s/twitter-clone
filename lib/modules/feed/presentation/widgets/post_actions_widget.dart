import 'package:flutter/material.dart';
import 'package:twitter_clone/modules/feed/presentation/widgets/post_action.dart';

import '../moldels/post.dart';

class PostActionsWidget extends StatefulWidget {
  const PostActionsWidget({super.key, required this.post});

  final Post post;

  @override
  State<PostActionsWidget> createState() => _PostActionsWidgetState();
}

class _PostActionsWidgetState extends State<PostActionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PostAction(
          icon: Icons.message,
          number: 123,
          callback: () {
            print('Ação de comentar!');
          }
        ),
        PostAction(
          icon: Icons.sync,
          number: 123,
          callback: () {
            print('Ação de repostar!');
          }
        ),
        PostAction(
          icon: Icons.favorite_outline_sharp,
          number: 123,
          callback: () {
            print('Ação de like!');
          }
        ),
        PostAction(
          icon: Icons.stacked_bar_chart,
          number: 123,
          callback: () {
            print('Ação de estatística!');
          }
        ),
        PostAction(
          icon: Icons.share_outlined,
          number: 123,
          callback: () {
            print('Ação de compartilhar!');
          }
        ),
      ],
    );
  }
}