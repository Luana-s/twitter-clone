import 'package:mobx/mobx.dart';
part 'twitter_text_field_controller.g.dart';

class TwitterTextFieldController = _TwitterTextFieldControllerBase with _$TwitterTextFieldController;

abstract class _TwitterTextFieldControllerBase with Store {
  String? errorMessage;

  @observable
  bool Function(String) validate = (strng) => false;
  
  @observable
  String input = '';

  @computed
  bool get isValid => validate(input);

  @computed
  String? get getErrorMessage => isValid ? null : errorMessage;

  @action
  void setInput(String input) {
    this.input = input;
  }

  void setValidator(bool Function(String) validate) {
    this.validate = validate;
  }
  void setErrorMessage(String? errorMessage) {
    this.errorMessage = errorMessage;
  }

}