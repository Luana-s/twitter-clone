import 'package:flutter/material.dart';

import 'modules/signup/presentation/pages/create_account/create_account_page.dart';
import'modules/signup/presentation/pages/choose_language/choose_language_page.dart';

import'modules/signup/presentation/signup_init_page.dart';

import 'shared/ui/widgets/text_field/text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignUpInit(),
       routes: {
        '/choose_language': (context) => const ChooseLanguagePage(), 
        '/create_account': (context) => const CreateAccountPage(),
        //'/friend_suggestions': (context) => const FriendSuggestionsPage()
      }, 
      
    );
  }
}