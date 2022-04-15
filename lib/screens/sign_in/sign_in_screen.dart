import 'package:flutter/material.dart';

import '../../services/auth.dart';
import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  final AuthBase auth;

  const SignInScreen({required this.auth});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Body(auth: Auth()),
    );
  }
}
