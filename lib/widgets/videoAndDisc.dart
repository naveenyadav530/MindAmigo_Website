import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/responsiveLayout.dart';
import 'package:mindamigo/utils/size_config.dart';

import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoDisc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: WideVideoDisc(),
      webBody: WebVideoDisc(),
      tabletBody: TabVideoDisc(),
      mobileBody: MobileVideoDisc(),
    );
  }
}

class WideVideoDisc extends StatefulWidget {
  @override
  _WideVideoDiscState createState() => _WideVideoDiscState();
}

class _WideVideoDiscState extends State<WideVideoDisc> {
  YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: 'qNCC4yweBrU',
      params: YoutubePlayerParams(
        playlist: [], // Defining custom playlist
        startAt: Duration(seconds: 30),
        showControls: true,
        showFullscreenButton: true,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AmigoColors.lightPink3,
      child: Center(
        child: Container(
          height: 500,
          constraints: BoxConstraints(maxWidth: 1920),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                left: 70,
                top: 70,
                bottom: 70,
                child: Container(
                  alignment: Alignment.center,
                  height: 400,
                  width: 600,
                  child: YoutubePlayerControllerProvider(
                      controller: _controller,
                      child: YoutubePlayerIFrame(
                        aspectRatio: 16 / 9,
                      )),
                ),

                //child: IndexVideoPlayer(MediaQuery.of(context).size)
              ),
              Positioned(
                  right: 70,
                  top: 70,
                  bottom: 70,
                  //main container
                  child: Container(
                    height: 400,
                    width: 600,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Image.asset(
                            commaUpper,
                            height: 100,
                            width: 50,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Image.asset(
                            commaLower,
                            height: 100,
                            width: 50,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            child: Text(
                              Strings.videDesc,
                              style: TextStyle(
                                  fontFamily: robot,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: AmigoColors.lightBrown),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

//web view
class WebVideoDisc extends StatefulWidget {
  @override
  _WebVideoDiscState createState() => _WebVideoDiscState();
}

class _WebVideoDiscState extends State<WebVideoDisc> {
  YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: 'qNCC4yweBrU',
      params: YoutubePlayerParams(
        playlist: [], // Defining custom playlist
        startAt: Duration(seconds: 30),
        showControls: true,
        showFullscreenButton: true,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AmigoColors.lightPink3,
      child: Center(
        child: Container(
          height: 32.55 * SizeConfig.heightMultiplier,
          //constraints: BoxConstraints(maxWidth: 1920),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                left: 70,
                top: 70,
                bottom: 70,
                child: Container(
                  alignment: Alignment.center,
                  height: 26.04 * SizeConfig.heightMultiplier,
                  width: 39.06 * SizeConfig.heightMultiplier,
                  child: YoutubePlayerControllerProvider(
                      controller: _controller,
                      child: YoutubePlayerIFrame(
                        aspectRatio: 16 / 9,
                      )),
                ),

                //child: IndexVideoPlayer(MediaQuery.of(context).size)
              ),
              Positioned(
                  right: 70,
                  top: 70,
                  bottom: 70,
                  //main container
                  child: Container(
                    height: 26.04 * SizeConfig.heightMultiplier,
                    width: 39.06 * SizeConfig.heightMultiplier,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Image.asset(
                            commaUpper,
                            height: 6.5 * SizeConfig.heightMultiplier,
                            width: 3.25 * SizeConfig.heightMultiplier,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Image.asset(
                            commaLower,
                            height: 6.5 * SizeConfig.heightMultiplier,
                            width: 3.25 * SizeConfig.heightMultiplier,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            child: Text(
                              Strings.videDesc,
                              style: TextStyle(
                                  fontFamily: robot,
                                  fontSize: 2.0 * SizeConfig.heightMultiplier,
                                  fontWeight: FontWeight.bold,
                                  color: AmigoColors.lightBrown),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

//tab View
class TabVideoDisc extends StatefulWidget {
  @override
  _TabVideoDiscState createState() => _TabVideoDiscState();
}

class _TabVideoDiscState extends State<TabVideoDisc> {
  YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: 'qNCC4yweBrU',
      params: YoutubePlayerParams(
        playlist: [], // Defining custom playlist
        startAt: Duration(seconds: 30),
        showControls: true,
        showFullscreenButton: true,
      ),
    );
    super.initState();
  }

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
            height: 26.04 * SizeConfig.heightMultiplier,
            width: 39.06 * SizeConfig.heightMultiplier,
            child: YoutubePlayerControllerProvider(
                controller: _controller,
                child: YoutubePlayerIFrame(
                  aspectRatio: 16 / 9,
                )),

            //child:IndexVideoPlayer(MediaQuery.of(context).size)
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            height: 26.04 * SizeConfig.heightMultiplier,
            width: 39.06 * SizeConfig.heightMultiplier,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/images/bottom_comma.png",
                    height: 6.5 * SizeConfig.heightMultiplier,
                    width: 3.25 * SizeConfig.heightMultiplier,
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Image.asset(
                    "assets/images/top_comma.png",
                    height: 6.5 * SizeConfig.heightMultiplier,
                    width: 3.25 * SizeConfig.heightMultiplier,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Text(
                      Strings.videDesc,
                      style: TextStyle(
                          fontFamily: robot,
                          fontSize: 2.0 * SizeConfig.heightMultiplier,
                          fontWeight: FontWeight.bold,
                          color: AmigoColors.lightBrown),
                    ),
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

//mobileview
class MobileVideoDisc extends StatefulWidget {
  @override
  _MobileVideoDiscState createState() => _MobileVideoDiscState();
}

class _MobileVideoDiscState extends State<MobileVideoDisc> {
  YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: 'qNCC4yweBrU',
      params: YoutubePlayerParams(
        playlist: [], // Defining custom playlist
        startAt: Duration(seconds: 30),
        showControls: true,
        showFullscreenButton: true,
      ),
    );
    super.initState();
  }

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
            height: 26.04 * SizeConfig.heightMultiplier,
            width: 39.06 * SizeConfig.heightMultiplier,
            child: YoutubePlayerControllerProvider(
                controller: _controller,
                child: YoutubePlayerIFrame(
                  aspectRatio: 16 / 9,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            height: 26.04 * SizeConfig.heightMultiplier,
            width: 39.06 * SizeConfig.heightMultiplier,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/images/bottom_comma.png",
                    height: 6.5 * SizeConfig.heightMultiplier,
                    width: 3.25 * SizeConfig.heightMultiplier,
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Image.asset(
                    "assets/images/top_comma.png",
                    height: 6.5 * SizeConfig.heightMultiplier,
                    width: 3.25 * SizeConfig.heightMultiplier,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Text(
                      Strings.videDesc,
                      style: TextStyle(
                          fontFamily: robot,
                          fontSize: 2.0 * SizeConfig.heightMultiplier,
                          fontWeight: FontWeight.bold,
                          color: AmigoColors.lightBrown),
                    ),
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
