class CreateAccountValidators {
  static bool validateName(String name) {
    if (name.length > 5) {
      return true;
    }

    return false;
  }

  static bool validateEmail(String email) {
    if (email.contains('@')) {
      return true;
    }

    return false;
  }
}