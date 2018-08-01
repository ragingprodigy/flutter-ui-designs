import 'package:flutter/material.dart';

class CurvedHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Center(
          child: Text('Welcome Home'),
        ),
      ),
    );
  }
}