import 'package:flutter/material.dart';
import 'package:twitter_clone/modules/feed/presentation/widgets/post_content_area.dart';
import 'package:twitter_clone/modules/feed/presentation/widgets/user_avatar.dart';

import '../moldels/post.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key, required this.post});

  final Post post;

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const UserAvatar(imageURL: 'https://buffer.com/library/content/images/2020/05/Ash-Read.png'),
          const SizedBox(width: 10,),
          Expanded(child: PostContentArea(post: widget.post)),
        ],
      ),
    );
  }
}