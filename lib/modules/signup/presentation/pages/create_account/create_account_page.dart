import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:twitter_clone/modules/signup/presentation/helpers/validators.dart';
import 'package:twitter_clone/modules/signup/presentation/pages/create_account/create_account_page_controller.dart';
import 'package:twitter_clone/modules/signup/presentation/widgets/twitter_appbar.dart';
import 'package:twitter_clone/shared/ui/widgets/text_field/text_field.dart';
import '../../../../../shared/ui/widgets/text_field/twitter_text_field_controller.dart';
import '../../../../../shared/ui/widgets/twitter_button.dart';



class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  TwitterTextFieldController nameController = TwitterTextFieldController();
  TwitterTextFieldController emailController = TwitterTextFieldController();
  late CreateAccountPageController controller;

  @override
  void initState() {
    super.initState();

    controller = Modular.get<CreateAccountPageController>();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TwitterAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Create your account', 
                style: TextStyle(
                  color: Colors.black, 
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),
              ),
              TwitterTextField(hint: 'Name',
                validate: CreateAccountValidators.validateName,
                errorMessage:'Nome inválido! Deve ter ao menis 5 caracteres',
                controller: nameController),
              TwitterTextField(
                hint: 'Email address',
                validate: CreateAccountValidators.validateEmail,
                errorMessage: 'Email inválido!',
                controller: emailController
              ),


            const SizedBox(height: 20),
              Observer(
                builder: (context) {
                  if (controller.createAccountObservableFuture != null && controller.createAccountObservableFuture!.status==FutureStatus.pending){
                    return const CircularProgressIndicator.adaptive();
                  }
                  
  
                  return Align(
                    alignment: Alignment.centerRight,
                    child: TwitterButton(
                      width: 110.0,
                      height: 40.0,
                      onPressed: nameController.isValid && emailController.isValid ? confirm : null,
                      child: const Text('Avançar'),
                     ),
                  );
                }
              )
              
              
            ],
          ),
        )
      )
    );
  }

   Future<void> confirm() async {
     controller.confirmWithCredentials(
      username: "",
      password: "123123",
      name: nameController.input,
      email: emailController.input
    );

  }

}
