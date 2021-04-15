
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/responsiveLayout.dart';
import 'package:mindamigo/utils/size_config.dart';


class VideoDisc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      webBody: WebVideoDisc(),
      tabletBody: TabVideoDisc(),
      mobileBody: MobileVideoDisc(),
    );
  }
}


class WebVideoDisc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AmigoColors.lightPink3,
      height: 32.55*SizeConfig.heightMultiplier,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              left: 70,
              top: 70,
              bottom: 70,
              child: Container(
                alignment: Alignment.center,
                height: 26.04*SizeConfig.heightMultiplier,
                width: 39.06*SizeConfig.heightMultiplier,
                decoration: BoxDecoration(color: AmigoColors.gray,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Image.asset(youtubeHome, fit: BoxFit.fill, height: 6.51*SizeConfig.heightMultiplier, width: 6.51*SizeConfig.heightMultiplier,),

              )),

          Positioned(
              right: 70,
              top: 70,
              bottom: 70,
              //main container
              child: Container(

                height: 26.04*SizeConfig.heightMultiplier,
                width: 39.06*SizeConfig.heightMultiplier,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Image.asset(commaUpper,
                        height: 6.5*SizeConfig.heightMultiplier,
                        width: 3.25*SizeConfig.heightMultiplier,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Image.asset(commaLower,
                        height: 6.5*SizeConfig.heightMultiplier,
                        width: 3.25*SizeConfig.heightMultiplier,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: Text(Strings.videDesc,style:TextStyle(fontFamily:robot, fontSize: 2.0*SizeConfig.heightMultiplier,fontWeight: FontWeight.bold,color: AmigoColors.lightBrown) , ),
                      ),
                    ),
                  ],
                ),
              )
          )

        ],
      ),
    );
  }
}

class TabVideoDisc extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AmigoColors.lightPink3,
      width: MediaQuery.of(context).size.width,

      padding: EdgeInsets.symmetric(vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 26.04*SizeConfig.heightMultiplier,
            width: 39.06*SizeConfig.heightMultiplier,
            decoration: BoxDecoration(color: AmigoColors.gray,
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Image.asset("assets/images/youtube.png", fit: BoxFit.fill, height: 6.51*SizeConfig.heightMultiplier, width: 6.51*SizeConfig.heightMultiplier,),

          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            height: 26.04*SizeConfig.heightMultiplier,
            width: 39.06*SizeConfig.heightMultiplier,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset("assets/images/bottom_comma.png",
                    height: 6.5*SizeConfig.heightMultiplier,
                    width: 3.25*SizeConfig.heightMultiplier,
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Image.asset("assets/images/top_comma.png",
                    height: 6.5*SizeConfig.heightMultiplier,
                    width: 3.25*SizeConfig.heightMultiplier,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(

                    child: Text(Strings.videDesc,style:TextStyle(fontFamily:robot, fontSize: 2.0*SizeConfig.heightMultiplier,fontWeight: FontWeight.bold,color: AmigoColors.lightBrown) , ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MobileVideoDisc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AmigoColors.lightPink3,
      width: MediaQuery.of(context).size.width,

      padding: EdgeInsets.symmetric(vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 26.04*SizeConfig.heightMultiplier,
            width: 39.06*SizeConfig.heightMultiplier,
            decoration: BoxDecoration(color: AmigoColors.gray,
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Image.asset("assets/images/youtube.png", fit: BoxFit.fill, height: 6.51*SizeConfig.heightMultiplier, width: 6.51*SizeConfig.heightMultiplier,),

          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            height: 26.04*SizeConfig.heightMultiplier,
            width: 39.06*SizeConfig.heightMultiplier,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset("assets/images/bottom_comma.png",
                    height: 6.5*SizeConfig.heightMultiplier,
                    width: 3.25*SizeConfig.heightMultiplier,
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Image.asset("assets/images/top_comma.png",
                    height: 6.5*SizeConfig.heightMultiplier,
                    width: 3.25*SizeConfig.heightMultiplier,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(

                    child: Text(Strings.videDesc,style:TextStyle(fontFamily:robot, fontSize: 2.0*SizeConfig.heightMultiplier,fontWeight: FontWeight.bold,color: AmigoColors.lightBrown) , ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


