import 'package:flutter/material.dart';
import 'pages/home.curve.dart';

class UIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Designs',
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: CurvedHomePage(),
    );
  }
}
