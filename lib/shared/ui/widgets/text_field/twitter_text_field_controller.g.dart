// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitter_text_field_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TwitterTextFieldController on _TwitterTextFieldControllerBase, Store {
  Computed<bool>? _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??= Computed<bool>(() => super.isValid,
          name: '_TwitterTextFieldControllerBase.isValid'))
      .value;

  late final _$validateAtom =
      Atom(name: '_TwitterTextFieldControllerBase.validate', context: context);

  @override
  bool Function(String) get validate {
    _$validateAtom.reportRead();
    return super.validate;
  }

  @override
  set validate(bool Function(String) value) {
    _$validateAtom.reportWrite(value, super.validate, () {
      super.validate = value;
    });
  }

  late final _$inputAtom =
      Atom(name: '_TwitterTextFieldControllerBase.input', context: context);

  @override
  String get input {
    _$inputAtom.reportRead();
    return super.input;
  }

  @override
  set input(String value) {
    _$inputAtom.reportWrite(value, super.input, () {
      super.input = value;
    });
  }

  late final _$_TwitterTextFieldControllerBaseActionController =
      ActionController(
          name: '_TwitterTextFieldControllerBase', context: context);

  @override
  void setInput(String input) {
    final _$actionInfo = _$_TwitterTextFieldControllerBaseActionController
        .startAction(name: '_TwitterTextFieldControllerBase.setInput');
    try {
      return super.setInput(input);
    } finally {
      _$_TwitterTextFieldControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
validate: ${validate},
input: ${input},
isValid: ${isValid}
    ''';
  }
}