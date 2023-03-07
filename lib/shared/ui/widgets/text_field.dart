import 'package:flutter/material.dart';

class TwitterTextField extends StatefulWidget {
  final String title;
  final String hint;
  final bool isValid;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  const TwitterTextField({
    super.key, 
    required this.title,
    required this.hint, 
    required this.isValid,
    required this.controller,
    required this.onChanged,
  });

  @override
  State<TwitterTextField> createState() => _TwitterTextFieldState();
}

class _TwitterTextFieldState extends State<TwitterTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration:  InputDecoration(
        hintText: widget.hint,
        errorText: !widget.isValid ? '${widget.title} campo com error!' : null,
      ),
      maxLength:50,
      onChanged: widget.onChanged,


    );
  }
}