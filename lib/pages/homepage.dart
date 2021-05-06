import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
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
import 'package:mindamigo/core/cookie/cookiesAccept.dart';

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
  bool isVisible;

  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    isVisible=CookiesSharedPreference.getCookiePolicy()??true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    isVisible==true?WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // ignore: unrelated_type_equality_checks
      showModalBottomSheet(
        elevation: 0,
          isDismissible: true,
          backgroundColor: Colors.transparent,
          context: context,
          isScrollControlled: false,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)
            ),
          ),

          builder: (BuildContext context) {
            return Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                boxShadow: [],
                color: Colors.white,
              ),
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width:MediaQuery.of(context).size.width*0.6,
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            text:"We use cookies to improve user experience, and analyze website traffic. For these reasons, we may share your site usage data with our analytics partners. By clicking “Accept Cookies,” you consent to store "
                                "on your device all the technologies described in our",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black,
                                wordSpacing: 3
                            ),
                          children: [
                            TextSpan(
                              style: TextStyle(
                                  color: Colors.blue,
                                fontWeight: FontWeight.w700
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap=(){
                                  Navigator.pushNamed(
                                     context, CookiePolicyRoute,
                                  );
                                },
                                text: " View Cookie Policy.",
                            )
                          ]
                        ),
                      ),
                    ),
                   GestureDetector(
                     onTap: (){
                       CookiesSharedPreference.setCookiePolicy(false);
                       Navigator.pop(context);
                     },
                     child: Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(5)),
                         color: Colors.green
                       ),
                       padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                       child: Text('Accept',style: TextStyle(color: Colors.white),),
                     ),
                   )

                  ],
                ),
              ),
            );
          }
      );
    }):Container();
    return Stack(
      children: [
        SafeArea(
          child: RawScrollbar(
            radius: Radius.circular(15),
            controller: _controller,
            thickness: 15,
            thumbColor: Colors.lightBlueAccent.shade100,
            isAlwaysShown: true,
            child: SingleChildScrollView(
              controller: _controller,
              child: Container(
                child: Column(
                  children: [
                    NavBar(),
                    GradientLine(),
                    TitleSection(),
                    Container(
                      height: 26.15 * SizeConfig.heightMultiplier,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          HomeSection(
                            sectionColor: AmigoColors.cream,
                            sectionAlign: Alignment.centerLeft,
                            sectionPositionLeft:
                                7.8 * SizeConfig.heightMultiplier,
                            sectionText: Strings.homeSection1,
                            sectionTextColor: AmigoColors.lightBlack,
                            sectionFontSize: 2.4 * SizeConfig.textMultiplier,
                            image: homeImage1,
                            imagePositionRight:
                                15.11 * SizeConfig.heightMultiplier,
                          ),
                          //bottom
                          CircleAmigo(
                            bottomCircleAmigoPosition:
                                -5.20 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -7.16 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                13.02 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                13.02 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                          CircleAmigo(
                            bottomCircleAmigoPosition:
                                -8.46 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -10.41 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                19.53 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                19.53 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                          CircleAmigo(
                            bottomCircleAmigoPosition:
                                -11.71 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -13.67 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                26.04 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                26.04 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),

                          //top
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -5.20 * SizeConfig.heightMultiplier,
                            rightCircleAmigoPosition:
                                -7.16 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                13.02 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                13.02 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -8.46 * SizeConfig.heightMultiplier,
                            rightCircleAmigoPosition:
                                -10.41 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                19.53 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                19.53 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -11.71 * SizeConfig.heightMultiplier,
                            rightCircleAmigoPosition:
                                -13.67 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                26.04 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                26.04 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),

                          //red circle
                          CircleAmigo(
                            bottomCircleAmigoPosition:
                                -1.30 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                MediaQuery.of(context).size.width / 2.1,
                            circleAmigoHeight:
                                2.60 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                2.60 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.lightRed2,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [1, 1],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 26.15 * SizeConfig.heightMultiplier,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          HomeSection(
                            sectionColor: Colors.white,
                            sectionAlign: Alignment.centerRight,
                            sectionPositionRight:
                                9.11 * SizeConfig.heightMultiplier,
                            sectionText: Strings.homeSection2,
                            sectionTextColor: AmigoColors.lightBlack,
                            sectionFontSize: 2.4 * SizeConfig.textMultiplier,
                            image: homeImage2,
                            imagePositionLeft:
                                15.11 * SizeConfig.heightMultiplier,
                          ),
                          //top
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -7.81 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -7.16 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                13.02 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                13.02 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -10.41 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -10.41 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                19.53 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                19.53 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -14.32 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -13.67 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                26.04 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                26.04 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),

                          //top
                          CircleAmigo(
                            bottomCircleAmigoPosition:
                                -10.41 * SizeConfig.heightMultiplier,
                            rightCircleAmigoPosition:
                                -7.16 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                13.02 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                13.02 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                          CircleAmigo(
                            bottomCircleAmigoPosition:
                                -13.67 * SizeConfig.heightMultiplier,
                            rightCircleAmigoPosition:
                                -10.41 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                19.53 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                19.53 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                          CircleAmigo(
                            bottomCircleAmigoPosition:
                                -15.62 * SizeConfig.heightMultiplier,
                            rightCircleAmigoPosition:
                                -13.67 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                26.04 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                26.04 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),

                          //red circle
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -1.30 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                MediaQuery.of(context).size.width / 2.1,
                            circleAmigoHeight:
                                2.60 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                2.60 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.lightRed2,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [1, 1],
                          ),
                          //red circle
                          CircleAmigo(
                            bottomCircleAmigoPosition:
                                -1.30 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                MediaQuery.of(context).size.width / 2.1,
                            circleAmigoHeight:
                                2.60 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                2.60 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.lightRed2,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [1, 1],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 26.15 * SizeConfig.heightMultiplier,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          HomeSection(
                            sectionColor: AmigoColors.cream,
                            sectionAlign: Alignment.centerLeft,
                            sectionPositionLeft:
                                7.8 * SizeConfig.heightMultiplier,
                            sectionText: Strings.homeSection3,
                            sectionTextColor: AmigoColors.lightBlack,
                            sectionFontSize: 2.4 * SizeConfig.textMultiplier,
                            image: homeImage3,
                            imagePositionRight:
                                15.11 * SizeConfig.heightMultiplier,
                          ),
                          //left
                          CircleAmigo(
                            bottomCircleAmigoPosition:
                                -11.71 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -7.16 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                13.02 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                13.02 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.lightRed2,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                          CircleAmigo(
                            bottomCircleAmigoPosition:
                                -14.97 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -10.41 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                19.53 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                19.53 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                          CircleAmigo(
                            bottomCircleAmigoPosition:
                                -18.22 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -13.67 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                26.04 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                26.04 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),

                          //right
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -3.25 * SizeConfig.heightMultiplier,
                            rightCircleAmigoPosition:
                                -7.48 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                13.02 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                13.02 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -5.85 * SizeConfig.heightMultiplier,
                            rightCircleAmigoPosition:
                                -10.41 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                19.53 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                19.53 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -9.11 * SizeConfig.heightMultiplier,
                            rightCircleAmigoPosition:
                                -13.34 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                26.04 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                26.04 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),

                          //red circle
                          CircleAmigo(
                            bottomCircleAmigoPosition:
                                -1.30 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                MediaQuery.of(context).size.width / 2.1,
                            circleAmigoHeight:
                                2.60 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                2.60 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.lightRed2,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [1, 1],
                          ),
                          //red circle
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -1.30 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                MediaQuery.of(context).size.width / 2.1,
                            circleAmigoHeight:
                                2.60 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                2.60 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.lightRed2,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [1, 1],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 26.15 * SizeConfig.heightMultiplier,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          HomeSection(
                            sectionColor: Colors.white,
                            sectionAlign: Alignment.centerRight,
                            sectionPositionRight:
                                9.11 * SizeConfig.heightMultiplier,
                            sectionText: Strings.homeSection4,
                            sectionTextColor: AmigoColors.lightBlack,
                            sectionFontSize: 2.4 * SizeConfig.textMultiplier,
                            image: homeImage4,
                            imagePositionLeft:
                                15.11 * SizeConfig.heightMultiplier,
                          ),
                          //left
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -0.65 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -5.85 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                13.02 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                13.02 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -3.90 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -9.89 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                19.53 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                19.53 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -7.16 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -13.34 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                26.04 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                26.04 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),

                          //red circle
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -1.30 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                MediaQuery.of(context).size.width / 2.1,
                            circleAmigoHeight:
                                2.60 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                2.60 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.lightRed2,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [1, 1],
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
          ),
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
  ScrollController _controller;
  bool isVisible;

  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    isVisible=CookiesSharedPreference.getCookiePolicy()??true;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      isVisible==true?showModalBottomSheet(
          elevation: 0,
          // isDismissible: true,
          backgroundColor: Colors.transparent,
          context: context,
          isScrollControlled: false,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)
            ),
          ),

          builder: (BuildContext context) {
            return Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                boxShadow: [],
                color: Colors.white,
              ),
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width:MediaQuery.of(context).size.width*0.6,
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            text:"We use cookies to improve user experience, and analyze website traffic. For these reasons, we may share your site usage data with our analytics partners. By clicking “Accept Cookies,” you consent to store "
                                "on your device all the technologies described in our",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black,
                                wordSpacing: 3
                            ),
                            children: [
                              TextSpan(
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap=(){
                                    Navigator.pushNamed(
                                      context, CookiePolicyRoute,
                                    );
                                  },
                                text: " View Cookie Policy.",
                              )
                            ]
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        CookiesSharedPreference.setCookiePolicy(false);
                        Navigator.pop(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.green
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                        child: Text('Accept',style: TextStyle(color: Colors.white),),
                      ),
                    )

                  ],
                ),
              ),
            );
          }
      ):Container();
    });
    return Container(
      child: SingleChildScrollView(
          controller: _controller,
        child: Container(
          child: Column(
            children: [
              NavBar(),
              GradientLine(),
              TabTitleSection(),
              Container(
                height: 26.15 * SizeConfig.heightMultiplier,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    HomeSection(
                      sectionColor: AmigoColors.cream,
                      sectionAlign: Alignment.centerLeft,
                      sectionPositionLeft: 7.8 * SizeConfig.heightMultiplier,
                      sectionText: Strings.homeSection1,
                      sectionTextColor: AmigoColors.lightBlack,
                      sectionFontSize: 2 * SizeConfig.textMultiplier,
                      image: homeImage1,
                      imagePositionRight: 2.11 * SizeConfig.heightMultiplier,
                    ),
                    //bottom
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -5.20 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -7.16 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -8.46 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -10.41 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -11.71 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -13.67 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),

                    //top
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -5.20 * SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition:
                          -7.16 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -8.46 * SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition:
                          -10.41 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -11.71 * SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition:
                          -13.67 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),

                    //red circle
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -1.30 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          MediaQuery.of(context).size.width / 2.1,
                      circleAmigoHeight: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.lightRed2,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [1, 1],
                    ),
                  ],
                ),
              ),
              Container(
                height: 26.15 * SizeConfig.heightMultiplier,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    HomeSection(
                      sectionColor: Colors.white,
                      sectionAlign: Alignment.centerRight,
                      sectionPositionRight: 9.11 * SizeConfig.heightMultiplier,
                      sectionText: Strings.homeSection2,
                      sectionTextColor: AmigoColors.lightBlack,
                      sectionFontSize: 2 * SizeConfig.textMultiplier,
                      image: homeImage2,
                      imagePositionLeft: 2.11 * SizeConfig.heightMultiplier,
                    ),
                    //top
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -7.81 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -7.16 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -10.41 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -10.41 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -14.32 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -13.67 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),

                    //top
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -10.41 * SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition:
                          -7.16 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -13.67 * SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition:
                          -10.41 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -15.62 * SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition:
                          -13.67 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),

                    //red circle
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -1.30 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          MediaQuery.of(context).size.width / 2.1,
                      circleAmigoHeight: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.lightRed2,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [1, 1],
                    ),
                    //red circle
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -1.30 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          MediaQuery.of(context).size.width / 2.1,
                      circleAmigoHeight: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.lightRed2,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [1, 1],
                    ),
                  ],
                ),
              ),
              Container(
                height: 26.15 * SizeConfig.heightMultiplier,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    HomeSection(
                      sectionColor: AmigoColors.cream,
                      sectionAlign: Alignment.centerLeft,
                      sectionPositionLeft: 7.8 * SizeConfig.heightMultiplier,
                      sectionText: Strings.homeSection3,
                      sectionTextColor: AmigoColors.lightBlack,
                      sectionFontSize: 2 * SizeConfig.textMultiplier,
                      image: homeImage3,
                      imagePositionRight: 2.11 * SizeConfig.heightMultiplier,
                    ),
                    //left
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -11.71 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -7.16 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.lightRed2,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -14.97 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -10.41 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -18.22 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -13.67 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),

                    //right
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -3.25 * SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition:
                          -7.48 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -5.85 * SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition:
                          -10.41 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -9.11 * SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition:
                          -13.34 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),

                    //red circle
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -1.30 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          MediaQuery.of(context).size.width / 2.1,
                      circleAmigoHeight: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.lightRed2,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [1, 1],
                    ),
                    //red circle
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -1.30 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          MediaQuery.of(context).size.width / 2.1,
                      circleAmigoHeight: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.lightRed2,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [1, 1],
                    ),
                  ],
                ),
              ),
              Container(
                height: 26.15 * SizeConfig.heightMultiplier,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    HomeSection(
                      sectionColor: Colors.white,
                      sectionAlign: Alignment.centerRight,
                      sectionPositionRight: 9.11 * SizeConfig.heightMultiplier,
                      sectionText: Strings.homeSection4,
                      sectionTextColor: AmigoColors.lightBlack,
                      sectionFontSize: 2 * SizeConfig.textMultiplier,
                      image: homeImage4,
                      imagePositionLeft: 2.11 * SizeConfig.heightMultiplier,
                    ),
                    //left
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -0.65 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -5.85 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -3.90 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -9.89 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -7.16 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -13.34 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),

                    //red circle
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -1.30 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          MediaQuery.of(context).size.width / 2.1,
                      circleAmigoHeight: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.lightRed2,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [1, 1],
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
  ScrollController _controller;
  bool isVisible;

  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    isVisible=CookiesSharedPreference.getCookiePolicy()??true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      isVisible==true?showModalBottomSheet(
          elevation: 0,
          // isDismissible: true,
          backgroundColor: Colors.transparent,
          context: context,
          isScrollControlled: false,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)
            ),
          ),

          builder: (BuildContext context) {
            return Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                boxShadow: [],
                color: Colors.white,
              ),
              height: 220,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width:MediaQuery.of(context).size.width*0.6,
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            text:"We use cookies to improve user experience, and analyze website traffic. For these reasons, we may share your site usage data with our analytics partners. By clicking “Accept Cookies,” you consent to store "
                                "on your device all the technologies described in our",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black,
                                wordSpacing: 3
                            ),
                            children: [
                              TextSpan(
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap=(){
                                    Navigator.pushNamed(
                                      context, CookiePolicyRoute,
                                    );
                                  },
                                text: " View Cookie Policy.",
                              )
                            ]
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          isVisible=false;
                        });
                        CookiesSharedPreference.setCookiePolicy(false);
                        Navigator.pop(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.green
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                        child: Text('Accept',style: TextStyle(color: Colors.white),),
                      ),
                    )

                  ],
                ),
              ),
            );
          }
      ):Container();
    });
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AmigoColors.lightBlue),
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/images/logo.png",
          height: 3.18 * SizeConfig.heightMultiplier,
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      elevation: 10,
                      isScrollControlled: true,
                      isDismissible: true,
                      builder: (BuildContext context) {
                        return DraggableScrollableSheet(
                            initialChildSize: 0.75, //set this as you want
                            maxChildSize: 0.75, //set this as you want
                            minChildSize: 0.75, //set this as you want
                            expand: true,
                            builder: (context, scrollController) {
                              return Container(
                                color: Colors.white,
                                height: MediaQuery.of(context).size.height,
                                child: Stack(
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: InkWell(
                                            child: Text(
                                              'Meet Adam',
                                              style: TextStyle(
                                                  fontSize: 4.27 *
                                                      SizeConfig.textMultiplier,
                                                  color: AmigoColors.lightBlack,
                                                  fontFamily: robot,
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, MeetAdamRoute);
                                            },
                                          ),
                                        ),
                                        //meet adam
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: InkWell(
                                            child: Text(
                                              'About Us',
                                              style: TextStyle(
                                                  fontSize: 4.27 *
                                                      SizeConfig.textMultiplier,
                                                  color: AmigoColors.lightBlack,
                                                  fontFamily: robot,
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, AboutUsRoute);
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: InkWell(
                                            child: Text(
                                              'Podcast',
                                              style: TextStyle(
                                                  fontSize: 4.27 *
                                                      SizeConfig.textMultiplier,
                                                  color: AmigoColors.lightBlack,
                                                  fontFamily: robot,
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, PodcastRoute);
                                            },
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: InkWell(
                                            child: Text(
                                              'Blog',
                                              style: TextStyle(
                                                  fontSize: 4.27 *
                                                      SizeConfig.textMultiplier,
                                                  color: AmigoColors.lightBlack,
                                                  fontFamily: robot,
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, BlogPageRoute);
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      right: 0,
                                      child: FlatButton(
                                        child: Icon(Icons.close),
                                        onPressed: () => Navigator.pop(context),
                                      ),
                                    ),
                                  ],
                                ),
                              ); //whatever you're returning, does not have to be a Container
                            });
                      });
                },
                child: Icon(
                  Icons.menu,
                  size: 26.0,
                ),
              )),
        ],
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
                      sectionFontSize: 2.4 * SizeConfig.textMultiplier,
                      sectionTextColor: AmigoColors.lightBlack,
                      image: homeImage1,
                    ),
                    //bottom
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -5.20 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -7.16 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -8.46 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -10.41 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -11.71 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -13.67 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),

                    //top
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -5.20 * SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition:
                          -7.16 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -8.46 * SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition:
                          -10.41 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -11.71 * SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition:
                          -13.67 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),

                    //red circle
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -1.30 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          MediaQuery.of(context).size.width / 2.1,
                      circleAmigoHeight: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.lightRed2,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [1, 1],
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
                      sectionFontSize: 2.4 * SizeConfig.textMultiplier,
                      sectionTextColor: AmigoColors.lightBlack,
                      image: homeImage2,
                    ),
                    //bottom
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -5.20 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -7.16 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -8.46 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -10.41 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -11.71 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -13.67 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),

                    //top
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -5.20 * SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition:
                          -7.16 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -8.46 * SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition:
                          -10.41 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -11.71 * SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition:
                          -13.67 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),

                    //red circle
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -1.30 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          MediaQuery.of(context).size.width / 2.1,
                      circleAmigoHeight: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.lightRed2,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [1, 1],
                    ),
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -1.30 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          MediaQuery.of(context).size.width / 2.1,
                      circleAmigoHeight: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.lightRed2,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [1, 1],
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
                      sectionFontSize: 2.4 * SizeConfig.textMultiplier,
                      sectionTextColor: AmigoColors.lightBlack,
                      image: homeImage3,
                    ),
                    //bottom
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -5.20 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -7.16 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -8.46 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -10.41 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -11.71 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -13.67 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),

                    //top
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -5.20 * SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition:
                          -7.16 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -8.46 * SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition:
                          -10.41 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -11.71 * SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition:
                          -13.67 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),

                    //red circle
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -1.30 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          MediaQuery.of(context).size.width / 2.1,
                      circleAmigoHeight: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.lightRed2,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [1, 1],
                    ),
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -1.30 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          MediaQuery.of(context).size.width / 2.1,
                      circleAmigoHeight: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.lightRed2,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [1, 1],
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
                      sectionFontSize: 2.4 * SizeConfig.textMultiplier,
                      sectionTextColor: AmigoColors.lightBlack,
                      image: homeImage4,
                    ),
                    //bottom
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -5.20 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -7.16 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -8.46 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -10.41 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          -11.71 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -13.67 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),

                    //top
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -5.20 * SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition:
                          -7.16 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -8.46 * SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition:
                          -10.41 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -11.71 * SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition:
                          -13.67 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),

                    CircleAmigo(
                      topCircleAmigoPosition:
                          -1.30 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          MediaQuery.of(context).size.width / 2.1,
                      circleAmigoHeight: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 2.60 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.lightRed2,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [1, 1],
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
