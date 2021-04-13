import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/size_config.dart';

import 'circles.dart';



class ACT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 39.06*SizeConfig.heightMultiplier,
        decoration:   BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [AmigoColors.lightblue1,AmigoColors.green])
        ),
        child:Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              bottom: 0,
              right: 13.02*SizeConfig.heightMultiplier,
              child:  Container(
                height: 33.55*SizeConfig.heightMultiplier,
                width: 33.55*SizeConfig.heightMultiplier,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text("ACT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 4.6*SizeConfig.textMultiplier,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            fontFamily: "Fredoka"
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(Strings.act1,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 1.15*SizeConfig.textMultiplier,
                            height: 1.5,
                            decoration: TextDecoration.none,
                            fontFamily: "Robot"
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(Strings.act2,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 1.15*SizeConfig.textMultiplier,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            fontFamily: "Robot"
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(Strings.act3,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 1.15*SizeConfig.textMultiplier,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            fontFamily: "Robot"
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                child: Image.asset("assets/images/act.png",height: 37.74*SizeConfig.heightMultiplier,)
            ),
            Image.asset("assets/images/doll1.png"),
            //left circle
            CircleAmigo(
              leftCircleAmigoPosition: -7.8*SizeConfig.heightMultiplier,
              bottomCircleAmigoPosition: 9.11*SizeConfig.heightMultiplier,
              circleAmigoWidth: 9.7*SizeConfig.heightMultiplier,
              circleAmigoHeight: 9.7*SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightBlue, AmigoColors.green],
              circleAmigoOpacity: [0.5, 0.5],
            ),
            CircleAmigo(
              leftCircleAmigoPosition: -7.8*SizeConfig.heightMultiplier,
              bottomCircleAmigoPosition: 7.8*SizeConfig.heightMultiplier,
              circleAmigoWidth: 16.27*SizeConfig.heightMultiplier,
              circleAmigoHeight: 16.27*SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightblue1, AmigoColors.green],
              circleAmigoOpacity: [0.4, 0.5],
            ),
            CircleAmigo(
              leftCircleAmigoPosition: -9.11*SizeConfig.heightMultiplier,
              bottomCircleAmigoPosition: 6.51*SizeConfig.heightMultiplier,
              circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
              circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightblue1, AmigoColors.green],
              circleAmigoOpacity: [0.3, 0.5],
            ),

            //corner circle
            CircleAmigo(
              rightCircleAmigoPosition: -3.51*SizeConfig.heightMultiplier,
              topCircleAmigoPosition: -6.25*SizeConfig.heightMultiplier,
              circleAmigoWidth: 15.7*SizeConfig.heightMultiplier,
              circleAmigoHeight: 15.7*SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightBlue, AmigoColors.green],
              circleAmigoOpacity: [0.8, 0.7],
            ),
            CircleAmigo(
              rightCircleAmigoPosition: -5.81*SizeConfig.heightMultiplier,
              topCircleAmigoPosition: -8.55*SizeConfig.heightMultiplier,
              circleAmigoWidth: 22.02*SizeConfig.heightMultiplier,
              circleAmigoHeight: 22.02*SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightBlue, AmigoColors.green],
              circleAmigoOpacity: [0.5, 0.7],
            ),


          ],
        )
    );
  }
}
