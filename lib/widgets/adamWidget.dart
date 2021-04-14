import 'package:flutter/material.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/responsiveLayout.dart';
import 'package:mindamigo/utils/size_config.dart';

import 'circles.dart';


class AdamBlog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        webBody: WebBlog(),
      mobileBody: MobileBlog(),
    );
  }
}


class WebBlog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: AmigoColors.cream,
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 3.55*SizeConfig.heightMultiplier),
                    child:CircleAvatar(
                      radius:5.55*SizeConfig.heightMultiplier,
                      backgroundImage: AssetImage(adamImage),
                    )
                ),
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  margin: EdgeInsets.only(top: 3.90*SizeConfig.heightMultiplier),
                  child: Text(Strings.adamTitle, textAlign: TextAlign.center, style: TextStyle(color: AmigoColors.orange, fontFamily: robot, fontSize: 2.40*SizeConfig.textMultiplier),),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                  child: Text(Strings.adamSubTitle,textAlign: TextAlign.center, style: TextStyle(color: AmigoColors.orange, fontFamily: robot, fontSize: 2.40*SizeConfig.textMultiplier, fontWeight: FontWeight.bold),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 1.30*SizeConfig.heightMultiplier),
                  width: MediaQuery.of(context).size.width/1.5,
                  child: Text(Strings.adamPara,textAlign: TextAlign.center,style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier),),
                ),
                SizedBox(height: 4.25*SizeConfig.heightMultiplier,)
              ],
            ),
          ),
          //left
          CircleAmigo(
            topCircleAmigoPosition: -7.20*SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -4.16*SizeConfig.heightMultiplier,
            circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
            circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),
          CircleAmigo(
            topCircleAmigoPosition: -9.46*SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -7.41*SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),
          CircleAmigo(
            topCircleAmigoPosition: -12.71*SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -10.67*SizeConfig.heightMultiplier,
            circleAmigoHeight: 26.04*SizeConfig.heightMultiplier,
            circleAmigoWidth: 26.04*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),

          //right
          CircleAmigo(
            topCircleAmigoPosition: 45.20*SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -10.16*SizeConfig.heightMultiplier,
            circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
            circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),
          CircleAmigo(
            topCircleAmigoPosition: 42.20*SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -13.41*SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),
          CircleAmigo(
            topCircleAmigoPosition: 39.20*SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -16.67*SizeConfig.heightMultiplier,
            circleAmigoHeight: 26.04*SizeConfig.heightMultiplier,
            circleAmigoWidth: 26.04*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),


          //left
          CircleAmigo(
            bottomCircleAmigoPosition: -7.20*SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -10.16*SizeConfig.heightMultiplier,
            circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
            circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),
          CircleAmigo(
            bottomCircleAmigoPosition: -9.46*SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -13.41*SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),
          CircleAmigo(
            bottomCircleAmigoPosition: -12.71*SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -16.67*SizeConfig.heightMultiplier,
            circleAmigoHeight: 26.04*SizeConfig.heightMultiplier,
            circleAmigoWidth: 26.04*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),
        ],
      ),
    );
  }
}

class MobileBlog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


