import 'package:mobx/mobx.dart';
part 'twitter_text_field_controller.g.dart';

class TwitterTextFieldController = _TwitterTextFieldControllerBase with _$TwitterTextFieldController;

abstract class _TwitterTextFieldControllerBase with Store {
  //
  @observable
  bool Function(String) validate = (strng) => false;
  
  @observable
  String input = '';

  @computed
  bool get isValid => validate(input);

  @action
  void setInput(String input) {
    this.input = input;
  }

  void setCallback(bool Function(String) validate) {
    this.validate = validate;
  }

}