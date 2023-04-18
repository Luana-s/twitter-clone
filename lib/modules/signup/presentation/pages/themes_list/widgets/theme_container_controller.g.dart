// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_container_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ThemeContainerController on _ThemeContainerControllerBase, Store {
  late final _$isSelectedAtom =
      Atom(name: '_ThemeContainerControllerBase.isSelected', context: context);

  @override
  bool get isSelected {
    _$isSelectedAtom.reportRead();
    return super.isSelected;
  }

  @override
  set isSelected(bool value) {
    _$isSelectedAtom.reportWrite(value, super.isSelected, () {
      super.isSelected = value;
    });
  }

  late final _$_ThemeContainerControllerBaseActionController =
      ActionController(name: '_ThemeContainerControllerBase', context: context);

  @override
  void select() {
    final _$actionInfo = _$_ThemeContainerControllerBaseActionController
        .startAction(name: '_ThemeContainerControllerBase.select');
    try {
      return super.select();
    } finally {
      _$_ThemeContainerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isSelected: ${isSelected}
    ''';
  }
}