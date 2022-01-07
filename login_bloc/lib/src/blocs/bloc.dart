import 'dart:async';

class Bloc {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

// Change data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

// add data from stream
  Stream<String> get password => _passwordController.stream;
  Stream<String> get email => _emailController.stream;
}
