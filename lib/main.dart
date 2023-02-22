import 'package:flutter/material.dart';
import 'package:twitter_clone/modules/signup/presentation/pages/create_account.dart';

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
      home: const SignUpInit(),
       routes: {
        '/create_account':(context) => const CreateAccountPage()
      }, 
      
    );
  }
}