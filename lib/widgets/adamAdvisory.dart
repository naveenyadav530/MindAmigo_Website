import 'package:flutter/material.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
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
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            color: AmigoColors.lightWhite,
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: 3.25 * SizeConfig.heightMultiplier),
                  child: Text(
                    "Advisory Board",
                    style: TextStyle(
                        color: AmigoColors.lightBrown,
                        fontSize: 4.10 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 3.25 * SizeConfig.heightMultiplier),
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 15.7 * SizeConfig.heightMultiplier,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 2.1 * SizeConfig.heightMultiplier),
                                child: CircleAvatar(
                                  radius: 6.55 * SizeConfig.heightMultiplier,
                                  backgroundColor: Colors.white,
                                  child: Image.asset(
                                      "assets/images/adamAdvisory.png"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 0.5 * SizeConfig.heightMultiplier),
                                child: Text("Katie Bell",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize:
                                            1.5 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Text("Forensic Psychologist",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 1.5 * SizeConfig.textMultiplier,
                                  )),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                              padding: EdgeInsets.only(
                                  left: 5.20 * SizeConfig.heightMultiplier),
                              child: Text(
                                Strings.katie,
                                style: TextStyle(
                                  fontFamily: robot,
                                  fontSize: 1.80 * SizeConfig.textMultiplier,
                                ),
                                textAlign: TextAlign.left,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        vertical: 3.25 * SizeConfig.heightMultiplier),
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 15.7 * SizeConfig.heightMultiplier,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 2.1 * SizeConfig.heightMultiplier),
                                child: CircleAvatar(
                                  radius: 6.55 * SizeConfig.heightMultiplier,
                                  backgroundColor: Colors.white,
                                  child: Image.asset(
                                      "assets/images/adamAdvisory2.png"),
                                ),
                              ),
                              Text("Bridgitte Calder",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 1.5 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold)),
                              Text("Forensic Psychologist",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 1.5 * SizeConfig.textMultiplier,
                                  )),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                              padding: EdgeInsets.only(
                                  left: 5.20 * SizeConfig.heightMultiplier),
                              child: Text(
                                Strings.Bridgitte,
                                style: TextStyle(
                                  fontFamily: robot,
                                  fontSize: 1.80 * SizeConfig.textMultiplier,
                                ),
                                textAlign: TextAlign.left,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //left
          CircleAmigo(
            topCircleAmigoPosition: -5.20 * SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -10.16 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          CircleAmigo(
            topCircleAmigoPosition: -8.46 * SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -13.41 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          CircleAmigo(
            topCircleAmigoPosition: -11.71 * SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -16.67 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),

          //right
          CircleAmigo(
            bottomCircleAmigoPosition: -2.20 * SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -7.16 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          CircleAmigo(
            bottomCircleAmigoPosition: -5.46 * SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -10.41 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          CircleAmigo(
            bottomCircleAmigoPosition: -8.71 * SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -13.67 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
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
                  padding:
                      EdgeInsets.only(top: 3.25 * SizeConfig.heightMultiplier),
                  child: Text(
                    "Advisory Board",
                    style: TextStyle(
                        color: AmigoColors.lightBrown,
                        fontSize: 4.10 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 13.02 * SizeConfig.heightMultiplier,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 3.25 * SizeConfig.heightMultiplier),
                            child: CircleAvatar(
                              radius: 6.55 * SizeConfig.heightMultiplier,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Text(Strings.adamDiscription1,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 2.08 * SizeConfig.textMultiplier,
                              )),
                        ],
                      ),
                    ),
                    Container(
                      width: 13.02 * SizeConfig.heightMultiplier,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 3.25 * SizeConfig.heightMultiplier),
                            child: CircleAvatar(
                              radius: 6.55 * SizeConfig.heightMultiplier,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Text(Strings.adamDiscription1,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 2.08 * SizeConfig.textMultiplier,
                              )),
                        ],
                      ),
                    ),
                    Container(
                      width: 13.02 * SizeConfig.heightMultiplier,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 3.25 * SizeConfig.heightMultiplier),
                            child: CircleAvatar(
                              radius: 6.55 * SizeConfig.heightMultiplier,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Text(
                            Strings.adamDiscription1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 2.08 * SizeConfig.textMultiplier,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 19.53 * SizeConfig.heightMultiplier,
                )
              ],
            ),
          ),
          //left
          CircleAmigo(
            topCircleAmigoPosition: -5.20 * SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -10.16 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          CircleAmigo(
            topCircleAmigoPosition: -8.46 * SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -13.41 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          CircleAmigo(
            topCircleAmigoPosition: -11.71 * SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -16.67 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),

          //right
          CircleAmigo(
            bottomCircleAmigoPosition: -2.20 * SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -7.16 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          CircleAmigo(
            bottomCircleAmigoPosition: -5.46 * SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -10.41 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          CircleAmigo(
            bottomCircleAmigoPosition: -8.71 * SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -13.67 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
        ],
      ),
    );
  }
}
