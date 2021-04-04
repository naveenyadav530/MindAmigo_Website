import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:website/Widgets/circles.dart';
import 'package:website/styles/size_config.dart';
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

/*
class Section2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 26.15*SizeConfig.heightMultiplier,
      color: Colors.white,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Positioned(
            right: 140,
            child: Text("Keep a personal diary of your mood\nto help understand your mental\nhealth better",
              style: TextStyle(color: Color(0xff707070), fontSize: 37),),
          ),
          CircleAmigo(
            topCircleAmigoPosition: -180,
            leftCircleAmigoPosition: -180,
            circleAmigoWidth: 350,
            circleAmigoHeight: 350,
            circleAmigoGradient: [Color(0xFF17B8D9),Color(0xFF73D373)],
            circleAmigoOpacity: [0.6,0.5],
          ),

          CircleAmigo(
            topCircleAmigoPosition: -180,
            leftCircleAmigoPosition: -180,
            circleAmigoWidth: 400,
            circleAmigoHeight: 400,
            circleAmigoGradient: [Color(0xFF17B8D6),Color(0xFF73D373)],
            circleAmigoOpacity: [0.6,0.5],
          ),
          CircleAmigo(
            topCircleAmigoPosition: -20,
            leftCircleAmigoPosition: MediaQuery.of(context).size.width/2,
            circleAmigoWidth: 50,
            circleAmigoHeight: 50,
            circleAmigoGradient: [Color(0xFFff0000),Color(0xFFff0000)],
            circleAmigoOpacity: [0.6,0.5],
          ),
        ],
      ),
    );
  }
}
*/

/*
class Section1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 26.15*SizeConfig.heightMultiplier,
      color: Color(0xffFDF2E4),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Positioned(
            left: 120,
            child: Text("Be empowered to take back control\nof your mental health by learning\nwhat the therapists know.",
              style: TextStyle(color: Color(0xff707070), fontSize: 37),),
          ),
          CircleAmigo(
            bottomCircleAmigoPosition: -180,
            leftCircleAmigoPosition: -180,
            circleAmigoWidth: 350,
            circleAmigoHeight: 350,
            circleAmigoGradient: [Color(0xFF17B8D9),Color(0xFF73D373)],
            circleAmigoOpacity: [0.6,0.5],
          ),
          CircleAmigo(
            bottomCircleAmigoPosition: -180,
            leftCircleAmigoPosition: -180,
            circleAmigoWidth: 400,
            circleAmigoHeight: 400,
            circleAmigoGradient: [Color(0xFF17B8D6),Color(0xFF73D373)],
            circleAmigoOpacity: [0.6,0.5],
          ),
        ],
      ),
    );

  }
}
*/


class Section extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 26.15*SizeConfig.heightMultiplier,
      color: Colors.white,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Positioned(
            right: 140,
            child: Text("Tune in the ACT and CBT therapy\ncourse library along with\nmindfulness meditation",
              style: TextStyle(color: Color(0xff707070), fontSize: 37),),
          ),

        ],

      ),
    );



  }
}

