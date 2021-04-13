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
        webBody:WebNewsLetter(),
      tabletBody: TabNewsLetter(),
      mobileBody: MobileNewsLetter(),
    );
  }
}

class WebNewsLetter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 22.78*SizeConfig.heightMultiplier,
      color: AmigoColors.lightRed3,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
              height: 16.27*SizeConfig.heightMultiplier,
              width: MediaQuery.of(context).size.width/2,
              child: Column(
                children: [
                  Align(alignment: Alignment.topLeft,
                      child: Text(Strings.join, style: TextStyle(fontSize: 2.27*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, fontFamily: robot),)),
                  Padding(
                    padding: EdgeInsets.only(top: 1.30*SizeConfig.heightMultiplier),
                    child: Text(Strings.join_msg, style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier, fontFamily: robot),),
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FittedBox(fit: BoxFit.fill,child: Text("Email")),
                      )),
                  Row(
                    children: [
                      Container(
                        width: 19.53*SizeConfig.heightMultiplier,
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black26),
                                borderRadius: BorderRadius.all(Radius.circular(10)
                                )
                            ),
                            focusedBorder:OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.all(Radius.circular(10)
                                )
                            ),
                            hintText: 'adam.chadwick221@gmail.com',
                          ),
                        ),
                      ),
                      SizedBox(width: 1.3*SizeConfig.heightMultiplier,),
                      SizedBox(width: 6.5*SizeConfig.heightMultiplier, height: 40,
                        child:  ElevatedButton(
                          child: Text("Sign Up" ,style: TextStyle(fontSize: 1.3*SizeConfig.textMultiplier),),
                          onPressed: () => print("it's pressed"),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),

                    ],
                  )
                ],
              )
          ),
          //left
          CircleAmigo(
            topCircleAmigoPosition: -6.0*SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -10.16*SizeConfig.heightMultiplier,
            circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
            circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),
          CircleAmigo(
            topCircleAmigoPosition: -9*SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -13.41*SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),
          CircleAmigo(
            topCircleAmigoPosition: -12.0*SizeConfig.heightMultiplier,
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

class TabNewsLetter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MobileNewsLetter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}





