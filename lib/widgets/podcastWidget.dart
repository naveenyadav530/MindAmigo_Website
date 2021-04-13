import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/size_config.dart';

import 'circles.dart';

class PodCastWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
        color: AmigoColors.cream,
        height: 58.59*SizeConfig.heightMultiplier,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              top:5.20*SizeConfig.heightMultiplier,
              child: Container(
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.all(
                        Radius.circular(
                            0.65*SizeConfig.heightMultiplier
                        )
                    )
                ),
                alignment: Alignment.center,
                height: 39.06*SizeConfig.heightMultiplier,
                width: MediaQuery.of(context).size.width/1.5,
                child: Text(Strings.podcastCenter,
                  style: TextStyle(
                      fontSize: 1.69*SizeConfig.heightMultiplier,
                      fontFamily: robot,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 6.51*SizeConfig.heightMultiplier,
              child: Container(
                  alignment: Alignment.topCenter,
                  width: MediaQuery.of(context).size.width/1.8,
                  child:RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Available to listen on ',
                      style: TextStyle( fontSize: 1.69*SizeConfig.heightMultiplier, fontFamily: robot),
                      children: <TextSpan>[
                        TextSpan(text: 'Spotify,',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 1.69*SizeConfig.heightMultiplier,
                                fontFamily: robot,
                                decoration: TextDecoration.underline
                            )
                        ),
                        TextSpan(text: ' '),
                        TextSpan(text: 'Apple Podcasts, ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 1.69*SizeConfig.heightMultiplier,
                                fontFamily: robot,
                                decoration: TextDecoration.underline
                            )
                        ),
                        TextSpan(text: ' '),
                        TextSpan(text: 'Google Podcasts ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 1.69*SizeConfig.heightMultiplier,
                                fontFamily: robot,
                                decoration: TextDecoration.underline
                            )
                        ),
                        TextSpan(text: ' '),
                        TextSpan(text: 'and '),
                        TextSpan(text: ' '),
                        TextSpan(text: 'RSS Feed',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 1.69*SizeConfig.heightMultiplier,
                                fontFamily: robot,
                                decoration: TextDecoration.underline
                            )
                        ),
                      ],
                    ),
                  ) /*Text(Strings.podcastBottom,textAlign: TextAlign.center,style: TextStyle(fontSize: 26, fontFamily: robot, fontWeight: FontWeight.bold))*/
              ),
            ),
            //left

            CircleAmigo(
              topCircleAmigoPosition: -0.40*SizeConfig.heightMultiplier,
              leftCircleAmigoPosition: -13.41*SizeConfig.heightMultiplier,
              circleAmigoHeight: 20.53*SizeConfig.heightMultiplier,
              circleAmigoWidth: 20.53*SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
              circleAmigoOpacity: [0.1,0.1],

            ),
            CircleAmigo(
              topCircleAmigoPosition: -4.41*SizeConfig.heightMultiplier,
              leftCircleAmigoPosition: -18.67*SizeConfig.heightMultiplier,
              circleAmigoHeight: 30.04*SizeConfig.heightMultiplier,
              circleAmigoWidth: 30.04*SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
              circleAmigoOpacity: [0.1,0.1],

            ),

            //right
            CircleAmigo(
              topCircleAmigoPosition: -2.20*SizeConfig.heightMultiplier,
              rightCircleAmigoPosition: -7.16*SizeConfig.heightMultiplier,
              circleAmigoHeight: 15.02*SizeConfig.heightMultiplier,
              circleAmigoWidth: 15.02*SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
              circleAmigoOpacity: [0.1,0.1],

            ),
            CircleAmigo(
              topCircleAmigoPosition: -5.46*SizeConfig.heightMultiplier,
              rightCircleAmigoPosition: -10.41*SizeConfig.heightMultiplier,
              circleAmigoHeight: 22.53*SizeConfig.heightMultiplier,
              circleAmigoWidth: 22.53*SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
              circleAmigoOpacity: [0.1,0.1],

            ),
            CircleAmigo(
              topCircleAmigoPosition: -8.71*SizeConfig.heightMultiplier,
              rightCircleAmigoPosition: -13.67*SizeConfig.heightMultiplier,
              circleAmigoHeight: 30.04*SizeConfig.heightMultiplier,
              circleAmigoWidth: 30.04*SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
              circleAmigoOpacity: [0.1,0.1],

            ),

          ],
        )
    );
  }
}
