import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:mindamigo/pages/meetadam.dart';
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
  ScrollController _controller;

  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        child: SafeArea(
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
                    Container(
                        color: AmigoColors.cream,
                        height: 32.55 * SizeConfig.heightMultiplier,
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                Strings.aboutus,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: robot,
                                    fontSize: 2.08 * SizeConfig.textMultiplier),
                              ),
                            ),
                            //left circle
                            CircleAmigo(
                              leftCircleAmigoPosition:
                                  -6.51 * SizeConfig.heightMultiplier,
                              circleAmigoWidth:
                                  8.7 * SizeConfig.heightMultiplier,
                              circleAmigoHeight:
                                  8.7 * SizeConfig.heightMultiplier,
                              circleAmigoGradient: [
                                AmigoColors.orange,
                                AmigoColors.lightRed2
                              ],
                              circleAmigoOpacity: [0.5, 0.5],
                            ),
                            CircleAmigo(
                              leftCircleAmigoPosition:
                                  -8.81 * SizeConfig.heightMultiplier,
                              circleAmigoWidth:
                                  14.02 * SizeConfig.heightMultiplier,
                              circleAmigoHeight:
                                  14.02 * SizeConfig.heightMultiplier,
                              circleAmigoGradient: [
                                AmigoColors.orange,
                                AmigoColors.lightRed2
                              ],
                              circleAmigoOpacity: [0.4, 0.4],
                            ),
                            CircleAmigo(
                              leftCircleAmigoPosition:
                                  -12.11 * SizeConfig.heightMultiplier,
                              circleAmigoWidth:
                                  20.27 * SizeConfig.heightMultiplier,
                              circleAmigoHeight:
                                  20.27 * SizeConfig.heightMultiplier,
                              circleAmigoGradient: [
                                AmigoColors.orange,
                                AmigoColors.lightRed2
                              ],
                              circleAmigoOpacity: [0.3, 0.3],
                            ),
                            //corner circle
                            CircleAmigo(
                              rightCircleAmigoPosition:
                                  -6.51 * SizeConfig.heightMultiplier,
                              topCircleAmigoPosition:
                                  -3.25 * SizeConfig.heightMultiplier,
                              circleAmigoWidth:
                                  10.7 * SizeConfig.heightMultiplier,
                              circleAmigoHeight:
                                  10.7 * SizeConfig.heightMultiplier,
                              circleAmigoGradient: [
                                AmigoColors.orange,
                                AmigoColors.lightRed2
                              ],
                              circleAmigoOpacity: [0.3, 0.3],
                            ),
                            CircleAmigo(
                              rightCircleAmigoPosition:
                                  -7.81 * SizeConfig.heightMultiplier,
                              topCircleAmigoPosition:
                                  -4.55 * SizeConfig.heightMultiplier,
                              circleAmigoWidth:
                                  15.02 * SizeConfig.heightMultiplier,
                              circleAmigoHeight:
                                  15.02 * SizeConfig.heightMultiplier,
                              circleAmigoGradient: [
                                AmigoColors.orange,
                                AmigoColors.lightRed2
                              ],
                              circleAmigoOpacity: [0.3, 0.3],
                            ),
                            CircleAmigo(
                              rightCircleAmigoPosition:
                                  -9.11 * SizeConfig.heightMultiplier,
                              topCircleAmigoPosition:
                                  -5.85 * SizeConfig.heightMultiplier,
                              circleAmigoWidth:
                                  19.27 * SizeConfig.heightMultiplier,
                              circleAmigoHeight:
                                  19.27 * SizeConfig.heightMultiplier,
                              circleAmigoGradient: [
                                AmigoColors.orange,
                                AmigoColors.lightRed2
                              ],
                              circleAmigoOpacity: [0.3, 0.3],
                            )
                          ],
                        )),
                    ACT(),
                    CBT(),
                    NewsLetter(),
                    BottomNav(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}

class MobileAbout extends StatefulWidget {
  @override
  _MobileAboutState createState() => _MobileAboutState();
}

class _MobileAboutState extends State<MobileAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AmigoColors.lightBlue),
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/images/logo.png",
          height: 3.18 * SizeConfig.heightMultiplier,
        ),
      ),
      endDrawer: Container(
        width: MediaQuery.of(context).size.width,
        child: Drawer(
            child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          ListTile(
            trailing: DelayedDisplay(
              delay: Duration(milliseconds: 30),
              slidingBeginOffset: const Offset(0.0, 0),
              child: InkWell(
                child: Icon(
                  Icons.close,
                  color: Colors.grey,
                ),
                onTap: () => Navigator.pop(context),
              ),
            ),
            title: Text(
              'Mindamigo',
              style: TextStyle(
                  fontSize: 4.27 * SizeConfig.textMultiplier,
                  color: Colors.grey,
                  fontFamily: robot,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushNamed(context, HomeRoute);
            },
          ),

          //meet adam
          ListTile(
            title: Text(
              'Meet Adam',
              style: TextStyle(
                  fontSize: 4.27 * SizeConfig.textMultiplier,
                  color: Colors.grey,
                  fontFamily: robot,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushNamed(context, MeetAdamRoute);
            },
          ),
          //about us
          ListTile(
            title: Text(
              'About Us',
              style: TextStyle(
                  fontSize: 4.27 * SizeConfig.textMultiplier,
                  color: AmigoColors.lightRed,
                  fontFamily: robot,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text(
              'PodCast',
              style: TextStyle(
                  fontSize: 4.27 * SizeConfig.textMultiplier,
                  color: Colors.grey,
                  fontFamily: robot,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushNamed(context, PodcastRoute);
            },
          ),
          ListTile(
            title: Text(
              'Blog',
              style: TextStyle(
                  fontSize: 4.27 * SizeConfig.textMultiplier,
                  color: Colors.grey,
                  fontFamily: robot,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushNamed(context, BlogPageRoute);
            },
          ),
        ])),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              GradientLine(),
              Container(
                  color: AmigoColors.cream,
                  height: 32.55 * SizeConfig.heightMultiplier,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            Strings.aboutus,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: robot,
                                fontSize: 2.08 * SizeConfig.textMultiplier),
                          ),
                        ),
                      ),
                      //left circle
                      CircleAmigo(
                        leftCircleAmigoPosition:
                            -6.51 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 7.7 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 7.7 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.5, 0.5],
                      ),
                      CircleAmigo(
                        leftCircleAmigoPosition:
                            -8.81 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 14.02 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 14.02 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.4, 0.4],
                      ),
                      CircleAmigo(
                        leftCircleAmigoPosition:
                            -12.11 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 22.27 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 22.27 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.3, 0.3],
                      ),
                      //corner circle
                      CircleAmigo(
                        rightCircleAmigoPosition:
                            -6.51 * SizeConfig.heightMultiplier,
                        topCircleAmigoPosition:
                            -3.25 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 10.7 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 10.7 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.3, 0.3],
                      ),
                      CircleAmigo(
                        rightCircleAmigoPosition:
                            -7.81 * SizeConfig.heightMultiplier,
                        topCircleAmigoPosition:
                            -4.55 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 15.02 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 15.02 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.3, 0.3],
                      ),
                      CircleAmigo(
                        rightCircleAmigoPosition:
                            -9.11 * SizeConfig.heightMultiplier,
                        topCircleAmigoPosition:
                            -5.85 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 19.27 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 19.27 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.3, 0.3],
                      )
                    ],
                  )),
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
