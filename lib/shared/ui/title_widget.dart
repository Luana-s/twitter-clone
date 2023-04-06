import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  double size;

  TitleWidget({
    super.key, 
    required this.title,
    this.size = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title, 
        style: TextStyle(
          color: Colors.black, 
          fontWeight: FontWeight.bold,
          fontSize: size
        ),
      ),
    );
  }
}