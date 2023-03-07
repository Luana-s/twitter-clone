import 'package:flutter/material.dart';
import 'package:twitter_clone/shared/ui/widgets/text_field.dart';

import '../../../../shared/ui/widgets/bird_icon_widget.dart';
import '../../../../shared/ui/widgets/twitter_button.dart';


class UserForm {
  final String name;
  final String email;
  final String date;

  UserForm({required this.name, required, required this.email, required this.date});
}


class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
 TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController dateOfBithController = TextEditingController();

  bool isNameValid = false;
  bool isEmailValid = false;
  bool isDateValid = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    print('RECONSTRUINDO TELA');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const BirdIconWidget(),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.blue),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 30.0, right: 30.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Create your\naccount', 
                  style: TextStyle(
                    color: Colors.black, 
                    fontWeight: FontWeight.bold,
                    fontSize: 40
                  ),
                ),
                const SizedBox(height: 20,),
                TwitterTextField(
                  title: 'Name',
                  hint: 'Name', 
                  onChanged: (text) {
                    print('=========Digitando nome: $text');
                    if (!checkNameValid(text)) {
                      setState(() {
                        isNameValid = false;
                      });
                    } else {
                      setState(() {
                        isNameValid = true;
                      });
                    }
                  }, 
                  isValid: isNameValid,
                  controller: nameController
                ),

                TwitterTextField(
                  title: 'Email',
                  hint: 'Phone number or email address', 
                  onChanged: (text) {
                    print('Digitando email: $text');
                    if (!checkEmailValid(text)) {
                      setState(() {
                        isEmailValid = false;
                      });
                    } else {
                      setState(() {
                        isEmailValid = true;
                      });
                    }
                  }, 
                  isValid: isEmailValid,
                  controller: emailController,
                ),

                TwitterTextField(
                  title: 'Date',
                  hint: 'Date of birth', 
                  onChanged: (text) {
                    print('Digitando date: $text');
                    if (!checkDateValid(text)) {
                      setState(() {
                        isDateValid = false;
                      });
                    } else {
                      setState(() {
                        isDateValid = true;
                      });
                    }
                  }, 
                  isValid: isDateValid,
                  controller: dateOfBithController
                ),

                TwitterButton(
                  callback: checkAllFields() ? () {
                    UserForm userForm = UserForm(
                      name: nameController.text,
                      email: emailController.text,
                      date: dateOfBithController.text
                    );

                    Navigator.pushNamed(context, '/choose_language', arguments: userForm);

                  } : null, 
                child:  const Text('Continuar'))
              ],
            ),
          ),
        )
      )
    );
  }

  bool checkNameValid(String name) {
    print('validando name $name');
    return name.length > 6;
  }

  bool checkEmailValid(String email) {
    return email.isNotEmpty && email.contains('@');
  }

  bool checkDateValid(String date) {
    return date.isNotEmpty;
  }

  bool checkAllFields() {
    return isNameValid && isEmailValid && isDateValid;
  }
}