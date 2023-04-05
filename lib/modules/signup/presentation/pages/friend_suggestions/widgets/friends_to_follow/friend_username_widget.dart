import 'package:flutter/material.dart';

class FriendUsernameWidget extends StatelessWidget {
  final String username;
  const FriendUsernameWidget({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Text(
      '@$username', 
      style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
    );
  }
}
