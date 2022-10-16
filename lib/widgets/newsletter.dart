import 'package:flutter/material.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/responsiveLayout.dart';
import 'package:mindamigo/utils/size_config.dart';

import 'circles.dart';

class NewsLetter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: WideNewsLetter(),
      webBody: WebNewsLetter(),
      mobileBody: MobileNewsLetter(),
    );
  }
}

class WideNewsLetter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 350,
      color: AmigoColors.lightRed3,
      child: Stack(
        alignment: Alignment.center,
        children: [
          //left
          CircleAmigo(
            topCircleAmigoPosition: -6.0 * SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -10.16 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          CircleAmigo(
            topCircleAmigoPosition: -9 * SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -13.41 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          CircleAmigo(
            topCircleAmigoPosition: -12.0 * SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -16.67 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          Container(
              height: 280.62,
              constraints: BoxConstraints(maxWidth: 1920 / 2),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        Strings.join,
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            fontFamily: robot),
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      Strings.join_msg,
                      style: TextStyle(fontSize: 24.88, fontFamily: robot),
                    ),
                  ),
                  SizedBox(
                    height: 50.68,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 55.29,
                        width: 300,
                        alignment: Alignment.center,
                        child: TextField(
                          decoration: InputDecoration(
                              isDense: true,
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black26),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                  fontSize: 16.89,
                                  fontFamily: robot,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 106,
                        height: 44.54,
                        child: ElevatedButton(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () => print("it's pressed"),
                          style: ElevatedButton.styleFrom(
                            primary: AmigoColors.lightRed2,
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}

class WebNewsLetter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 22.78 * SizeConfig.heightMultiplier,
      color: AmigoColors.lightRed3,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
              height: 18.27 * SizeConfig.heightMultiplier,
              width: MediaQuery.of(context).size.width / 1.8,
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        Strings.join,
                        style: TextStyle(
                            fontSize: 2.27 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.bold,
                            fontFamily: robot),
                      )),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 1.30 * SizeConfig.heightMultiplier),
                    child: Text(
                      Strings.join_msg,
                      style: TextStyle(
                          fontSize: 1.62 * SizeConfig.textMultiplier,
                          fontFamily: robot),
                    ),
                  ),
                  SizedBox(
                    height: 3.30 * SizeConfig.heightMultiplier,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 3.60 * SizeConfig.heightMultiplier,
                        width: 19.53 * SizeConfig.heightMultiplier,
                        alignment: Alignment.center,
                        child: TextField(
                          decoration: InputDecoration(
                              isDense: true,
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black26),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          0.65 * SizeConfig.heightMultiplier))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          0.65 * SizeConfig.heightMultiplier))),
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                  fontSize: 1.1 * SizeConfig.textMultiplier,
                                  fontFamily: robot,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      SizedBox(
                        width: 1.3 * SizeConfig.heightMultiplier,
                      ),
                      SizedBox(
                        width: 6.9 * SizeConfig.heightMultiplier,
                        height: 2.9 * SizeConfig.heightMultiplier,
                        child: ElevatedButton(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 1.3 * SizeConfig.textMultiplier),
                          ),
                          onPressed: () => print("it's pressed"),
                          style: ElevatedButton.styleFrom(
                            primary: AmigoColors.lightRed2,
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  0.65 * SizeConfig.heightMultiplier),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
          //left
          CircleAmigo(
            topCircleAmigoPosition: -6.0 * SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -10.16 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          CircleAmigo(
            topCircleAmigoPosition: -9 * SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -13.41 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          CircleAmigo(
            topCircleAmigoPosition: -12.0 * SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -16.67 * SizeConfig.heightMultiplier,
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

class MobileNewsLetter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 22 * SizeConfig.heightMultiplier,
      color: AmigoColors.lightRed3,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
              height: 20 * SizeConfig.heightMultiplier,
              width: MediaQuery.of(context).size.width / 1.5,
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        Strings.join,
                        style: TextStyle(
                            fontSize: 2 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.bold,
                            fontFamily: robot),
                      )),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 1.30 * SizeConfig.heightMultiplier),
                    child: Text(
                      Strings.join_msg,
                      style: TextStyle(
                          fontSize: 1.4 * SizeConfig.textMultiplier,
                          fontFamily: robot),
                    ),
                  ),
                  SizedBox(
                    height: 3.30 * SizeConfig.heightMultiplier,
                  ),
                  Container(
                    height: 3 * SizeConfig.heightMultiplier,
                    alignment: Alignment.center,
                    child: TextField(
                      decoration: InputDecoration(
                          isDense: true,
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black26),
                              borderRadius: BorderRadius.all(Radius.circular(
                                  0.65 * SizeConfig.heightMultiplier))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.all(Radius.circular(
                                  0.65 * SizeConfig.heightMultiplier))),
                          hintText: 'Email',
                          hintStyle: TextStyle(
                              fontSize: 1.1 * SizeConfig.textMultiplier,
                              fontFamily: robot,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 2.9 * SizeConfig.heightMultiplier,
                      child: ElevatedButton(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 1 * SizeConfig.textMultiplier),
                        ),
                        onPressed: () => print("it's pressed"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                0.65 * SizeConfig.heightMultiplier),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          //left
          CircleAmigo(
            topCircleAmigoPosition: -6.0 * SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -10.16 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          CircleAmigo(
            topCircleAmigoPosition: -9 * SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -13.41 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          CircleAmigo(
            topCircleAmigoPosition: -12.0 * SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -16.67 * SizeConfig.heightMultiplier,
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
