import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/utils/responsiveLayout.dart';
import 'package:mindamigo/utils/size_config.dart';

import 'circles.dart';




class GetInTouch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      webBody: WebGetInTouch(),
      tabletBody: TabGetInTouch(),
    );
  }
}



class WebGetInTouch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: //22.78*SizeConfig.heightMultiplier,
      width: MediaQuery.of(context).size.width,
      color: AmigoColors.lightWhite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 3.25*SizeConfig.heightMultiplier),
            height: 20*SizeConfig.heightMultiplier,
            width: MediaQuery.of(context).size.width/2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //get in touch
                Container(
                    alignment: Alignment.topLeft,
                    child: Text("Get In Touch", style: TextStyle(fontSize: 3.35*SizeConfig.textMultiplier, fontFamily: robot),)
                ),
                //text send us note
                Container(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                        text: 'Got a question or a mental health topic that you’d like to hear about in the podcast?',
                        style: TextStyle( fontSize: 1.82*SizeConfig.textMultiplier, fontFamily: robot),
                        children: <TextSpan>[
                          TextSpan(text: ' Send us a note below',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 1.82*SizeConfig.textMultiplier,
                                  fontFamily: robot
                              )
                          ),
                        ],
                      ),
                    )
                ),
                //name and email
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  width: MediaQuery.of(context).size.width/2.5,
                  height: 4.55*SizeConfig.textMultiplier,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                          left:20,
                          child: Text("Name")),
                      Positioned(
                          right:230,
                          child: Text("Email")),
                      Positioned(
                        left: 0,
                        bottom: 0,
                        child: Container(
                          width: 18.22*SizeConfig.heightMultiplier,
                          child:TextField(
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
                              hintText: 'Adam Chadwick',
                            ),
                          ),
                        ),),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 18.22*SizeConfig.heightMultiplier,
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
                      ),

                    ],
                  ),
                ),
                //message
                Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text("Message")),
                //message edit text with button
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  width: MediaQuery.of(context).size.width/2,
                  height: 3.25*SizeConfig.heightMultiplier,
                  child: Row(
                    children: [
                      Expanded(
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
                            hintText: 'Adam Chadwick',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        height: 40,
                        width: 7.81*SizeConfig.heightMultiplier,
                        child: ElevatedButton(

                          child: Text("Send" ,style: TextStyle(fontSize: 1.3*SizeConfig.textMultiplier, fontFamily: robot, fontWeight: FontWeight.bold),),
                          onPressed: () => print("it's pressed"),
                          style: ElevatedButton.styleFrom(
                            primary: AmigoColors.lightBrown,
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
          //left
          CircleAmigo(
            bottomCircleAmigoPosition: -6.0*SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -10.16*SizeConfig.heightMultiplier,
            circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
            circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),
          CircleAmigo(
            bottomCircleAmigoPosition: -9.0*SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -13.41*SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),
          CircleAmigo(
            bottomCircleAmigoPosition: -12.0*SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -16.67*SizeConfig.heightMultiplier,
            circleAmigoHeight: 26.04*SizeConfig.heightMultiplier,
            circleAmigoWidth: 26.04*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),

          //right
          CircleAmigo(
            topCircleAmigoPosition: -2.20*SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -7.16*SizeConfig.heightMultiplier,
            circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
            circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),
          CircleAmigo(
            topCircleAmigoPosition: -5.46*SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -10.41*SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1,0.1],

          ),
          CircleAmigo(
            topCircleAmigoPosition: -8.71*SizeConfig.heightMultiplier,
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


class TabGetInTouch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
