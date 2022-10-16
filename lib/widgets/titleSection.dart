import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/size_config.dart';

import '../styles/constants.dart';

class WideTitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 1920 / 1.12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30.72),
                    child: Text(
                      Strings.mindhelp,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,
                        fontSize: 41.47,
                        color: Color(0xffEC6C83),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30.72,
                    ),
                    child: Text(
                      Strings.therapist,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,
                        fontSize: 41.47,
                        color: Color(0xff707070),
                      ),
                    ),
                  ),
                  Container(
                    width: 562.17,
                    height: 122.88,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Positioned(
                          left: 44.85,
                          top: 5,
                          child: Text(
                            "Coming Soon...",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.72,
                              color: Color(0xff707070),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 44.85,
                          bottom: 0,
                          child: Row(
                            children: [
                              Image.asset(
                                bottomAppStore,
                                height: 46.08,
                              ),
                              Image.asset(
                                bottomPlayStore,
                                height: 69.12,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            width: 562.17,
                            height: 69.12,
                            color: Colors.white12.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //text
                ],
              )),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 22.42),
                  child: Image.asset(
                    "assets/images/titleSection.png",
                    height: 401.66,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 2.0 * SizeConfig.heightMultiplier),
                    child: Text(
                      Strings.mindhelp,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,
                        fontSize: 2.7 * SizeConfig.textMultiplier,
                        color: Color(0xffEC6C83),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 2.0 * SizeConfig.heightMultiplier,
                    ),
                    child: Text(
                      Strings.therapist,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,
                        fontSize: 2.7 * SizeConfig.textMultiplier,
                        color: Color(0xff707070),
                      ),
                    ),
                  ),
                  Container(
                    width: 36.60 * SizeConfig.heightMultiplier,
                    height: 8 * SizeConfig.heightMultiplier,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Positioned(
                          left: 2.92 * SizeConfig.heightMultiplier,
                          top: 5,
                          child: Text(
                            "Coming Soon...",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.bold,
                              fontSize: 2.0 * SizeConfig.textMultiplier,
                              color: Color(0xff707070),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 2.92 * SizeConfig.heightMultiplier,
                          bottom: 0,
                          child: Row(
                            children: [
                              Image.asset(
                                bottomAppStore,
                                height: 3.0 * SizeConfig.heightMultiplier,
                              ),
                              Image.asset(
                                bottomPlayStore,
                                height: 4.5 * SizeConfig.heightMultiplier,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            width: 36.60 * SizeConfig.heightMultiplier,
                            height: 4.5 * SizeConfig.heightMultiplier,
                            color: Colors.white12.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //text
                ],
              )),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: 1.46 * SizeConfig.heightMultiplier),
                  child: Image.asset(
                    "assets/images/titleSection.png",
                    height: 26.15 * SizeConfig.heightMultiplier,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TabTitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Text(
                  Strings.mindhelp,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontSize: 3 * SizeConfig.textMultiplier,
                    color: Color(0xffEC6C83),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 32,
                ),
                child: Text(
                  Strings.therapist,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontSize: 3 * SizeConfig.textMultiplier,
                    color: Color(0xff707070),
                  ),
                ),
              ),

              Container(
                width: 36.60 * SizeConfig.heightMultiplier,
                height: 8 * SizeConfig.heightMultiplier,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Positioned(
                      left: 40,
                      top: 5,
                      child: Text(
                        "Coming Soon...",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          fontSize: 2.25 * SizeConfig.textMultiplier,
                          color: Color(0xff707070),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 40,
                      bottom: 0,
                      child: Row(
                        children: [
                          Image.asset(
                            bottomAppStore,
                            height: 3.0 * SizeConfig.heightMultiplier,
                          ),
                          Image.asset(
                            bottomPlayStore,
                            height: 4.5 * SizeConfig.heightMultiplier,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: 36.60 * SizeConfig.heightMultiplier,
                        height: 4.5 * SizeConfig.heightMultiplier,
                        color: Colors.white12.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ),

              //text
            ],
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Image.asset(
                "assets/images/titleSection.png",
                height: 26.15 * SizeConfig.heightMultiplier,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class mobileTitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1 * SizeConfig.heightMultiplier),
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(bottom: 3.03 * SizeConfig.heightMultiplier),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/titleSection.png",
            height: 26.15 * SizeConfig.heightMultiplier,
          ),
          Text(
            Strings.mindhelp,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              fontSize: 3.15 * SizeConfig.textMultiplier,
              color: Color(0xffEC6C83),
            ),
          ),
          Text(
            Strings.therapist,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              fontSize: 3.13 * SizeConfig.textMultiplier,
              color: Color(0xff707070),
            ),
          ),
          Container(
            color: Colors.white12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Text(
                    "Coming Soon...",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      fontSize: 2.25 * SizeConfig.textMultiplier,
                      color: Color(0xff707070),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.5,
                  child: Image.asset(
                    bottomAppStore,
                    height: 3.0 * SizeConfig.heightMultiplier,
                  ),
                ),
                Opacity(
                  opacity: 0.5,
                  child: Image.asset(
                    bottomPlayStore,
                    height: 4.5 * SizeConfig.heightMultiplier,
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
