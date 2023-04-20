import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../moldels/post.dart';

class PostUpperInfoWidget extends StatelessWidget {
  const PostUpperInfoWidget({super.key, required this.post});

  final Post post;

  final TextStyle myStyleBold = const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  final TextStyle myStyleGrey = const TextStyle(fontSize: 14, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat('d, MMM');
    DateTime postDate = post.date;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('João da Silva', style: myStyleBold,),
        const Icon(Icons.check_circle, color: Colors.blue, size: 17,),
        Row(
          children: [
            Text('@joao', style: myStyleGrey,),
            Text(dateFormat.format(postDate), style: myStyleGrey),
          ],
        ),
        InkWell(
          onTap: () {
            print('Abrir menu bottom');
          },
          child: const Icon(Icons.more_vert, color: Colors.grey,),
        )
      ],
    );
  }
}