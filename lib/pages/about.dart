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
            radius:Radius.circular(15),
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
                                textAlign:TextAlign.center,
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
                              circleAmigoWidth: 8.7 * SizeConfig.heightMultiplier,
                              circleAmigoHeight: 8.7 * SizeConfig.heightMultiplier,
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
                              circleAmigoWidth: 20.27 * SizeConfig.heightMultiplier,
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
                              circleAmigoWidth: 19.27 * SizeConfig.heightMultiplier,
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
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [AmigoColors.lightRed, AmigoColors.lightBlue])),
              child: null,
            ),
            //meet adam
            ListTile(
              leading: Icon(
                Icons.person,
                color: AmigoColors.lightBlue,
              ),
              title: Text(
                'Meet Adam',
                style: TextStyle(
                    fontSize: 2.27 * SizeConfig.textMultiplier,
                    color: AmigoColors.lightBlue,
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
              leading: Icon(
                Icons.people,
                color: AmigoColors.lightBlue,
              ),
              title: Text(
                'About Us',
                style: TextStyle(
                    fontSize: 2.27 * SizeConfig.textMultiplier,
                    color: AmigoColors.lightBlue,
                    fontFamily: robot,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pushNamed(context, AboutUsRoute);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.mic,
                color: AmigoColors.lightBlue,
              ),
              title: Text(
                'PodCast',
                style: TextStyle(
                    fontSize: 2.27 * SizeConfig.textMultiplier,
                    color: AmigoColors.lightBlue,
                    fontFamily: robot,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pushNamed(context, PodcastRoute);
              },
            ),
            //podcast
            ListTile(
              leading: Icon(
                Icons.article_outlined,
                color: AmigoColors.lightBlue,
              ),
              title: Text(
                'Blog',
                style: TextStyle(
                    fontSize: 2.27 * SizeConfig.textMultiplier,
                    color: AmigoColors.lightBlue,
                    fontFamily: robot,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold),
              ),
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
                Navigator.pushNamed(context, HomeRoute);
              },
              child: Image.asset(
                "assets/images/logo.png",
                height: 3.18 * SizeConfig.heightMultiplier,
              ))),
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
