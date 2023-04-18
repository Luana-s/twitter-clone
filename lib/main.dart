import 'package:flutter/material.dart';
import 'package:twitter_clone/modules/signup/presentation/pages/friend_suggestions/friend_suggestions_page.dart';
import 'modules/signup/presentation/pages/create_account/create_account_page.dart';
import'modules/signup/presentation/pages/choose_language/choose_language_page.dart';
import 'modules/signup/presentation/pages/themes_list/themes_list_page.dart';
import'modules/signup/presentation/signup_init_page.dart';



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
      home: const  ThemeListPage(),
       routes: {
        '/choose_language': (context) => const ChooseLanguagePage(), 
        '/create_account': (context) => const CreateAccountPage(),
        '/friend_suggestions': (context) => const FriendSuggestionsPage()
      }, 
      
    );
  }
}