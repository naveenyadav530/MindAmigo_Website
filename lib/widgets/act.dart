import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:website/styles/colorsAmigo.dart';
import 'package:website/styles/size_config.dart';
import 'package:website/styles/strings.dart';
import 'package:website/utils/responsive_widget.dart';
import 'package:website/widgets/circles.dart';


class ACT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isDesktop(context)? Container(
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
            rightCircleAmigoPosition: -6.51*SizeConfig.heightMultiplier,
            topCircleAmigoPosition: -3.25*SizeConfig.heightMultiplier,
            circleAmigoWidth: 11.7*SizeConfig.heightMultiplier,
            circleAmigoHeight: 11.7*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.lightBlue, AmigoColors.green],
            circleAmigoOpacity: [0.5, 0.3],
          ),
          CircleAmigo(
            rightCircleAmigoPosition: -7.81*SizeConfig.heightMultiplier,
            topCircleAmigoPosition: -4.55*SizeConfig.heightMultiplier,
            circleAmigoWidth: 16.02*SizeConfig.heightMultiplier,
            circleAmigoHeight: 16.02*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.lightBlue, AmigoColors.green],
            circleAmigoOpacity: [0.5, 0.3],
          ),
          CircleAmigo(
            rightCircleAmigoPosition: -9.11*SizeConfig.heightMultiplier,
            topCircleAmigoPosition: -5.85*SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.27*SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.27*SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.lightblue1, AmigoColors.green],
            circleAmigoOpacity: [0.1, 0.1],
          )

        ],
      )
    ) :
    Container(
        decoration:   BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [Color(0xff5bbed9),Color(0xff62c1b1), Color(0xff72c77e),Color(0xff72c77e)])
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text("ACT",
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
              child: Text(Strings.act1,
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
              child: Text(Strings.act2,
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
              child: Text(Strings.act3,
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
