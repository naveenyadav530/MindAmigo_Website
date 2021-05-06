import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/responsiveLayout.dart';
import 'package:mindamigo/utils/size_config.dart';

import 'circles.dart';

class ACT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      webBody: webAct(),
      tabletBody: tabAct(),
      mobileBody: mobileAct(),
    );
  }
}

class webAct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 39.06 * SizeConfig.heightMultiplier,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [AmigoColors.lightblue1, AmigoColors.green])),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            //left circle
            CircleAmigo(
              leftCircleAmigoPosition: -7.8 * SizeConfig.heightMultiplier,
              bottomCircleAmigoPosition: 9.11 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 9.7 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 9.7 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightBlue, AmigoColors.green],
              circleAmigoOpacity: [0.5, 0.5],
            ),
            CircleAmigo(
              leftCircleAmigoPosition: -7.8 * SizeConfig.heightMultiplier,
              bottomCircleAmigoPosition: 7.8 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 16.27 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 16.27 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightblue1, AmigoColors.green],
              circleAmigoOpacity: [0.4, 0.5],
            ),
            CircleAmigo(
              leftCircleAmigoPosition: -9.11 * SizeConfig.heightMultiplier,
              bottomCircleAmigoPosition: 6.51 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightblue1, AmigoColors.green],
              circleAmigoOpacity: [0.3, 0.5],
            ),

            //corner circle
            CircleAmigo(
              rightCircleAmigoPosition: -3.51 * SizeConfig.heightMultiplier,
              topCircleAmigoPosition: -6.25 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 15.7 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 15.7 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightBlue, AmigoColors.green],
              circleAmigoOpacity: [0.8, 0.7],
            ),
            CircleAmigo(
              rightCircleAmigoPosition: -5.81 * SizeConfig.heightMultiplier,
              topCircleAmigoPosition: -8.55 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 22.02 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 22.02 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightBlue, AmigoColors.green],
              circleAmigoOpacity: [0.5, 0.7],
            ),

            Positioned(
              bottom: 0,
              right: 13.02 * SizeConfig.heightMultiplier,
              child: Container(
                height: 33.55 * SizeConfig.heightMultiplier,
                width: 33.55 * SizeConfig.heightMultiplier,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "ACT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 4.6 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            fontFamily: "Fredoka"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        Strings.act1,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 1.15 * SizeConfig.textMultiplier,
                            height: 1.5,
                            decoration: TextDecoration.none,
                            fontFamily: "Robot"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        Strings.act2,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 1.15 * SizeConfig.textMultiplier,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            fontFamily: "Robot"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        Strings.act3,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 1.15 * SizeConfig.textMultiplier,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            fontFamily: "Robot"),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: -7.5 * SizeConfig.heightMultiplier,
                left: 16 * SizeConfig.heightMultiplier,
                child: Image.asset(
                  aboutActPhone,
                  height: 40 * SizeConfig.heightMultiplier,
                )),
            Image.asset(aboutActDoll),
          ],
        ));
  }
}

class tabAct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 38.06 * SizeConfig.heightMultiplier,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [AmigoColors.lightblue1, AmigoColors.green])),
        child: Stack(
          alignment: Alignment.center,
          children: [
            //corner circle
            CircleAmigo(
              rightCircleAmigoPosition: -3.51 * SizeConfig.heightMultiplier,
              topCircleAmigoPosition: -6.25 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 15.7 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 15.7 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightBlue, AmigoColors.green],
              circleAmigoOpacity: [0.8, 0.7],
            ),
            CircleAmigo(
              rightCircleAmigoPosition: -5.81 * SizeConfig.heightMultiplier,
              topCircleAmigoPosition: -8.55 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 22.02 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 22.02 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightBlue, AmigoColors.green],
              circleAmigoOpacity: [0.5, 0.7],
            ),

            //left circle
            CircleAmigo(
              leftCircleAmigoPosition: -7.8 * SizeConfig.heightMultiplier,
              bottomCircleAmigoPosition: 9.11 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 9.7 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 9.7 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightBlue, AmigoColors.green],
              circleAmigoOpacity: [0.5, 0.5],
            ),
            CircleAmigo(
              leftCircleAmigoPosition: -7.8 * SizeConfig.heightMultiplier,
              bottomCircleAmigoPosition: 7.8 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 16.27 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 16.27 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightblue1, AmigoColors.green],
              circleAmigoOpacity: [0.4, 0.5],
            ),
            CircleAmigo(
              leftCircleAmigoPosition: -9.11 * SizeConfig.heightMultiplier,
              bottomCircleAmigoPosition: 6.51 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightblue1, AmigoColors.green],
              circleAmigoOpacity: [0.3, 0.5],
            ),

            Positioned(
                bottom: -7.5 * SizeConfig.heightMultiplier,
                left: 3.34 * SizeConfig.heightMultiplier,
                child: Image.asset(
                  aboutActPhone,
                  height: 37.74 * SizeConfig.heightMultiplier,
                )),
            Positioned(
              bottom: -1.89 * SizeConfig.heightMultiplier,
              left: 11.16 * SizeConfig.heightMultiplier,
              child: Container(
                child: Image.asset(
                  actDoll,
                  height: 20.74 * SizeConfig.heightMultiplier,
                ),
              ),
            ),
            Positioned(
              right: 4.53 * SizeConfig.heightMultiplier,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 5.58 * SizeConfig.heightMultiplier),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "ACT",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 4.6 * SizeConfig.textMultiplier,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Fredoka"),
                        ),
                      ),
                      Text(
                        Strings.act1,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 1.55 * SizeConfig.textMultiplier,
                            height: 1.5,
                            fontFamily: "Robot"),
                      ),
                      Text(
                        Strings.act2,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 1.55 * SizeConfig.textMultiplier,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          Strings.act3,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 1.55 * SizeConfig.textMultiplier,
                              height: 1.5,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                              fontFamily: "Robot"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

class mobileAct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 63.06 * SizeConfig.heightMultiplier,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [AmigoColors.lightblue1, AmigoColors.green])),
        child: Stack(
          alignment: Alignment.center,
          children: [
            //corner circle
            CircleAmigo(
              rightCircleAmigoPosition: -3.51 * SizeConfig.heightMultiplier,
              topCircleAmigoPosition: -6.25 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 15.7 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 15.7 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightBlue, AmigoColors.green],
              circleAmigoOpacity: [0.8, 0.7],
            ),
            CircleAmigo(
              rightCircleAmigoPosition: -5.81 * SizeConfig.heightMultiplier,
              topCircleAmigoPosition: -8.55 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 22.02 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 22.02 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightBlue, AmigoColors.green],
              circleAmigoOpacity: [0.5, 0.7],
            ),

            Positioned(
                left: 12.28 * SizeConfig.heightMultiplier,
                bottom: -8.77 * SizeConfig.heightMultiplier,
                child: Image.asset(
                  aboutActPhone,
                  height: 37.74 * SizeConfig.heightMultiplier,
                )),
            Positioned(
                left: 22.80 * SizeConfig.heightMultiplier,
                bottom: -1.75 * SizeConfig.heightMultiplier,
                child: Image.asset(
                  actDoll,
                  height: 17.74 * SizeConfig.heightMultiplier,
                )),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "ACT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 4.6 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Fredoka"),
                      ),
                    ),
                    Text(
                      Strings.act1,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 1.55 * SizeConfig.textMultiplier,
                          height: 1.5,
                          fontFamily: "Robot"),
                    ),
                    Text(
                      Strings.act2,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 1.55 * SizeConfig.textMultiplier,
                          height: 1.5,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Robot"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        Strings.act3,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 1.55 * SizeConfig.textMultiplier,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            fontFamily: "Robot"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
