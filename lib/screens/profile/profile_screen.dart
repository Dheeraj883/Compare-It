import 'package:compareit/components/coustom_bottom_nav_bar.dart';
import 'package:compareit/enums.dart';
import 'package:compareit/services/auth.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  final AuthBase auth;
  ProfileScreen({required this.auth});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(
        auth: Auth(),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
