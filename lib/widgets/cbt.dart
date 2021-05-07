import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/responsiveLayout.dart';
import 'package:mindamigo/utils/size_config.dart';

import 'circles.dart';

class CBT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      webBody: webCbt(),
      tabletBody: tabCbt(),
      mobileBody: mobileCbt(),
    );
  }
}

class webCbt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 39.06 * SizeConfig.heightMultiplier,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [
              AmigoColors.lightRed2,
              AmigoColors.orange,
            ])),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            //center circle
            CircleAmigo(
              topCircleAmigoPosition: 10 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 4 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 4 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed],
              circleAmigoOpacity: [0.1, 0.9],
            ),
            CircleAmigo(
              topCircleAmigoPosition: 9 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 8 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 8 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed],
              circleAmigoOpacity: [0.5, 0.5],
            ),
            CircleAmigo(
              topCircleAmigoPosition: 7 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 12 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 12 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed],
              circleAmigoOpacity: [0.5, 0.5],
            ),

            //left circle
            CircleAmigo(
              leftCircleAmigoPosition: -4.6 * SizeConfig.heightMultiplier,
              bottomCircleAmigoPosition: -5.2 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 8.7 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 8.7 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed],
              circleAmigoOpacity: [0.1, 0.5],
            ),
            CircleAmigo(
              leftCircleAmigoPosition: -6.85 * SizeConfig.heightMultiplier,
              bottomCircleAmigoPosition: -6.25 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 13.06 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 13.06 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed],
              circleAmigoOpacity: [0.5, 0.5],
            ),
            CircleAmigo(
              leftCircleAmigoPosition: -10.9 * SizeConfig.heightMultiplier,
              bottomCircleAmigoPosition: -9.2 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 20.32 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 20.32 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed],
              circleAmigoOpacity: [0.5, 0.5],
            ),

            //right circle
            CircleAmigo(
              rightCircleAmigoPosition: -6.51 * SizeConfig.heightMultiplier,
              bottomCircleAmigoPosition: 8.25 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 11.7 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 11.7 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightRed, AmigoColors.lightRed],
              circleAmigoOpacity: [0.5, 0.3],
            ),
            CircleAmigo(
              rightCircleAmigoPosition: -7.81 * SizeConfig.heightMultiplier,
              bottomCircleAmigoPosition: 6.55 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 16.02 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 16.02 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightRed, AmigoColors.lightRed],
              circleAmigoOpacity: [0.5, 0.3],
            ),
            CircleAmigo(
              rightCircleAmigoPosition: -9.11 * SizeConfig.heightMultiplier,
              bottomCircleAmigoPosition: 4.85 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 19.27 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 19.27 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightRed, AmigoColors.lightRed],
              circleAmigoOpacity: [0.5, 0.5],
            ),
            Positioned(
              bottom: 0,
              left: 13.02 * SizeConfig.heightMultiplier,
              child: Container(
                height: 33.55 * SizeConfig.heightMultiplier,
                width: 33.55 * SizeConfig.heightMultiplier,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "CBT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 4.6 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            fontFamily: "Fredoka"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 0.6 * SizeConfig.heightMultiplier),
                      child: Text(
                        Strings.cbt1,
                        textAlign: TextAlign.justify,
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
                      padding: EdgeInsets.only(
                          top: 0.6 * SizeConfig.heightMultiplier),
                      child: Text(
                        Strings.cbt2,
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
                      padding: EdgeInsets.only(
                          top: 0.6 * SizeConfig.heightMultiplier),
                      child: Text(
                        Strings.cbt3,
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
              bottom: -7 * SizeConfig.heightMultiplier,
              right: 25.5 * SizeConfig.heightMultiplier,
              child: Image.asset(
                aboutCbtPhone,
                height: 37.74 * SizeConfig.heightMultiplier,
              ),
            ),
            Positioned(child: Image.asset(aboutCbtDoll)),
          ],
        ));
  }
}

class tabCbt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 38.06 * SizeConfig.heightMultiplier,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [
              AmigoColors.lightRed2,
              AmigoColors.orange,
            ])),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAmigo(
              leftCircleAmigoPosition: -4.6 * SizeConfig.heightMultiplier,
              topCircleAmigoPosition: 5.2 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 8.7 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 8.7 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed],
              circleAmigoOpacity: [0.1, 0.5],
            ),
            CircleAmigo(
              leftCircleAmigoPosition: -6.25 * SizeConfig.heightMultiplier,
              topCircleAmigoPosition: 3.25 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 13.06 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 13.06 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed],
              circleAmigoOpacity: [0.5, 0.5],
            ),
            CircleAmigo(
              leftCircleAmigoPosition: -9.9 * SizeConfig.heightMultiplier,
              topCircleAmigoPosition: 0.2 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 20.32 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 20.32 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed],
              circleAmigoOpacity: [0.5, 0.5],
            ),

            //right circle
            CircleAmigo(
              rightCircleAmigoPosition: -6.51 * SizeConfig.heightMultiplier,
              bottomCircleAmigoPosition: 8.25 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 11.7 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 11.7 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightRed, AmigoColors.lightRed],
              circleAmigoOpacity: [0.5, 0.3],
            ),
            CircleAmigo(
              rightCircleAmigoPosition: -7.81 * SizeConfig.heightMultiplier,
              bottomCircleAmigoPosition: 6.55 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 16.02 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 16.02 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightRed, AmigoColors.lightRed],
              circleAmigoOpacity: [0.5, 0.3],
            ),
            CircleAmigo(
              rightCircleAmigoPosition: -9.11 * SizeConfig.heightMultiplier,
              bottomCircleAmigoPosition: 4.85 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 19.27 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 19.27 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightRed, AmigoColors.lightRed],
              circleAmigoOpacity: [0.5, 0.5],
            ),

            Positioned(
                bottom: -7.5 * SizeConfig.heightMultiplier,
                right: 18.34 * SizeConfig.heightMultiplier,
                child: Image.asset(
                  aboutCbtPhone,
                  height: 37.74 * SizeConfig.heightMultiplier,
                )),
            Positioned(
              bottom: -1.89 * SizeConfig.heightMultiplier,
              right: 0,
              child: Container(
                child: Image.asset(
                  cbtDoll,
                  height: 20.74 * SizeConfig.heightMultiplier,
                ),
              ),
            ),
            Positioned(
              left: 4.53 * SizeConfig.heightMultiplier,
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
                          "CBT",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 4.6 * SizeConfig.textMultiplier,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Fredoka"),
                        ),
                      ),
                      Text(
                        Strings.cbt1,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 1.55 * SizeConfig.textMultiplier,
                            height: 1.5,
                            fontFamily: "Robot"),
                      ),
                      Text(
                        Strings.cbt2,
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
                          Strings.cbt3,
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
            ),
          ],
        ));
  }
}

class mobileCbt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 63.06 * SizeConfig.heightMultiplier,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [
              AmigoColors.lightRed2,
              AmigoColors.orange,
            ])),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAmigo(
              leftCircleAmigoPosition: -4.6 * SizeConfig.heightMultiplier,
              topCircleAmigoPosition: 5.2 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 8.7 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 8.7 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed],
              circleAmigoOpacity: [0.1, 0.5],
            ),
            CircleAmigo(
              leftCircleAmigoPosition: -6.25 * SizeConfig.heightMultiplier,
              topCircleAmigoPosition: 3.25 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 13.06 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 13.06 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed],
              circleAmigoOpacity: [0.5, 0.5],
            ),
            CircleAmigo(
              leftCircleAmigoPosition: -9.9 * SizeConfig.heightMultiplier,
              topCircleAmigoPosition: 0.2 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 20.32 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 20.32 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed],
              circleAmigoOpacity: [0.5, 0.5],
            ),

            //right circle
            CircleAmigo(
              rightCircleAmigoPosition: -6.51 * SizeConfig.heightMultiplier,
              bottomCircleAmigoPosition: 8.25 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 11.7 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 11.7 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightRed, AmigoColors.lightRed],
              circleAmigoOpacity: [0.5, 0.3],
            ),
            CircleAmigo(
              rightCircleAmigoPosition: -7.81 * SizeConfig.heightMultiplier,
              bottomCircleAmigoPosition: 6.55 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 16.02 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 16.02 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightRed, AmigoColors.lightRed],
              circleAmigoOpacity: [0.5, 0.3],
            ),
            CircleAmigo(
              rightCircleAmigoPosition: -9.11 * SizeConfig.heightMultiplier,
              bottomCircleAmigoPosition: 4.85 * SizeConfig.heightMultiplier,
              circleAmigoWidth: 19.27 * SizeConfig.heightMultiplier,
              circleAmigoHeight: 19.27 * SizeConfig.heightMultiplier,
              circleAmigoGradient: [AmigoColors.lightRed, AmigoColors.lightRed],
              circleAmigoOpacity: [0.5, 0.5],
            ),

            Positioned(
                left: 12.28 * SizeConfig.heightMultiplier,
                bottom: -9.77 * SizeConfig.heightMultiplier,
                child: Image.asset(
                  aboutCbtPhone,
                  height: 37.74 * SizeConfig.heightMultiplier,
                )),
            Positioned(
                left: 28.80 * SizeConfig.heightMultiplier,
                bottom: -1.75 * SizeConfig.heightMultiplier,
                child: Image.asset(
                  cbtDoll,
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
                        "CBT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 4.6 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Fredoka"),
                      ),
                    ),
                    Text(
                      Strings.cbt1,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 1.55 * SizeConfig.textMultiplier,
                          height: 1.5,
                          fontFamily: "Robot"),
                    ),
                    Text(
                      Strings.cbt2,
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
                        Strings.cbt3,
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
