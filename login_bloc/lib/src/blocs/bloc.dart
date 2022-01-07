import 'dart:async';
import 'validators.dart';

class Bloc with Validators {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

// add data from stream
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);
  Stream<String> get email => _emailController.stream.transform(validateEmail);

// Change data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}
