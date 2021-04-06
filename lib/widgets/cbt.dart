import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:website/styles/colorsAmigo.dart';
import 'package:website/styles/size_config.dart';
import 'package:website/styles/strings.dart';
import 'package:website/utils/responsive_widget.dart';
import 'package:website/widgets/circles.dart';


class CBT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isDesktop(context)?Container(
      height: 39.06*SizeConfig.heightMultiplier,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [AmigoColors.lightRed2,AmigoColors.orange,])
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            bottom: 0,
            left: 13.02*SizeConfig.heightMultiplier,
            child: Container(
              height: 33.55*SizeConfig.heightMultiplier,
              width: 33.55*SizeConfig.heightMultiplier,
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.topLeft,
                      child: Text("CBT",
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
                    child: Text(Strings.cbt1,
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
                    child: Text(Strings.cbt2,
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
                    child: Text(Strings.cbt3,
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
            right: 0,
            child: Image.asset("assets/images/cbt.png",
              height:37.74*SizeConfig.heightMultiplier,
            ),
          ),
          Positioned(
              child: Image.asset("assets/images/doll2.png")),
          //left circle
          CircleAmigo(
            leftCircleAmigoPosition: -2.6*SizeConfig.heightMultiplier,
            topCircleAmigoPosition: 5.2*SizeConfig.heightMultiplier,
            circleAmigoWidth: 7.7*SizeConfig.heightMultiplier,
            circleAmigoHeight: 7.7*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.lightRed, AmigoColors.lightRed],
            circleAmigoOpacity: [0.1, 0.5],
          ),
          CircleAmigo(
            leftCircleAmigoPosition: -3.25*SizeConfig.heightMultiplier,
            topCircleAmigoPosition: 3.25*SizeConfig.heightMultiplier,
            circleAmigoWidth: 11.06*SizeConfig.heightMultiplier,
            circleAmigoHeight: 11.06*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.lightRed, AmigoColors.lightRed],
            circleAmigoOpacity: [0.5, 0.5],
          ),
          CircleAmigo(
            leftCircleAmigoPosition: -3.9*SizeConfig.heightMultiplier,
            topCircleAmigoPosition: 1.62*SizeConfig.heightMultiplier,
            circleAmigoWidth: 14.32*SizeConfig.heightMultiplier,
            circleAmigoHeight: 14.32*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.lightRed, AmigoColors.lightRed],
            circleAmigoOpacity: [0.5, 0.5],
          ),

          //right circle
          CircleAmigo(
            rightCircleAmigoPosition: -6.51*SizeConfig.heightMultiplier,
            bottomCircleAmigoPosition: 8.25*SizeConfig.heightMultiplier,
            circleAmigoWidth: 11.7*SizeConfig.heightMultiplier,
            circleAmigoHeight: 11.7*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.lightRed, AmigoColors.lightRed],
            circleAmigoOpacity: [0.5, 0.3],
          ),
          CircleAmigo(
            rightCircleAmigoPosition: -7.81*SizeConfig.heightMultiplier,
            bottomCircleAmigoPosition: 6.55*SizeConfig.heightMultiplier,
            circleAmigoWidth: 16.02*SizeConfig.heightMultiplier,
            circleAmigoHeight: 16.02*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.lightRed, AmigoColors.lightRed],
            circleAmigoOpacity: [0.5, 0.3],
          ),
          CircleAmigo(
            rightCircleAmigoPosition: -9.11*SizeConfig.heightMultiplier,
            bottomCircleAmigoPosition: 4.85*SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.27*SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.27*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.lightRed, AmigoColors.lightRed],
            circleAmigoOpacity: [0.5, 0.5],
          )

        ],
      )

    ):

    Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [Color(0xffff7796),Color(0xfffc9e5d), Color(0xfff2a53c),Color(0xffea9e28)])
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text("CBT",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: "Fredoka",
                    decoration: TextDecoration.none,
                    fontSize: 7*SizeConfig.textMultiplier,
                    color: Colors.white,
                  ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(Strings.cbt1,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 2.5*SizeConfig.textMultiplier,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Robot",
                ),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(Strings.cbt2,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 2.5*SizeConfig.textMultiplier,
                  fontFamily: "Robot",
                  fontWeight: FontWeight.bold,
                  color: Colors.white,

                ),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 30),
              child: Text(Strings.cbt3,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 2.5*SizeConfig.textMultiplier,
                  fontFamily: "Robot",
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
            ),

          ],
        )
    );
  }
}
