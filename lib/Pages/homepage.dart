import 'package:flutter/material.dart';
import 'package:flutter_web_scrollbar/flutter_web_scrollbar.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
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
      tabletBody: TabHomePage(),
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
  ScrollController _controller;

  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    super.initState();
  }

  void scrollCallBack(DragUpdateDetails dragUpdate) {
    setState(() {
      // Note: 3.5 represents the theoretical height of all my scrollable content. This number will vary for you.
      _controller.position.moveTo(dragUpdate.globalPosition.dy * 3.5);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          controller: _controller,
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
                        image: homeImage1,
                        imagePositionRight: 15.11*SizeConfig.heightMultiplier,
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
                        image: homeImage2,
                        imagePositionLeft: 15.11*SizeConfig.heightMultiplier,
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
                        image: homeImage3,
                        imagePositionRight: 15.11*SizeConfig.heightMultiplier,
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
                        image: homeImage4,
                        imagePositionLeft: 15.11*SizeConfig.heightMultiplier,
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
        FlutterWebScroller(
          //Pass a reference to the ScrollCallBack function into the scrollbar
          scrollCallBack,
          //Add optional values
          scrollBarBackgroundColor: Colors.white,
          scrollBarWidth: 20.0,
          dragHandleColor: AmigoColors.lightblue1,
          dragHandleBorderRadius: 2.0,
          dragHandleHeight: 40.0,
          dragHandleWidth: 15.0,
        ),
      ],
    );
  }
}






class TabHomePage extends StatefulWidget {
  @override
  _TabHomePageState createState() => _TabHomePageState();
}
class _TabHomePageState extends State<TabHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              NavBar(),
              GradientLine(),
              TabTitleSection(),
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
                      sectionFontSize: 2*SizeConfig.textMultiplier,
                      image: homeImage1,
                      imagePositionRight: 2.11*SizeConfig.heightMultiplier,
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
                      sectionFontSize: 2*SizeConfig.textMultiplier,
                      image: homeImage2,
                      imagePositionLeft: 2.11*SizeConfig.heightMultiplier,
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
                      sectionFontSize: 2*SizeConfig.textMultiplier,
                      image: homeImage3,
                      imagePositionRight: 2.11*SizeConfig.heightMultiplier,
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
                      sectionFontSize: 2*SizeConfig.textMultiplier,
                      image: homeImage4,
                      imagePositionLeft: 2.11*SizeConfig.heightMultiplier,
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
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [AmigoColors.lightRed,AmigoColors.lightBlue])
              ), child: null,
            ),
            //meet adam
            ListTile(
              leading: Icon(Icons.person, color: AmigoColors.lightBlue,),
              title: Text('Meet Adam',
                style: TextStyle(
                    fontSize:2.27*SizeConfig.textMultiplier,
                    color: AmigoColors.lightBlue,
                    fontFamily: robot,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold
                ),
              ),
              onTap: () {

                Navigator.pushNamed(context, MeetAdamRoute);
              },
            ),
            //about us
            ListTile(
              leading: Icon(Icons.people ,color: AmigoColors.lightBlue,),
              title: Text('About Us',
                style: TextStyle(
                    fontSize:2.27*SizeConfig.textMultiplier,
                    color: AmigoColors.lightBlue,
                    fontFamily: robot,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold
                ),),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pushNamed(context, AboutUsRoute);
              },
            ),
            ListTile(
              leading: Icon(Icons.mic, color: AmigoColors.lightBlue,),
              title: Text('PodCast',
                style: TextStyle(
                    fontSize:2.27*SizeConfig.textMultiplier,
                    color: AmigoColors.lightBlue,
                    fontFamily: robot,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold
                ),),
              onTap: () {

                Navigator.pushNamed(context, PodcastRoute);
              },
            ),
            //podcast
            ListTile(
              leading: Icon(Icons.article_outlined,color: AmigoColors.lightBlue,),
              title: Text('Blog',
                style: TextStyle(
                    fontSize:2.27*SizeConfig.textMultiplier,
                    color: AmigoColors.lightBlue,
                    fontFamily: robot,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold
                ),),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pushNamed(context, BlogPageRoute);
              },
            ),
          ],
        ),
      ),

      appBar: AppBar(
          iconTheme: IconThemeData(color: AmigoColors.lightBlue),
          backgroundColor: Colors.white,
          title: InkWell(
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pushNamed(context, HomeRoute);
              },
              child: Image.asset("assets/images/logo.png", height: 3.18*SizeConfig.heightMultiplier,))
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              GradientLine(),
              mobileTitleSection(),
              Container(

                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Stack(
                  children: [
                    MobileHomeSection(
                      sectionColor: AmigoColors.cream,
                      sectionText: Strings.homeSection1,
                      sectionFontSize: 2.4*SizeConfig.textMultiplier,
                      sectionTextColor: AmigoColors.lightBlack,
                      image: homeImage1,
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

                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Stack(
                  children: [
                    MobileHomeSection(
                      sectionColor: AmigoColors.cream,
                      sectionText: Strings.homeSection2,
                      sectionFontSize: 2.4*SizeConfig.textMultiplier,
                      sectionTextColor: AmigoColors.lightBlack,
                      image: homeImage2,
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

                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Stack(
                  children: [
                    MobileHomeSection(
                      sectionColor: AmigoColors.cream,
                      sectionText: Strings.homeSection3,
                      sectionFontSize: 2.4*SizeConfig.textMultiplier,
                      sectionTextColor: AmigoColors.lightBlack,
                      image: homeImage3,
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

                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Stack(
                  children: [
                    MobileHomeSection(
                      sectionColor: AmigoColors.cream,
                      sectionText: Strings.homeSection4,
                      sectionFontSize: 2.4*SizeConfig.textMultiplier,
                      sectionTextColor: AmigoColors.lightBlack,
                      image: homeImage4,
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
