import 'package:flutter/material.dart';
import '../moldels/post.dart';

class PostContent extends StatefulWidget {
  const PostContent({super.key, required this.post});

  final Post post;

  @override
  State<PostContent> createState() => _PostContentState();
}

class _PostContentState extends State<PostContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.post.body),
        const SizedBox(height: 10,),
        if (widget.post.media != null)
          PostMedia(url: widget.post.media!)
      ],
    );
  }
}

class PostMedia extends StatelessWidget {
  const PostMedia({super.key, required this.url});
  final String url;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.fill
        )
      ),
    );
  }


}