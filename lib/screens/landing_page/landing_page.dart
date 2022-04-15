import 'package:compareit/screens/home/home_screen.dart';
import 'package:compareit/screens/sign_in/sign_in_screen.dart';
import 'package:compareit/services/auth.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

class LandingPage extends StatelessWidget {
  static String routeName = "/landing";
  LandingPage({required this.auth});
  final AuthBase auth;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return StreamBuilder<NormalUser?>(
        stream: auth.onAuthStateChanged,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            NormalUser? user = snapshot.data;
            if (user == null) {
              return SignInScreen(
                auth: auth,
              );
            }
            return HomeScreen(
              auth: auth,
            );
          } else {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
