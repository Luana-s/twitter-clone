import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  final bool value;
  final String title;
  const CustomCheckBox({required this.title, required this.value, super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();

    isChecked = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: isChecked,
      onChanged: handle, 
      title: Text(widget.title),
      contentPadding: const EdgeInsets.symmetric(horizontal: 0.0),
    );
  }

  void handle(bool? checked) {
    print('checked $checked');
    if (checked != null) {
      setState(() {
        isChecked = checked;
      });
    }
  }
}