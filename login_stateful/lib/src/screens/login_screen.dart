import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  Widget build(context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(padding: EdgeInsets.only(top: 20.0)),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        icon: Icon(Icons.email),
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        icon: Icon(Icons.lock),
        labelText: 'Password',
        ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: (){}, 
    child: Text('Submit!'),
    );
  }
}
