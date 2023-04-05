// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_checkbox_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CustomCheckboxController on _CustomCheckboxControllerBase, Store {
  late final _$isCheckedAtom =
      Atom(name: '_CustomCheckboxControllerBase.isChecked', context: context);

  @override
  bool get isChecked {
    _$isCheckedAtom.reportRead();
    return super.isChecked;
  }

  @override
  set isChecked(bool value) {
    _$isCheckedAtom.reportWrite(value, super.isChecked, () {
      super.isChecked = value;
    });
  }

  @override
  String toString() {
    return '''
isChecked: ${isChecked}
    ''';
  }
}