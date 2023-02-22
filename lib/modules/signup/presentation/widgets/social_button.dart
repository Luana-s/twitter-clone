import 'package:flutter/material.dart';


class SocialButton extends StatelessWidget {
  final String logoPath;
  final String socialName;
  final VoidCallback callback;


  const SocialButton({super.key, required this.logoPath, required this.socialName,required this.callback});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SizedBox(
      width:size.width *0.75, 
      height:size.height *0.065,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(color:Colors.grey[350]!),
            borderRadius: BorderRadius.circular(60)
          )
        ),
        onPressed: callback,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(logoPath, width: 40,height: 40,),
            SizedBox(width: 10,),
            Text('Continue with $socialName',style:TextStyle(color:Colors.black, fontWeight: FontWeight.bold),)
          ],
        )
      ),
    );
  }
}
