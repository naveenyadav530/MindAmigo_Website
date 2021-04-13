import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {

  final Color sectionColor;
  final Alignment sectionAlign;
  final double sectionPositionLeft;
  final double sectionPositionRight;
  final String sectionText;
  final Color sectionTextColor;
  final double sectionFontSize;
  //final CircleAmigo sectionCircles;

  HomeSection({

    this.sectionColor,
    this.sectionAlign,
    this.sectionPositionLeft,
    this.sectionText,
    this.sectionTextColor,
    this.sectionFontSize,
    this.sectionPositionRight,
    //this.sectionCircles,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,

      color: sectionColor,
      child: Stack(
        alignment: sectionAlign,
        children: [
          Positioned(
            left: sectionPositionLeft,
            right:  sectionPositionRight,
            child: Text(sectionText,
              style: TextStyle(color: sectionTextColor, fontSize: sectionFontSize),),
          )
        ],
      ),
    );
  }
}