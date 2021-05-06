import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mindamigo/pages/privacyPolicy.dart';
import 'package:mindamigo/utils/responsiveLayout.dart';
import 'package:mindamigo/widgets/bottombar.dart';
import 'package:mindamigo/widgets/circles.dart';
import 'package:mindamigo/widgets/gradientLine.dart';
import 'package:mindamigo/widgets/navbar.dart';
import 'package:mindamigo/utils/size_config.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:url_launcher/url_launcher.dart';

class CookiePolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      webBody: WebCookiePage(),
      tabletBody: TabCookiePage(),
      mobileBody: MobileCookiePage(),
    );
  }
}

class WebCookiePage extends StatefulWidget {
  @override
  _WebCookiePageState createState() => _WebCookiePageState();
}

class _WebCookiePageState extends State<WebCookiePage> {
  ScrollController _controller;

  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.only(
                                  top: 6.51 * SizeConfig.heightMultiplier),
                              width: MediaQuery.of(context).size.width / 1.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Cookies Policy",
                                    style: TextStyle(
                                        fontSize:
                                            2.40 * SizeConfig.textMultiplier,
                                        color: Colors.orange,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.95 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text: Strings.cookiesPolicy,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: robot,
                                              fontSize: 1.2 *
                                                  SizeConfig.textMultiplier),
                                        ),
                                      )),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.fiber_manual_record),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                              text: "AllAboutCookies:",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: robot,
                                                  fontSize: 1.2 *
                                                      SizeConfig
                                                          .textMultiplier),
                                              children: [
                                                TextSpan(
                                                  text:
                                                      "http://www.allaboutcookies.org/",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.blue),
                                                  recognizer:
                                                      new TapGestureRecognizer()
                                                        ..onTap = () {
                                                          launch(
                                                              'http://www.allaboutcookies.org/');
                                                        },
                                                )
                                              ]),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.fiber_manual_record),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                              text:
                                                  "Network Advertising Initiative:",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: robot,
                                                  fontSize: 1.2 *
                                                      SizeConfig
                                                          .textMultiplier),
                                              children: [
                                                TextSpan(
                                                  text:
                                                      "http://www.networkadvertising.org/",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.blue),
                                                  recognizer:
                                                      new TapGestureRecognizer()
                                                        ..onTap = () {
                                                          launch(
                                                              'http://www.networkadvertising.org/');
                                                        },
                                                )
                                              ]),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                ],
                              )),

                          //left
                          CircleAmigo(
                            bottomCircleAmigoPosition:
                                18.2 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -10.16 * SizeConfig.heightMultiplier,
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
                                15 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -13.41 * SizeConfig.heightMultiplier,
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
                                11.71 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -16.67 * SizeConfig.heightMultiplier,
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
                                -2.20 * SizeConfig.heightMultiplier,
                            rightCircleAmigoPosition:
                                -7.16 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                15.02 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                15.02 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -5.46 * SizeConfig.heightMultiplier,
                            rightCircleAmigoPosition:
                                -10.41 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                22.53 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                22.53 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -8.71 * SizeConfig.heightMultiplier,
                            rightCircleAmigoPosition:
                                -13.67 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                30.04 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                30.04 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                        ],
                      ),
                    ),
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

class TabCookiePage extends StatefulWidget {
  @override
  _TabCookiePageState createState() => _TabCookiePageState();
}

class _TabCookiePageState extends State<TabCookiePage> {
  ScrollController _controller;

  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.only(
                                  top: 6.51 * SizeConfig.heightMultiplier),
                              width: MediaQuery.of(context).size.width / 1.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Cookies Policy",
                                    style: TextStyle(
                                        fontSize:
                                            2.40 * SizeConfig.textMultiplier,
                                        color: Colors.orange,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.95 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text: Strings.cookiesPolicy,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: robot,
                                              fontSize: 1.2 *
                                                  SizeConfig.textMultiplier),
                                        ),
                                      )),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.fiber_manual_record),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                              text: "AllAboutCookies:",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: robot,
                                                  fontSize: 1.2 *
                                                      SizeConfig
                                                          .textMultiplier),
                                              children: [
                                                TextSpan(
                                                  text:
                                                      "http://www.allaboutcookies.org/",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.blue),
                                                  recognizer:
                                                      new TapGestureRecognizer()
                                                        ..onTap = () {
                                                          launch(
                                                              'http://www.allaboutcookies.org/');
                                                        },
                                                )
                                              ]),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.fiber_manual_record),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                              text:
                                                  "Network Advertising Initiative:",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: robot,
                                                  fontSize: 1.2 *
                                                      SizeConfig
                                                          .textMultiplier),
                                              children: [
                                                TextSpan(
                                                  text:
                                                      "http://www.networkadvertising.org/",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.blue),
                                                  recognizer:
                                                      new TapGestureRecognizer()
                                                        ..onTap = () {
                                                          launch(
                                                              'http://www.networkadvertising.org/');
                                                        },
                                                )
                                              ]),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                ],
                              )),

                          //left
                          CircleAmigo(
                            bottomCircleAmigoPosition:
                                18.2 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -10.16 * SizeConfig.heightMultiplier,
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
                                15 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -13.41 * SizeConfig.heightMultiplier,
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
                                11.71 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -16.67 * SizeConfig.heightMultiplier,
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
                                -2.20 * SizeConfig.heightMultiplier,
                            rightCircleAmigoPosition:
                                -7.16 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                15.02 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                15.02 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -5.46 * SizeConfig.heightMultiplier,
                            rightCircleAmigoPosition:
                                -10.41 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                22.53 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                22.53 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -8.71 * SizeConfig.heightMultiplier,
                            rightCircleAmigoPosition:
                                -13.67 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                30.04 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                30.04 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                        ],
                      ),
                    ),
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

class MobileHomePage extends StatefulWidget {
  @override
  _MobileHomePageState createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  ScrollController _controller;

  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.only(
                                  top: 6.51 * SizeConfig.heightMultiplier),
                              width: MediaQuery.of(context).size.width / 1.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Cookies Policy",
                                    style: TextStyle(
                                        fontSize:
                                            2.40 * SizeConfig.textMultiplier,
                                        color: Colors.orange,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.95 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text: Strings.cookiesPolicy,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: robot,
                                              fontSize: 1.2 *
                                                  SizeConfig.textMultiplier),
                                        ),
                                      )),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.fiber_manual_record),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                              text: "AllAboutCookies:",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: robot,
                                                  fontSize: 1.2 *
                                                      SizeConfig
                                                          .textMultiplier),
                                              children: [
                                                TextSpan(
                                                  text:
                                                      "http://www.allaboutcookies.org/",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.blue),
                                                  recognizer:
                                                      new TapGestureRecognizer()
                                                        ..onTap = () {
                                                          launch(
                                                              'http://www.allaboutcookies.org/');
                                                        },
                                                )
                                              ]),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.fiber_manual_record),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                              text:
                                                  "Network Advertising Initiative:",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: robot,
                                                  fontSize: 1.2 *
                                                      SizeConfig
                                                          .textMultiplier),
                                              children: [
                                                TextSpan(
                                                  text:
                                                      "http://www.networkadvertising.org/",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.blue),
                                                  recognizer:
                                                      new TapGestureRecognizer()
                                                        ..onTap = () {
                                                          launch(
                                                              'http://www.networkadvertising.org/');
                                                        },
                                                )
                                              ]),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                ],
                              )),

                          //left
                          CircleAmigo(
                            bottomCircleAmigoPosition:
                                18.2 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -10.16 * SizeConfig.heightMultiplier,
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
                                15 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -13.41 * SizeConfig.heightMultiplier,
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
                                11.71 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -16.67 * SizeConfig.heightMultiplier,
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
                                -2.20 * SizeConfig.heightMultiplier,
                            rightCircleAmigoPosition:
                                -7.16 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                15.02 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                15.02 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -5.46 * SizeConfig.heightMultiplier,
                            rightCircleAmigoPosition:
                                -10.41 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                22.53 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                22.53 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -8.71 * SizeConfig.heightMultiplier,
                            rightCircleAmigoPosition:
                                -13.67 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                30.04 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                30.04 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                        ],
                      ),
                    ),
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

class MobileCookiePage extends StatefulWidget {
  @override
  _MobileCookiePageState createState() => _MobileCookiePageState();
}

class _MobileCookiePageState extends State<MobileCookiePage> {
  ScrollController _controller;

  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    super.initState();
  }

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
              trailing: FlatButton(
                child: Icon(
                  Icons.close,
                  color: AmigoColors.gray,
                ),
                onPressed: () => Navigator.pop(context),
              ),
              title: Text(
                'Mindamigo',
                style: TextStyle(
                    fontSize: 4.27 * SizeConfig.textMultiplier,
                    color: AmigoColors.gray,
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
                    color: AmigoColors.gray,
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
                    color: AmigoColors.gray,
                    fontFamily: robot,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pushNamed(context, AboutUsRoute);
              },
            ),
            ListTile(
              title: Text(
                'PodCast',
                style: TextStyle(
                    fontSize: 4.27 * SizeConfig.textMultiplier,
                    color: AmigoColors.gray,
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
                    color: AmigoColors.gray,
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
          controller: _controller,
          child: Container(
            child: Column(
              children: [
                GradientLine(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(
                              top: 6.51 * SizeConfig.heightMultiplier),
                          width: MediaQuery.of(context).size.width / 1.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cookies Policy",
                                style: TextStyle(
                                    fontSize: 2.40 * SizeConfig.textMultiplier,
                                    color: Colors.orange,
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                  margin: EdgeInsets.only(
                                      top: 1.95 * SizeConfig.heightMultiplier),
                                  child: RichText(
                                    text: TextSpan(
                                      text: Strings.cookiesPolicy,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: robot,
                                          fontSize:
                                              1.2 * SizeConfig.textMultiplier),
                                    ),
                                  )),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.fiber_manual_record),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          text: "AllAboutCookies:",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: robot,
                                              fontSize: 1.2 *
                                                  SizeConfig.textMultiplier),
                                          children: [
                                            TextSpan(
                                              text:
                                                  "http://www.allaboutcookies.org/",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                              recognizer:
                                                  new TapGestureRecognizer()
                                                    ..onTap = () {
                                                      launch(
                                                          'http://www.allaboutcookies.org/');
                                                    },
                                            )
                                          ]),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.fiber_manual_record),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          text:
                                              "Network Advertising Initiative:",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: robot,
                                              fontSize: 1.2 *
                                                  SizeConfig.textMultiplier),
                                          children: [
                                            TextSpan(
                                              text:
                                                  "http://www.networkadvertising.org/",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                              recognizer:
                                                  new TapGestureRecognizer()
                                                    ..onTap = () {
                                                      launch(
                                                          'http://www.networkadvertising.org/');
                                                    },
                                            )
                                          ]),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                            ],
                          )),

                      //left
                      CircleAmigo(
                        bottomCircleAmigoPosition:
                            18.2 * SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition:
                            -10.16 * SizeConfig.heightMultiplier,
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
                            15 * SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition:
                            -13.41 * SizeConfig.heightMultiplier,
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
                            11.71 * SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition:
                            -16.67 * SizeConfig.heightMultiplier,
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
                            -2.20 * SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition:
                            -7.16 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 15.02 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 15.02 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        topCircleAmigoPosition:
                            -5.46 * SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition:
                            -10.41 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 22.53 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 22.53 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        topCircleAmigoPosition:
                            -8.71 * SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition:
                            -13.67 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 30.04 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 30.04 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                    ],
                  ),
                ),
                BottomNav(),
              ],
            ),
          ),
        ));
  }
}
