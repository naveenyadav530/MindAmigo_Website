import 'package:flutter/material.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/responsiveLayout.dart';
import 'package:mindamigo/utils/size_config.dart';
import 'package:mindamigo/widgets/bottombar.dart';
import 'package:mindamigo/widgets/circles.dart';
import 'package:mindamigo/widgets/gradientLine.dart';
import 'package:mindamigo/widgets/homeMsgSection.dart';
import 'package:mindamigo/widgets/navbar.dart';
import 'package:mindamigo/widgets/titleSection.dart';
import 'package:mindamigo/widgets/videoAndDisc.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      webBody: WebHomePage(),
      mobileBody: MobileHomePage(),
     
    );
  }
}

//websiteHomePage
class WebHomePage extends StatefulWidget {
  @override
  _WebHomePageState createState() => _WebHomePageState();
}

class _WebHomePageState extends State<WebHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              NavBar(),
              GradientLine(),
              TitleSection(),

              Container(
                height: 26.15*SizeConfig.heightMultiplier,
                width: MediaQuery.of(context).size.width,

                child: Stack(
                  children: [
                    HomeSection(
                      sectionColor: AmigoColors.cream,
                      sectionAlign: Alignment.centerLeft,
                      sectionPositionLeft: 7.8*SizeConfig.heightMultiplier,
                      sectionText: Strings.homeSection1,
                      sectionTextColor: AmigoColors.lightBlack,
                      sectionFontSize: 2.4*SizeConfig.textMultiplier,
                    ),
                    //bottom
                    CircleAmigo(
                      bottomCircleAmigoPosition: -5.20*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -7.16*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition: -8.46*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -10.41*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition: -11.71*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -13.67*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),

                    //top
                    CircleAmigo(
                      topCircleAmigoPosition: -5.20*SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition: -7.16*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      topCircleAmigoPosition: -8.46*SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition: -10.41*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      topCircleAmigoPosition: -11.71*SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition: -13.67*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),

                    //red circle
                    CircleAmigo(
                      bottomCircleAmigoPosition: -1.30*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: MediaQuery.of(context).size.width/2.1,
                      circleAmigoHeight: 2.60*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 2.60*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.lightRed2, AmigoColors.lightRed2],
                      circleAmigoOpacity: [1,1],

                    ),
                  ],
                ),
              ),
              Container(
                height: 26.15*SizeConfig.heightMultiplier,
                width: MediaQuery.of(context).size.width,

                child: Stack(
                  children: [
                    HomeSection(
                      sectionColor: Colors.white,
                      sectionAlign: Alignment.centerRight,
                      sectionPositionRight: 9.11*SizeConfig.heightMultiplier,
                      sectionText: Strings.homeSection2,
                      sectionTextColor: AmigoColors.lightBlack,
                      sectionFontSize: 2.4*SizeConfig.textMultiplier,
                    ),
                    //top
                    CircleAmigo(
                      topCircleAmigoPosition: -7.81*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -7.16*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      topCircleAmigoPosition: -10.41*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -10.41*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      topCircleAmigoPosition: -14.32*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -13.67*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),

                    //top
                    CircleAmigo(
                      bottomCircleAmigoPosition: -10.41*SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition: -7.16*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition: -13.67*SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition: -10.41*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition: -15.62*SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition: -13.67*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),


                    //red circle
                    CircleAmigo(
                      topCircleAmigoPosition: -1.30*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: MediaQuery.of(context).size.width/2.1,
                      circleAmigoHeight: 2.60*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 2.60*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.lightRed2, AmigoColors.lightRed2],
                      circleAmigoOpacity: [1,1],

                    ),
                    //red circle
                    CircleAmigo(
                      bottomCircleAmigoPosition: -1.30*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: MediaQuery.of(context).size.width/2.1,
                      circleAmigoHeight: 2.60*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 2.60*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.lightRed2, AmigoColors.lightRed2],
                      circleAmigoOpacity: [1,1],

                    ),
                  ],
                ),
              ),
              Container(
                height: 26.15*SizeConfig.heightMultiplier,
                width: MediaQuery.of(context).size.width,

                child: Stack(
                  children: [
                    HomeSection(
                      sectionColor: AmigoColors.cream,
                      sectionAlign: Alignment.centerLeft,
                      sectionPositionLeft: 7.8*SizeConfig.heightMultiplier,
                      sectionText: Strings.homeSection3,
                      sectionTextColor: AmigoColors.lightBlack,
                      sectionFontSize: 2.4*SizeConfig.textMultiplier,
                    ),
                    //left
                    CircleAmigo(
                      bottomCircleAmigoPosition: -11.71*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -7.16*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.lightRed2, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition: -14.97*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -10.41*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition: -18.22*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -13.67*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),

                    //right
                    CircleAmigo(
                      topCircleAmigoPosition: -3.25*SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition: -7.48*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      topCircleAmigoPosition: -5.85*SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition: -10.41*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      topCircleAmigoPosition: -9.11*SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition: -13.34*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),

                    //red circle
                    CircleAmigo(
                      bottomCircleAmigoPosition: -1.30*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: MediaQuery.of(context).size.width/2.1,
                      circleAmigoHeight: 2.60*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 2.60*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.lightRed2, AmigoColors.lightRed2],
                      circleAmigoOpacity: [1,1],

                    ),
                    //red circle
                    CircleAmigo(
                      topCircleAmigoPosition: -1.30*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: MediaQuery.of(context).size.width/2.1,
                      circleAmigoHeight: 2.60*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 2.60*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.lightRed2, AmigoColors.lightRed2],
                      circleAmigoOpacity: [1,1],

                    ),
                  ],
                ),
              ),
              Container(
                height: 26.15*SizeConfig.heightMultiplier,
                width: MediaQuery.of(context).size.width,

                child: Stack(
                  children: [
                    HomeSection(
                      sectionColor: Colors.white,
                      sectionAlign: Alignment.centerRight,
                      sectionPositionRight: 9.11*SizeConfig.heightMultiplier,
                      sectionText: Strings.homeSection4,
                      sectionTextColor: AmigoColors.lightBlack,
                      sectionFontSize: 2.4*SizeConfig.textMultiplier,
                    ),
                    //left
                    CircleAmigo(
                      topCircleAmigoPosition: -0.65*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -5.85*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      topCircleAmigoPosition: -3.90*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -9.89*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      topCircleAmigoPosition: -7.16*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -13.34*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),

                    //red circle
                    CircleAmigo(
                      topCircleAmigoPosition: -1.30*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: MediaQuery.of(context).size.width/2.1,
                      circleAmigoHeight: 2.60*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 2.60*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.lightRed2, AmigoColors.lightRed2],
                      circleAmigoOpacity: [1,1],

                    ),
                  ],
                ),
              ),
              VideoDisc(),
              BottomNav(),

            ],
          ),
        ),
      ),
    );
  }
}



//mobile HomePage
class MobileHomePage extends StatefulWidget {
  @override
  _MobileHomePageState createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
