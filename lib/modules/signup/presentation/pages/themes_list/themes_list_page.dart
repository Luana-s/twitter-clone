import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:twitter_clone/modules/signup/presentation/pages/themes_list/widgets/theme_container.dart';
import 'package:twitter_clone/shared/ui/widgets/twitter_button.dart';

import '../../../../../shared/ui/subtitle_wigget.dart';
import '../../../../../shared/ui/title_widget.dart';
import '../../../domain/entities/twitter_theme.dart';
import '../../widgets/twitter_appbar.dart';

class ThemeListPage extends StatefulWidget {
  const ThemeListPage({super.key});

  @override
  State<ThemeListPage> createState() => _ThemeListPageState();
}

class _ThemeListPageState extends State<ThemeListPage> {
  List<TwitterTheme> themes = [
    TwitterTheme(id: '1', name: 'Musica'),
    TwitterTheme(id: '2', name: 'Esporte'),
    TwitterTheme(id: '3', name: 'Política'),
    TwitterTheme(id: '4', name: 'Educação'),
    TwitterTheme(id: '1', name: 'Musica'),
    TwitterTheme(id: '2', name: 'Esporte'),
    TwitterTheme(id: '3', name: 'Política'),
    TwitterTheme(id: '4', name: 'Educação'),
    TwitterTheme(id: '1', name: 'Musica'),
    TwitterTheme(id: '2', name: 'Esporte'),
    TwitterTheme(id: '3', name: 'Política'),
    TwitterTheme(id: '4', name: 'Educação'),
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> themeCards =  themes.map((eachTwitterTheme) => 
        ThemeContainer(twitterTheme: eachTwitterTheme) ).toList();

    List<Widget> themeRows = [];
    for (int i = 0; i < themeCards.length - 1; i = i + 2) {
      Row row = Row(
        children: [
          Expanded(child: themeCards[i]),
          const SizedBox(width: 7.0,),
          Expanded(child: themeCards[i + 1])
        ],
      );

      Padding rowWithPadding = Padding(
        padding: const EdgeInsets.only(bottom: 7.0),
        child: row
      );

      themeRows.add(rowWithPadding);
    }

    return Scaffold(
      appBar: const TwitterAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TitleWidget(title: 'O que você quer no twitter?'),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: SubtitleWidget(title: 'Você pode escolher os temas para que o twitter selecione as melhores postagens para você!'),
              ),
              Align(
                alignment:Alignment.centerRight ,
                child: TwitterButton(
                  child: const Text ('Finish'),
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.3,
                  onPressed: (){
                    Modular.to.pushNamed('/feed');
                  },),

              ),
               SizedBox(height: 20.0,),
              ...themeRows,
            ],
          ),
        ),
      ),
    );
  }
}