import 'package:mobx/mobx.dart';
part 'theme_container_controller.g.dart';

class ThemeContainerController = _ThemeContainerControllerBase with _$ThemeContainerController;

abstract class _ThemeContainerControllerBase with Store {
  @observable
  bool isSelected = false;

  @action
  void select() {
    isSelected = !isSelected;
  }
}