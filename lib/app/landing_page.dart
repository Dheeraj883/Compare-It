import 'package:compareit/app/sign_in/sign_in_page.dart';
import 'package:compareit/services/auth.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class LandingPage extends StatefulWidget {
  LandingPage({@required this.auth});
  final AuthBase auth;
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  NormalUser _user;
  @override
  void initState() {
    super.initState();
    _checkCurrentUser();
  }

  Future<void> _checkCurrentUser() async {
    NormalUser user = await widget.auth.currentUser();
    _updateUser(user);
  }

  void _updateUser(NormalUser user) {
    setState(() {
      _user = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      return SignInPage(
        auth: widget.auth,
        onSignIn: _updateUser,
      );
    } else {
      return HomePage(
        auth: widget.auth,
        onSignOut: () => _updateUser(null),
      );
    }
  }
}
