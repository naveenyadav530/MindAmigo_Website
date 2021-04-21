import 'package:flutter/material.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/size_config.dart';

class HomeSection extends StatelessWidget {

  final Color sectionColor;
  final Alignment sectionAlign;
  final double sectionPositionLeft;
  final double sectionPositionRight;
  final String sectionText;
  final Color sectionTextColor;
  final double sectionFontSize;
  final double imagePositionLeft;
  final double imagePositionRight;
  final String image;
  //final CircleAmigo sectionCircles;

  HomeSection({
    this.image,
    this.imagePositionLeft,
    this.imagePositionRight,
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
          ),
          Positioned(
            left: imagePositionLeft,
            right:  imagePositionRight,
            child: Image.asset(image,height: 26.04*SizeConfig.heightMultiplier,width: 32.55*SizeConfig.heightMultiplier,),
          ),

        ],
      ),
    );
  }
}


class MobileHomeSection extends StatelessWidget {
  final Color sectionColor;
  final String sectionText;
  final Color sectionTextColor;
  final double sectionFontSize;
  final String image;

  const MobileHomeSection({Key key, this.sectionColor, this.sectionText, this.sectionTextColor, this.sectionFontSize, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: sectionColor,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Image.asset(image, height: 30.25*SizeConfig.heightMultiplier, width: 30.25*SizeConfig.heightMultiplier,),
          Padding(
            padding:EdgeInsets.symmetric(vertical: 1.51*SizeConfig.heightMultiplier),
            child: Text(sectionText, textAlign:TextAlign.center,
              style: TextStyle(
                  fontFamily: robot,
                  fontWeight: FontWeight.bold,
                  fontSize:sectionFontSize,
                color: sectionTextColor,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
