import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:twitter_clone/modules/signup/presentation/pages/choose_language/choose_language_page_controller.dart';
import '../../../../../shared/ui/widgets/twitter_button.dart';
import '../../widgets/custom_ckeckbox/custom_checkbox.dart';
import '../../widgets/twitter_appbar.dart';
import'package:twitter_clone/modules/signup/presentation/pages/create_account/create_account_page.dart';

class ChooseLanguagePage extends StatefulWidget {
  const ChooseLanguagePage({super.key});

  @override
  State<ChooseLanguagePage> createState() => _ChooseLanguagePageState();
}

class _ChooseLanguagePageState extends State<ChooseLanguagePage> {
  ChooseLanguagePageController controller = ChooseLanguagePageController();
  bool isPtBr = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TwitterAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              _buildSearchField(),
              _buildLanguageList(),
              TwitterButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/create_account');
                  }, 
                  child: const Text('Create Account')
                )
            ],
          ),
        )
      ),
    );
  }

  Widget _buildSearchField() {
    return Observer(
      builder: (context) {
        return TextField(
          decoration: InputDecoration(
            hintText: 'Buscar idiomas',
            prefixIcon: const  Icon(Icons.search, color: Colors.grey,),
            enabledBorder: _buildBorder(),
            focusedBorder: _buildBorder(),
            filled: true,
            fillColor: const Color.fromARGB(255, 241, 245, 246),
            contentPadding: const EdgeInsets.symmetric(vertical: 3),
          ),
          onChanged: (text) {
            controller.setSearch(text);
          },
        );
      }
    );
  }

  InputBorder _buildBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
      borderSide: BorderSide(color: Color.fromARGB(255, 241, 245, 246))
    );
  }

  Widget _buildLanguageList() {
    return Observer(builder: (context) {
      List<String> languages = controller.filteredLanguages; // ['inglês', 'ind...']
      List<Widget> languageWidgets = languages.map((eachLanguage) => 
        _buildLanguageColumn(eachLanguage)).toList();
      
      return Column(
        children: languageWidgets,
      );
    });
  }

  Widget _buildLanguageColumn(String language) {
    return CustomCheckBox(value: false, title: language, callback: (isChecked) {
      if (isChecked) {
        controller.addLanguage(language);
        return;
      } 

      controller.removeLanguage(language);
    },);
  }

  

}