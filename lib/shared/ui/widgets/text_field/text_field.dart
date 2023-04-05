import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:twitter_clone/shared/ui/widgets/text_field/twitter_text_field_controller.dart';

class TwitterTextField extends StatefulWidget {
  final String hint;
  final String? errorMessage;
  bool Function(String)? validate;
  TwitterTextFieldController controller;

  TwitterTextField({super.key, required this.hint,this.errorMessage,required this.controller, this.validate});

  @override
  State<TwitterTextField> createState() => _TwitterTextFieldState();
}

class _TwitterTextFieldState extends State<TwitterTextField> {
  late TwitterTextFieldController controller = TwitterTextFieldController();

  @override
  void initState() {
    controller = widget.controller;
    controller.setErrorMessage(widget.errorMessage);
   
    if (widget.validate != null) {
      controller.setValidator(widget.validate!);
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
              : const SizedBox(),
              errorText: controller.getErrorMessage
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