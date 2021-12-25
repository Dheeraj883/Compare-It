import 'package:flutter/material.dart';

void main() {
  runApp(CompareIt());
}

class CompareIt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Compare It"),
        ),
        body: Container(
          child: Text(
            "Welcome to our App",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
