import 'package:flutter/material.dart';

import 'components/signUpBody.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static String routeName = '/sign_up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up'),),
      body: Body(),
    );
  }
}