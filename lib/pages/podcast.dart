import 'package:flutter/material.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/utils/responsiveLayout.dart';
import 'package:mindamigo/utils/size_config.dart';
import 'package:mindamigo/widgets/bottombar.dart';
import 'package:mindamigo/widgets/circles.dart';
import 'package:mindamigo/widgets/getInTouch.dart';
import 'package:mindamigo/widgets/gradientLine.dart';
import 'package:mindamigo/widgets/navbar.dart';
import 'package:mindamigo/widgets/newsletter.dart';

import 'package:delayed_display/delayed_display.dart';

//for podcast

import 'package:easy_web_view/easy_web_view.dart';

class PodCast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      webBody: WebPodCast(),
      mobileBody: MobilePodcast(),
    );
  }
}

class WebPodCast extends StatefulWidget {
  @override
  _WebPodCastState createState() => _WebPodCastState();
}

class _WebPodCastState extends State<WebPodCast> {
  ScrollController _controller;
  static ValueKey key = ValueKey('key_0');

  String src = '''
    <html>
    <head>
      
    </head>
    <body>
      <div id='buzzsprout-large-player-1324327' ></div>
    </body>
    <script type='text/javascript' charset='utf-8'  src='https://www.buzzsprout.com/1324327.js?container_id=buzzsprout-large-player-1324327&player=large'></script>
    
    </html>
  
  ''';

  @override
  void initState() {
    super.initState();
    //Initialize the  scrollController
    _controller = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
                      decoration: BoxDecoration(
                        // border: Border.all(color: Colors.black),
                        color: AmigoColors.cream,
                      ),
                      height: 50.59 * SizeConfig.heightMultiplier,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Positioned(
                            top: 5 * SizeConfig.heightMultiplier,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  // border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          0.65 * SizeConfig.heightMultiplier))),
                              alignment: Alignment.center,
                              height: 28 * SizeConfig.heightMultiplier,
                              width: MediaQuery.of(context).size.width / 1.5,
                              child: EasyWebView(
                                src: src,
                                onLoaded: () {
                                  print('LOADED');
                                },
                                isHtml: true,
                                webAllowFullScreen: true,
                                isMarkdown: false,
                                convertToWidgets: false,
                                key: key,
                                widgetsTextSelectable: false,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 6.51 * SizeConfig.heightMultiplier,
                            child: Container(
                                alignment: Alignment.topCenter,
                                width: MediaQuery.of(context).size.width / 1.8,
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: 'Available to listen on ',
                                    style: TextStyle(
                                        fontSize:
                                            1.69 * SizeConfig.heightMultiplier,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Spotify,',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.69 *
                                                  SizeConfig.heightMultiplier,
                                              fontFamily: robot,
                                              decoration:
                                                  TextDecoration.underline)),
                                      TextSpan(text: ' '),
                                      TextSpan(
                                          text: 'Apple Podcasts, ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.69 *
                                                  SizeConfig.heightMultiplier,
                                              fontFamily: robot,
                                              decoration:
                                                  TextDecoration.underline)),
                                      TextSpan(text: ' '),
                                      TextSpan(
                                          text: 'Google Podcasts ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.69 *
                                                  SizeConfig.heightMultiplier,
                                              fontFamily: robot,
                                              decoration:
                                                  TextDecoration.underline)),
                                      TextSpan(text: ' '),
                                      TextSpan(text: 'and '),
                                      TextSpan(text: ' '),
                                      TextSpan(
                                          text: 'RSS Feed',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.69 *
                                                  SizeConfig.heightMultiplier,
                                              fontFamily: robot,
                                              decoration:
                                                  TextDecoration.underline)),
                                    ],
                                  ),
                                ) /*Text(Strings.podcastBottom,textAlign: TextAlign.center,style: TextStyle(fontSize: 26, fontFamily: robot, fontWeight: FontWeight.bold))*/
                                ),
                          ),
                          //left

                          CircleAmigo(
                            topCircleAmigoPosition:
                                -0.40 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -13.41 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                20.53 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                20.53 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -4.41 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                                -18.67 * SizeConfig.heightMultiplier,
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

                          //right
                          CircleAmigo(
                            topCircleAmigoPosition:
                                -2.20 * SizeConfig.heightMultiplier,
                            rightCircleAmigoPosition:
                                -7.16 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                                12.02 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                12.02 * SizeConfig.heightMultiplier,
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
                                20.53 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                20.53 * SizeConfig.heightMultiplier,
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
                                28.04 * SizeConfig.heightMultiplier,
                            circleAmigoWidth:
                                28.04 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),
                        ],
                      )),
                  GetInTouch(),
                  NewsLetter(),
                  BottomNav(),
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}

class MobilePodcast extends StatefulWidget {
  @override
  _MobilePodcastState createState() => _MobilePodcastState();
}

class _MobilePodcastState extends State<MobilePodcast> {
  static ValueKey key = ValueKey('key_0');

  String src = '''
    <html>
    <head>
      
    </head>
    <body>
      <div id='buzzsprout-large-player-1324327' class="buzz"></div>
    </body>
    <script type='text/javascript' charset='utf-8'  src='https://www.buzzsprout.com/1324327.js?container_id=buzzsprout-large-player-1324327&player=large'></script>
    <style>
      #episode_playlist{
        background:red !important;
        height:500px !important;
      }
      </style>
    </html>
  
  ''';
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
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Drawer(
            elevation: 10,
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
                      color: Colors.grey,
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
                      color: AmigoColors.lightRed,
                      fontFamily: robot,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold),
                ),
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
                  height: 90.59 * SizeConfig.heightMultiplier,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CircleAmigo(
                        topCircleAmigoPosition:
                            -0.40 * SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition:
                            -13.41 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 15.53 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 15.53 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        topCircleAmigoPosition:
                            -4.41 * SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition:
                            -18.67 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 25.04 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 25.04 * SizeConfig.heightMultiplier,
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
                        circleAmigoHeight: 7.02 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 7.02 * SizeConfig.heightMultiplier,
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
                        circleAmigoHeight: 14.53 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 14.53 * SizeConfig.heightMultiplier,
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
                        circleAmigoHeight: 22.04 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 22.04 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      Positioned(
                        top: 5.20 * SizeConfig.heightMultiplier,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.all(Radius.circular(
                                  0.65 * SizeConfig.heightMultiplier))),
                          alignment: Alignment.center,
                          height: 67 * SizeConfig.heightMultiplier,
                          width: MediaQuery.of(context).size.width / 1,
                          child: Container(
                              height: MediaQuery.of(context).size.height,
                              child: EasyWebView(
                                src: src,
                                onLoaded: () {},
                                isHtml: true,
                                webAllowFullScreen: true,
                                isMarkdown: false,
                                convertToWidgets: false,
                                key: key,
                                widgetsTextSelectable: false,
                              )),
                        ),
                      ),
                      Positioned(
                        bottom: 6.51 * SizeConfig.heightMultiplier,
                        child: Container(
                            alignment: Alignment.topCenter,
                            width: MediaQuery.of(context).size.width / 1.8,
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'Available to listen on ',
                                style: TextStyle(
                                    fontSize:
                                        1.69 * SizeConfig.heightMultiplier,
                                    fontFamily: robot,
                                    color: AmigoColors.lightBlack),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Spotify,',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 1.69 *
                                              SizeConfig.heightMultiplier,
                                          fontFamily: robot,
                                          decoration:
                                              TextDecoration.underline)),
                                  TextSpan(text: ' '),
                                  TextSpan(
                                      text: 'Apple Podcasts, ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 1.69 *
                                              SizeConfig.heightMultiplier,
                                          fontFamily: robot,
                                          decoration:
                                              TextDecoration.underline)),
                                  TextSpan(text: ' '),
                                  TextSpan(
                                      text: 'Google Podcasts ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 1.69 *
                                              SizeConfig.heightMultiplier,
                                          fontFamily: robot,
                                          decoration:
                                              TextDecoration.underline)),
                                  TextSpan(text: ' '),
                                  TextSpan(text: 'and '),
                                  TextSpan(text: ' '),
                                  TextSpan(
                                      text: 'RSS Feed',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 1.69 *
                                              SizeConfig.heightMultiplier,
                                          fontFamily: robot,
                                          decoration:
                                              TextDecoration.underline)),
                                ],
                              ),
                            ) /*Text(Strings.podcastBottom,textAlign: TextAlign.center,style: TextStyle(fontSize: 26, fontFamily: robot, fontWeight: FontWeight.bold))*/
                            ),
                      ),
                      //left
                    ],
                  )),
              GetInTouch(),
              NewsLetter(),
              BottomNav(),
            ],
          ),
        ),
      ),
    );
  }
}
