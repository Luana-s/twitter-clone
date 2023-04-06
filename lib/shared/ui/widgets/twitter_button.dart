import 'package:flutter/material.dart';

class TwitterButton extends StatelessWidget {
  final Widget child;
  double elevation;
  final Color backColor;
  BorderSide side = BorderSide.none;
  final double? width;
  final double? height;
  void Function()? onPressed; 
  
  TwitterButton({
    super.key, 
    this.elevation = 2,
    this.backColor = Colors.blue,
    required this.child, 
    this.width,
    this.height,
    this.onPressed,
  });

  TwitterButton.social({
    super.key, 
    this.elevation = 0,
    this.backColor = Colors.white,
    required this.child, 
    this.width,
    this.height,
    this.onPressed,
  }) {
    side = BorderSide(color: Colors.grey[350]!);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: width ?? size.width * 0.75,
      height: height ?? size.height * 0.065,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: elevation,
          backgroundColor: backColor,
          shape: RoundedRectangleBorder(
            side: side,
            borderRadius: BorderRadius.circular(60)
          )
        ),
        onPressed: onPressed,
        child: child
      ),
    );
  }
}