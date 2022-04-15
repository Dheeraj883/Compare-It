import 'package:compareit/routes.dart';
import 'package:compareit/screens/landing_page/landing_page.dart';
import 'package:compareit/services/auth.dart';
import 'package:compareit/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Auth(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Compare It',
        theme: theme(),
        initialRoute: LandingPage.routeName,
        routes: routes,
      ),
    );
  }
}
