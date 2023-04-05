import 'package:mobx/mobx.dart';
part 'custom_checkbox_controller.g.dart';

class CustomCheckboxController = _CustomCheckboxControllerBase with _$CustomCheckboxController;

abstract class _CustomCheckboxControllerBase with Store {

  @observable
  bool isChecked = false;

  void changeValue() {
    isChecked = !isChecked;
  }
}