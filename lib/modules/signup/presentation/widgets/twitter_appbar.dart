

import 'package:flutter/material.dart';

import '../../../../shared/ui/widgets/bird_icon_widget.dart';
import '../pages/create_account/create_account_page.dart';

class TwitterAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TwitterAppBar({super.key});

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
            padding: const EdgeInsets.all(8.0),
            child: Column(
                  children:const  [
                    Padding (
                      padding:   EdgeInsets.only(top: 10),
                      child: Text('Selecione seu(s) idioma(s)',style:TextStyle(color:Colors.black, fontSize: 28,fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('Selecione o(s) idioma(s) para personalizar sua experiência no Twitter.',style: TextStyle(color: Color.fromARGB(255, 131, 129, 129),fontSize: 15)),
                    ),
                  ],
            )
        ),
      )

      );    
 
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}