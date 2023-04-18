
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:twitter_clone/modules/signup/presentation/pages/themes_list/widgets/theme_container_controller.dart';

import '../../../../domain/entities/twitter_theme.dart';

class ThemeContainer extends StatefulWidget {
  final TwitterTheme twitterTheme;

  const ThemeContainer({super.key, required this.twitterTheme});

  @override
  State<ThemeContainer> createState() => _ThemeContainerState();
}

class _ThemeContainerState extends State<ThemeContainer> {
  late ThemeContainerController controller;

  @override
  void initState() {
    controller = ThemeContainerController();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        bool isSelected = controller.isSelected;

        return InkWell(
          onTap: () {
            controller.select();
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: isSelected ? Colors.blue : Colors.grey),
              color: isSelected ? Colors.blue : Colors.white, 
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 5.0, right: 5.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.check_circle, color: Colors.white,)
                  ),
                ),
                const SizedBox(height: 30.0,),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, bottom: 5.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      widget.twitterTheme.name, 
                      style: isSelected ? 
                          const TextStyle(color: Colors.white) 
                          : const TextStyle(color: Colors.black),
                    )
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}