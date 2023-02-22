import 'package:flutter/material.dart';


import '../../../../shared/ui/widgets/twitter_button.dart';

class SignUpInit extends StatelessWidget {
  const SignUpInit({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildTwitterIcon(),
              const Text('See what\'s happening \n in the world right now.', style: TextStyle(fontFamily: 'Poppins', fontSize: 22),),
              _buildCentralMessage(context),
              _buildCreateAccountMessage(),
            ],
          ),
        )
      ),
    );
  }

  Widget _buildTwitterIcon() {
    return Image.asset('assets/images/bird_icon.png', width: 50, height: 50,);
  }


 Widget _buildCentralMessage(BuildContext context) {
    return Column(
      children: [
        TwitterButton.social(child: _buildSocialContent(logoPath: 'assets/images/google.png', socialName: 'Google'), callback:handelSocial, ),
        const SizedBox(height: 20,),
        TwitterButton(callback:(){
          handelSignUp(context);
        }, child: const Text('Create Account'), )
      ],
    );
  }
  void handelSignUp(BuildContext context) {
    print('Fazer sign up normal');
    Navigator.pushNamed(context, '/create_account');
  }

  void handelSocial(){
    print('Login com o google');
  }

  Widget _buildCreateAccountMessage() {
    return RichText(text: TextSpan(
      text: 'Have an account already?',
      style: TextStyle(color: Colors.grey[600]),
      children: const [
        TextSpan(
          text: ' Log in',
          style: TextStyle(color: Colors.blue)
        )
      ]
    ));
  }
  Widget _buildSocialContent({required String socialName, required  String logoPath}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(logoPath, width: 40,height: 40,),
            const SizedBox(width: 10,),
            Text('Continue with $socialName',style:const TextStyle(color:Colors.black, fontWeight: FontWeight.bold),)
          ],

    );

  }
}
