import 'package:flutter/material.dart';

import '../../../../shared/ui/widgets/twitter_button.dart';
import '../../../shared/ui/widgets/bird_icon_widget.dart';

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
            const BirdIconWidget(),
           
            const Text(
              'See what\'s happening \n in the world right now.',
              style: TextStyle(fontFamily: 'Poppins', fontSize: 22),
            ),
            _buildCentralMessage(context),
            _buildCreateMessage(),
            _buildCreateAccountMessage(),
          ],
        ),
      )),
    );
  }

  Widget _buildTwitterIcon() {
    return Image.asset(
      'assets/images/bird_icon.png',
      width: 50,
      height: 50,
    );
  }

  Widget _buildCentralMessage(BuildContext context) {
    return Column(
      children: [
        TwitterButton.social(
          child: _buildSocialContent(
              logoPath: 'assets/images/google.png', socialName: 'Google'),
          onPressed: handelSocial,
        ),
        const SizedBox(
          height: 20,
        ),
            Row(children: <Widget>[
              Expanded(
                child: Container(
                    margin: const EdgeInsets.only(left: 30.0, right: 10.0),
                    child: Divider(
                      color: Colors.grey[400],
                      height: 25,
                      thickness: 1,
                      indent: 10,
                    )),
              ),
              const Text("Or"),
              Expanded(
                child: Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 30.0),
                    child: Divider(
                      color: Colors.grey[400],
                      height: 25,
                      indent: 10,
                      thickness: 1,
                    )),
              ),
            ]),

        TwitterButton(
          onPressed: () {
            handelSignUp(context);
          },
          child: const Text('Create Account'),
        )
      ],
    );
  }

  void handelSignUp(BuildContext context) {
    print('Fazer sign up normal');
    Navigator.pushNamed(context, '/choose_language');
  }

  void handelSocial() {
    print('Login com o google');
  }

  Widget _buildCreateAccountMessage() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: RichText(
          text: TextSpan(
              text: 'Have an account already?',
              style: TextStyle(color: Colors.grey[600]),
              children: const [
            TextSpan(text: ' Log in', style: TextStyle(color: Colors.blue))
          ])),
    );
  }

  Widget _buildCreateMessage() {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: RichText(
          text: TextSpan(
              text: 'By signing up, you agree to our ',
              style: TextStyle(color: Colors.grey[600]),
              children: const [
            TextSpan(
                text: 'Terms, Privacy Policy',
                style: TextStyle(color: Colors.blue)),
            TextSpan(text: ', and '),
            TextSpan(text: 'Cookie Use.', style: TextStyle(color: Colors.blue))
          ])),
    );
  }

  Widget _buildSocialContent(
      {required String socialName, required String logoPath}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          logoPath,
          width: 40,
          height: 40,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          'Continue with $socialName',
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
