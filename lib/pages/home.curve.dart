import 'package:flutter/material.dart';
import 'dart:math';

class CurvedHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageBackground(
            foreColor: Colors.brown[200],
            backColor: Colors.orange[500],
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 36.0),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                child: Text('Welcome Home..'),
              )
            ],
          )
        ],
      ),
    );
  }
}

class PageBackground extends StatelessWidget {
  PageBackground({ this.backColor, this.foreColor }) :
      assert(foreColor != null),
      assert(backColor != null);

  final Color backColor;
  final Color foreColor;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: backColor,
          ),
        ),
        Container(
          width: screenWidth * .80,
          height: screenHeight * .5,
          decoration: BoxDecoration(
              color: foreColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(360.0),
              )
          ),
        ),
      ],
    );
  }
}
