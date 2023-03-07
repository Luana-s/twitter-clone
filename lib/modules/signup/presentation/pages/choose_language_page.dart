import 'package:flutter/material.dart';
import 'package:twitter_clone/modules/signup/presentation/widgets/custom_checkbox.dart';
import 'package:twitter_clone/shared/ui/widgets/bird_icon_widget.dart';
import 'package:twitter_clone/modules/signup/presentation/pages/create_account_page.dart';
class ChooseLanguagePage extends StatefulWidget {
  const ChooseLanguagePage({super.key});

  @override
  State<ChooseLanguagePage> createState() => _ChooseLanguagePageState();
}

class _ChooseLanguagePageState extends State<ChooseLanguagePage> {
  bool isPtBr = false;
  late UserForm form;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    form = ModalRoute.of(context)!.settings.arguments as UserForm;
  }

  
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const BirdIconWidget(),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                'Olá, ${form.name}', 
                style: const TextStyle(
                  color: Colors.black, 
                  fontWeight: FontWeight.bold,
                  fontSize: 40
                ),
              ),
    

          /*child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children : [
                const Text('Selecione seu(s) idioma(s)',style:TextStyle(color:Colors.black, fontSize: 28)),
                const Padding (
                  padding: EdgeInsets.all(8.0),
                  child: Text('Selecione o(s) idioma(s) para personalizar sua experiência no Twitter.',style: TextStyle(color: Color.fromARGB(255, 131, 129, 129),fontSize: 15)),
                ),*/
                TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar idiomas',
                  prefixIcon: const  Icon(Icons.search, color: Colors.grey,),
                  enabledBorder: _buildBorder(),
                  focusedBorder: _buildBorder(),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 241, 245, 246),
                  contentPadding: const EdgeInsets.symmetric(vertical: 3),
                ),
              ),
              const CustomCheckBox(value: true, title: 'português'),
              const CustomCheckBox(value: false, title: 'espanhol'),
              const CustomCheckBox(value: false, title: 'inglês'),
            ],
          ),
        )
      ),
    );
  }

  InputBorder _buildBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
      borderSide: BorderSide(color: Color.fromARGB(255, 241, 245, 246))
    );
  }

}

  