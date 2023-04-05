import 'package:mobx/mobx.dart';
part 'choose_language_page_controller.g.dart';


class ChooseLanguagePageController = ChooseLanguagePageControllerBase with _$ChooseLanguagePageController;

abstract class ChooseLanguagePageControllerBase with Store {  

  @observable
  String search = '';

  @observable
  ObservableList<String> languages = ObservableList.of(['portugês', 'espanhol', 'inglês']);

  @observable
  ObservableList<String> selectedLanguages = ObservableList();

  @action
  void setSearch(String search) {
    this.search = search;
  }

  @action
  void addLanguage(String language) {
    if (selectedLanguages.contains(language)) return;

    selectedLanguages.add(language);
  }

  @action
  void removeLanguage(String language) {
    selectedLanguages.remove(language);
  }

  @computed
  List<String> get filteredLanguages => search.isEmpty ? languages : languages.where(_filterList).toList();

  bool _filterList(String language) {
    return language.contains(search);
  }

}