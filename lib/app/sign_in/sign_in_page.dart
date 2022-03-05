import 'dart:ui';

import 'package:compareit/app/sign_in/sign_in_button.dart';
import 'package:compareit/app/sign_in/social_sign_in_button.dart';
import 'package:flutter/material.dart';

import '../../services/auth.dart';

class SignInPage extends StatelessWidget {
  final AuthBase auth;

  const SignInPage({@required this.auth});

  void _signInAnonymously() async {
    try {
      await auth.signInAnonymously();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text('Compare It'),
        elevation: 2.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Sign In',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
            SizedBox(
              height: 50.0,
            ),
            SocialSignInButton(
              assetName: 'images/google-logo.png',
              text: 'Sign in with Google',
              textColor: Colors.black87,
              color: Colors.white,
              onPressed: () {},
            ),
            SizedBox(
              height: 10.0,
            ),
            SocialSignInButton(
              assetName: 'images/facebook-logo.png',
              text: "Sign in with Facebook",
              textColor: Colors.white,
              color: Color(0xFF334D92),
              onPressed: () {},
            ),
            SizedBox(
              height: 10.0,
            ),
            SignInButton(
              text: "Sign in with Email",
              textColor: Colors.white,
              color: Colors.teal[700],
              onPressed: () {},
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'or',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            SignInButton(
              text: "Go Anonymous",
              textColor: Colors.black87,
              color: Colors.lime[300],
              onPressed: _signInAnonymously,
            ),
          ],
        ),
      ),
    );
  }
}
