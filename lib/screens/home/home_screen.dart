import 'package:compareit/components/coustom_bottom_nav_bar.dart';
import 'package:compareit/enums.dart';
import 'package:flutter/material.dart';

import '../../services/auth.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  final AuthBase auth;

  const HomeScreen({required this.auth});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
