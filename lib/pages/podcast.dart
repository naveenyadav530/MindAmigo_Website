import 'dart:html';

import 'package:flutter/material.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/responsiveLayout.dart';
import 'package:mindamigo/utils/size_config.dart';
import 'package:mindamigo/widgets/bottombar.dart';
import 'package:mindamigo/widgets/circles.dart';
import 'package:mindamigo/widgets/getInTouch.dart';
import 'package:mindamigo/widgets/gradientLine.dart';
import 'package:mindamigo/widgets/navbar.dart';
import 'package:mindamigo/widgets/newsletter.dart';

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

  
  String  src='''
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
                      height: 58.59 * SizeConfig.heightMultiplier,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Positioned(
                            top: 1 * SizeConfig.heightMultiplier,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(0.65 * SizeConfig.heightMultiplier))),
                              alignment: Alignment.center,
                              height: 25.06 * SizeConfig.heightMultiplier,
                              width: MediaQuery.of(context).size.width / 1.5,
                              child: Container(
                                height: MediaQuery.of(context).size.height,
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
                              )
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
                            circleAmigoHeight: 20.53 * SizeConfig.heightMultiplier,
                            circleAmigoWidth: 20.53 * SizeConfig.heightMultiplier,
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
                            circleAmigoHeight: 30.04 * SizeConfig.heightMultiplier,
                            circleAmigoWidth: 30.04 * SizeConfig.heightMultiplier,
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
                            circleAmigoHeight: 12.02 * SizeConfig.heightMultiplier,
                            circleAmigoWidth: 12.02 * SizeConfig.heightMultiplier,
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
                            circleAmigoHeight: 20.53 * SizeConfig.heightMultiplier,
                            circleAmigoWidth: 20.53 * SizeConfig.heightMultiplier,
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
                            circleAmigoHeight: 28.04 * SizeConfig.heightMultiplier,
                            circleAmigoWidth: 28.04 * SizeConfig.heightMultiplier,
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
                // Update the state of the app
                // ...
                // Then close the drawer
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
                // Update the state of the app
                // ...
                // Then close the drawer
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
                  height: 58.59 * SizeConfig.heightMultiplier,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        top: 5.20 * SizeConfig.heightMultiplier,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(
                                  0.65 * SizeConfig.heightMultiplier))),
                          alignment: Alignment.center,
                          height: 39.06 * SizeConfig.heightMultiplier,
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: Text(
                            Strings.podcastCenter,
                            style: TextStyle(
                                fontSize: 1.69 * SizeConfig.heightMultiplier,
                                fontFamily: robot,
                                fontWeight: FontWeight.bold),
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
