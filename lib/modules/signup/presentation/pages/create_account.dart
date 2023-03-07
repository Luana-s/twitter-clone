import 'package:flutter/material.dart';
import 'package:twitter_clone/shared/ui/widgets/text_field.dart';


class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: SafeArea(child: Padding(
      padding:const  EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: const [
          Text('Create your account', style: TextStyle(color: Colors.black, fontWeight:FontWeight.bold, fontSize: 30)),
          TwitterTextField(hint: 'Name',),
          TwitterTextField(hint: 'Phone number or email address',),
          TwitterTextField(hint:'Date of birth' ,),
          
        ],
      ),
    )));
  }
}