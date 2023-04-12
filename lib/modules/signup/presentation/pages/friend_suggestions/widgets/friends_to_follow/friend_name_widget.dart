import 'package:flutter/material.dart';

class FriendName extends StatelessWidget {
  final String name;
  const FriendName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$name ❤️ 👤 🎤', 
      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}