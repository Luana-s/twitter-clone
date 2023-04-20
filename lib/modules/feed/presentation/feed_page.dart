import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:twitter_clone/modules/feed/presentation/feed_controller.dart';
import 'package:twitter_clone/modules/feed/presentation/widgets/post_widgets.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  late FeedPageController controller;

  @override
  void initState() {
    controller = Modular.get<FeedPageController>();
    controller.fetchFeed();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: TwitterAppBar(
      //   leading: Container(
      //     height: 4,
      //     width: 4,
      //     decoration: const BoxDecoration(
      //       shape: BoxShape.circle,
      //       image: DecorationImage(
      //         image: NetworkImage('https://buffer.com/library/content/images/2020/05/Ash-Read.png'),
      //         fit: BoxFit.cover              
      //       )
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Observer(
            builder: (context) {
              if (controller.postsFuture == null) {
                return const CircularProgressIndicator.adaptive();
              }

              if (controller.observablePostsList!.isEmpty) {
                return const Center(child: Text('Não já posts!'),);
              }
              
              return Column(
                children: controller.observablePostsList!.map((eachPost) => PostWidget(post: eachPost)).toList(),
              );
              
            }
          )
        ),
      ),
    );
  }
}