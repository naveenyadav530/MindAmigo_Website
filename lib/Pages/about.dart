import 'package:flutter/material.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/responsiveLayout.dart';
import 'package:mindamigo/utils/size_config.dart';
import 'package:mindamigo/widgets/act.dart';
import 'package:mindamigo/widgets/bottombar.dart';
import 'package:mindamigo/widgets/cbt.dart';
import 'package:mindamigo/widgets/circles.dart';
import 'package:mindamigo/widgets/gradientLine.dart';
import 'package:mindamigo/widgets/navbar.dart';
import 'package:mindamigo/widgets/newsletter.dart';


class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      webBody: WebAbout(),
      mobileBody: MobileAbout(),
    );
  }
}

class WebAbout extends StatefulWidget {
  @override
  _WebAboutState createState() => _WebAboutState();
}

class _WebAboutState extends State<WebAbout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              NavBar(),
              GradientLine(),
              Container(
                  color: AmigoColors.cream,
                  height: 32.55*SizeConfig.heightMultiplier,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text(Strings.aboutus, style: TextStyle(fontWeight: FontWeight.bold, fontFamily: robot, fontSize: 2.08*SizeConfig.textMultiplier),),
                      ),
                      //left circle
                      CircleAmigo(
                        leftCircleAmigoPosition: -6.51*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 10.7*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 10.7*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.5, 0.5],
                      ),
                      CircleAmigo(
                        leftCircleAmigoPosition: -8.81*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 17.02*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 17.02*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.4, 0.4],
                      ),
                      CircleAmigo(
                        leftCircleAmigoPosition: -12.11*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 25.27*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 25.27*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.3, 0.3],
                      ),
                      //corner circle
                      CircleAmigo(
                        rightCircleAmigoPosition: -6.51*SizeConfig.heightMultiplier,
                        topCircleAmigoPosition: -3.25*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 10.7*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 10.7*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.3, 0.3],
                      ),
                      CircleAmigo(
                        rightCircleAmigoPosition: -7.81*SizeConfig.heightMultiplier,
                        topCircleAmigoPosition: -4.55*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 15.02*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 15.02*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.3, 0.3],
                      ),
                      CircleAmigo(
                        rightCircleAmigoPosition: -9.11*SizeConfig.heightMultiplier,
                        topCircleAmigoPosition: -5.85*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 19.27*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 19.27*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.3, 0.3],
                      )
                    ],
                  )
              ),
              ACT(),
              CBT(),
              NewsLetter(),
              BottomNav(),

            ],
          ),
        ),
      ),
    );
  }
}

class MobileAbout extends StatefulWidget {
  @override
  _MobileAboutState createState() => _MobileAboutState();
}

class _MobileAboutState extends State<MobileAbout> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


