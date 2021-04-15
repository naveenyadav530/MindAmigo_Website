import 'package:flutter/material.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/responsiveLayout.dart';
import 'package:mindamigo/utils/size_config.dart';

import 'circles.dart';


class AdamAdvisory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      webBody: WebAdvisory(),
      mobileBody: MobileAdvisory(),
    );
  }
}


class WebAdvisory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            color: AmigoColors.lightWhite,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.25*SizeConfig.heightMultiplier),
                  child:Text("Advisory Board", style: TextStyle(color: AmigoColors.lightBrown, fontSize: 4.10*SizeConfig.textMultiplier, fontWeight: FontWeight.bold),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 13.02*SizeConfig.heightMultiplier,
                      child:  Column(
                        children: [

                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.25*SizeConfig.heightMultiplier),
                            child: CircleAvatar(
                              radius: 6.55*SizeConfig.heightMultiplier,
                              backgroundColor: Colors.white,
                            ),
                          ),

                          Text(Strings.adamDiscription1, textAlign: TextAlign.center, style: TextStyle(fontSize: 2.08*SizeConfig.textMultiplier,)),
                        ],
                      ),
                    ),
                    Container(
                      width: 13.02*SizeConfig.heightMultiplier,
                      child: Column(

                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.25*SizeConfig.heightMultiplier),
                            child: CircleAvatar(
                              radius: 6.55*SizeConfig.heightMultiplier,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Text(Strings.adamDiscription1,textAlign: TextAlign.center, style: TextStyle(fontSize: 2.08*SizeConfig.textMultiplier,)),
                        ],
                      ),
                    ),
                    Container(
                      width: 13.02*SizeConfig.heightMultiplier,
                      child:  Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.25*SizeConfig.heightMultiplier),
                            child: CircleAvatar(
                              radius: 6.55*SizeConfig.heightMultiplier,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Text(Strings.adamDiscription1,textAlign: TextAlign.center, style: TextStyle(fontSize: 2.08*SizeConfig.textMultiplier,),),
                        ],
                      ),
                    )




                  ],
                ),
                SizedBox(height: 19.53*SizeConfig.heightMultiplier,)
              ],
            ),
          ),
          //left
          CircleAmigo(
            topCircleAmigoPosition: -5.20*SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -10.16*SizeConfig.heightMultiplier,
            circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
            circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),
          CircleAmigo(
            topCircleAmigoPosition: -8.46*SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -13.41*SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),
          CircleAmigo(
            topCircleAmigoPosition: -11.71*SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -16.67*SizeConfig.heightMultiplier,
            circleAmigoHeight: 26.04*SizeConfig.heightMultiplier,
            circleAmigoWidth: 26.04*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),

          //right
          CircleAmigo(
            bottomCircleAmigoPosition: -2.20*SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -7.16*SizeConfig.heightMultiplier,
            circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
            circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),
          CircleAmigo(
            bottomCircleAmigoPosition: -5.46*SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -10.41*SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),
          CircleAmigo(
            bottomCircleAmigoPosition: -8.71*SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -13.67*SizeConfig.heightMultiplier,
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

class MobileAdvisory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            color: AmigoColors.lightWhite,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.25*SizeConfig.heightMultiplier),
                  child:Text("Advisory Board", style: TextStyle(color: AmigoColors.lightBrown, fontSize: 4.10*SizeConfig.textMultiplier, fontWeight: FontWeight.bold),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 13.02*SizeConfig.heightMultiplier,
                      child:  Column(
                        children: [

                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.25*SizeConfig.heightMultiplier),
                            child: CircleAvatar(
                              radius: 6.55*SizeConfig.heightMultiplier,
                              backgroundColor: Colors.white,
                            ),
                          ),

                          Text(Strings.adamDiscription1, textAlign: TextAlign.center, style: TextStyle(fontSize: 2.08*SizeConfig.textMultiplier,)),
                        ],
                      ),
                    ),
                    Container(
                      width: 13.02*SizeConfig.heightMultiplier,
                      child: Column(

                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.25*SizeConfig.heightMultiplier),
                            child: CircleAvatar(
                              radius: 6.55*SizeConfig.heightMultiplier,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Text(Strings.adamDiscription1,textAlign: TextAlign.center, style: TextStyle(fontSize: 2.08*SizeConfig.textMultiplier,)),
                        ],
                      ),
                    ),
                    Container(
                      width: 13.02*SizeConfig.heightMultiplier,
                      child:  Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.25*SizeConfig.heightMultiplier),
                            child: CircleAvatar(
                              radius: 6.55*SizeConfig.heightMultiplier,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Text(Strings.adamDiscription1,textAlign: TextAlign.center, style: TextStyle(fontSize: 2.08*SizeConfig.textMultiplier,),),
                        ],
                      ),
                    )




                  ],
                ),
                SizedBox(height: 19.53*SizeConfig.heightMultiplier,)
              ],
            ),
          ),
          //left
          CircleAmigo(
            topCircleAmigoPosition: -5.20*SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -10.16*SizeConfig.heightMultiplier,
            circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
            circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),
          CircleAmigo(
            topCircleAmigoPosition: -8.46*SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -13.41*SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),
          CircleAmigo(
            topCircleAmigoPosition: -11.71*SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -16.67*SizeConfig.heightMultiplier,
            circleAmigoHeight: 26.04*SizeConfig.heightMultiplier,
            circleAmigoWidth: 26.04*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),

          //right
          CircleAmigo(
            bottomCircleAmigoPosition: -2.20*SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -7.16*SizeConfig.heightMultiplier,
            circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
            circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),
          CircleAmigo(
            bottomCircleAmigoPosition: -5.46*SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -10.41*SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),
          CircleAmigo(
            bottomCircleAmigoPosition: -8.71*SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -13.67*SizeConfig.heightMultiplier,
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

