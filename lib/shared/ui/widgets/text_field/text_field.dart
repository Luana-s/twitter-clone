import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'twitter_text_field_controller.dart';

class TwitterTextField extends StatefulWidget {
  final String hint;
  bool Function(String)? validate;

  TwitterTextField({super.key, required this.hint, this.validate});

  @override
  State<TwitterTextField> createState() => _TwitterTextFieldState();
}

class _TwitterTextFieldState extends State<TwitterTextField> {
  TwitterTextFieldController controller = TwitterTextFieldController();

  @override
  void initState() {
    if (widget.validate != null) {
      controller.setCallback(widget.validate!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return TextField(
          decoration: InputDecoration(
            hintText: widget.hint,
            suffixIcon: controller.isValid ? 
              const Icon(Icons.check_circle_rounded, color: Colors.green) 
              : const SizedBox()
          ),
          onChanged: (text) {
            controller.setInput(text);
          },
          maxLength: 50,
        );
      }
    );
  }
}