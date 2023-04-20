import 'package:flutter/material.dart';
import 'package:twitter_clone/modules/feed/presentation/widgets/post_actions_widget.dart';
import 'package:twitter_clone/modules/feed/presentation/widgets/post_content.dart';
import 'package:twitter_clone/modules/feed/presentation/widgets/post_upper_info_widget.dart';

import '../moldels/post.dart';

class PostContentArea extends StatefulWidget {
  const PostContentArea({super.key, required this.post});

  final Post post;

  @override
  State<PostContentArea> createState() => _PostContentAreaState();
}

class _PostContentAreaState extends State<PostContentArea> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        PostUpperInfoWidget(post: widget.post),
        PostContent(post: widget.post),
        const SizedBox(height: 10,),
        PostActionsWidget(post: widget.post),
      ],
    );
  }
}