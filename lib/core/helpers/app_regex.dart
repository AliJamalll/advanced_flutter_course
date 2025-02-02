class AppRegex{
  static bool validateEmail(String email){
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailRegex.hasMatch(email);
  }

  static bool validatePassword(String password){
    final passwordRegex = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');
    return passwordRegex.hasMatch(password);
  }

  static bool hasLowerCase(String input) {
    return RegExp(r'[a-z]').hasMatch(input);
  }

  static bool hasUpperCase(String input) {
    return RegExp(r'[A-Z]').hasMatch(input);
  }

  static bool hasSpecialChar(String input) {
    return RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(input);
  }

  static bool hasNumber(String input) {
    return RegExp(r'\d').hasMatch(input);
  }

  static bool hasMinLength(String input, int minLength) {
    return input.length >= minLength;
  }
}