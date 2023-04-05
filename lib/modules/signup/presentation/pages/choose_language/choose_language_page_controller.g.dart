// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choose_language_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ChooseLanguagePageController
    on ChooseLanguagePageControllerBase, Store {
  Computed<List<String>>? _$filteredLanguagesComputed;

  @override
  List<String> get filteredLanguages => (_$filteredLanguagesComputed ??=
          Computed<List<String>>(() => super.filteredLanguages,
              name: 'ChooseLanguagePageControllerBase.filteredLanguages'))
      .value;

  late final _$searchAtom =
      Atom(name: 'ChooseLanguagePageControllerBase.search', context: context);

  @override
  String get search {
    _$searchAtom.reportRead();
    return super.search;
  }

  @override
  set search(String value) {
    _$searchAtom.reportWrite(value, super.search, () {
      super.search = value;
    });
  }

  late final _$languagesAtom = Atom(
      name: 'ChooseLanguagePageControllerBase.languages', context: context);

  @override
  ObservableList<String> get languages {
    _$languagesAtom.reportRead();
    return super.languages;
  }

  @override
  set languages(ObservableList<String> value) {
    _$languagesAtom.reportWrite(value, super.languages, () {
      super.languages = value;
    });
  }

  late final _$selectedLanguagesAtom = Atom(
      name: 'ChooseLanguagePageControllerBase.selectedLanguages',
      context: context);

  @override
  ObservableList<String> get selectedLanguages {
    _$selectedLanguagesAtom.reportRead();
    return super.selectedLanguages;
  }

  @override
  set selectedLanguages(ObservableList<String> value) {
    _$selectedLanguagesAtom.reportWrite(value, super.selectedLanguages, () {
      super.selectedLanguages = value;
    });
  }

  late final _$ChooseLanguagePageControllerBaseActionController =
      ActionController(
          name: 'ChooseLanguagePageControllerBase', context: context);

  @override
  void setSearch(String search) {
    final _$actionInfo = _$ChooseLanguagePageControllerBaseActionController
        .startAction(name: 'ChooseLanguagePageControllerBase.setSearch');
    try {
      return super.setSearch(search);
    } finally {
      _$ChooseLanguagePageControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  void addLanguage(String language) {
    final _$actionInfo = _$ChooseLanguagePageControllerBaseActionController
        .startAction(name: 'ChooseLanguagePageControllerBase.addLanguage');
    try {
      return super.addLanguage(language);
    } finally {
      _$ChooseLanguagePageControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  void removeLanguage(String language) {
    final _$actionInfo = _$ChooseLanguagePageControllerBaseActionController
        .startAction(name: 'ChooseLanguagePageControllerBase.removeLanguage');
    try {
      return super.removeLanguage(language);
    } finally {
      _$ChooseLanguagePageControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
search: ${search},
languages: ${languages},
selectedLanguages: ${selectedLanguages},
filteredLanguages: ${filteredLanguages}
    ''';
  }
}