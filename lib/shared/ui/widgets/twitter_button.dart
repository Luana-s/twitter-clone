import 'package:flutter/material.dart';

class TwitterButton extends StatelessWidget {
  final Widget child;
   double elevation=2;
   final Color backColor;
   BorderSide side=BorderSide.none;
  void Function()? callback; 
  
  TwitterButton({super.key, required this.child, this.callback,this.elevation=2,this.backColor=Colors.blue});

  TwitterButton.social({super.key, required this.child, this.callback,this.elevation=0,this.backColor=Colors.white})
  {

    side=BorderSide(color: Colors.grey[350]!);


  }

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SizedBox(
      width:size.width *0.75, 
      height:size.height *0.065,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: elevation,
          backgroundColor: backColor,
          shape: RoundedRectangleBorder(
            side:side,
            borderRadius: BorderRadius.circular(60)
          )
        ),
        onPressed: callback,
        child: child,
      ),
    );
  }
}