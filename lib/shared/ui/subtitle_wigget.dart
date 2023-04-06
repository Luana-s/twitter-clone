import 'package:flutter/material.dart';

class SubtitleWidget extends StatelessWidget {
  final String title;
  const SubtitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title, 
        style: const TextStyle(
          color: Colors.grey, 
          fontWeight: FontWeight.bold,
          fontSize: 17
        ),
      ),
    );
  }
}