import 'package:formz/formz.dart';

enum PasswordValidationError { empty }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([super.value = '']) : super.dirty();

  PasswordValidationError? validator(String value) {
    if (value.isEmpty) return PasswordValidationError.empty;
    return null;
  }
}
