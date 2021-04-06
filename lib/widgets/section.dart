import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:website/styles/constants.dart';
import 'package:website/widgets/circles.dart';


class HomeSection extends StatelessWidget {
  final double sectionHeight;
  final Color sectionColor;
  final Alignment sectionAlign;
  final double sectionPositionLeft;
  final double sectionPositionRight;
  final String sectionText;
  final Color sectionTextColor;
  final double sectionFontSize;
  //final CircleAmigo sectionCircles;

  HomeSection({
    this.sectionHeight,
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
      height: sectionHeight,
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

class MobileHomeSection extends StatelessWidget {
  final double sectionHeight;
  final Color sectionColor;
  final String sectionText;
  final Color sectionTextColor;
  final double sectionFontSize;

  MobileHomeSection({
    this.sectionHeight,
    this.sectionColor,
    this.sectionText,
    this.sectionTextColor,
    this.sectionFontSize,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sectionHeight,
      color: sectionColor,
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      child:  Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(sectionText, style: TextStyle(color: sectionTextColor, fontSize: sectionFontSize, fontFamily: robot, fontWeight: FontWeight.bold),),
          ),
          CircleAmigo(

          )
        ],
      )
    );
  }
}

