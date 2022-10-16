import 'package:flutter/material.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/utils/responsiveLayout.dart';
import 'package:mindamigo/utils/size_config.dart';

import '../styles/colors.dart';
import '../styles/constants.dart';
import 'dart:js' as js;

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: WideBottom(),
      webBody: WebBottom(),
      tabletBody: TabBottom(),
      mobileBody: MobileBottom(),
    );
  }
}

class WideBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AmigoColors.lightBrown,
      child: Center(
        child: Container(
          height: 300,
          constraints: BoxConstraints(maxWidth: 1920),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Positioned(
                  left: 230,
                  top: 50,
                  child: Text(
                    "Download the mindamigo app",
                    style: TextStyle(
                        color: AmigoColors.white,
                        fontSize: 37,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  left: 230,
                  top: 100,
                  child: Image.asset(
                    bottomAppStore,
                    fit: BoxFit.fill,
                    width: 147.45,
                    height: 50,
                  )),
              Positioned(
                  left: 220,
                  top: 148.83,
                  child: Image.asset(
                    bottomPlayStore,
                    fit: BoxFit.fill,
                    width: 170,
                    height: 70,
                  )),
              Positioned(
                left: 215.04,
                top: 92.16,
                child: Container(
                  alignment: Alignment.center,
                  height: 125,
                  width: 180,
                  color: AmigoColors.lightBrown.withOpacity(0.9),
                  child: Text(
                    "Coming soon",
                    style: TextStyle(
                      fontFamily: robot,
                      color: Colors.white,
                      fontSize: 30.72,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 400,
                  top: 98.30,
                  child: Text(
                    "Contact details",
                    style: TextStyle(
                        color: AmigoColors.lightRed2,
                        fontSize: 16.89,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  left: 400,
                  top: 121.34,
                  child: Text(
                    "info@mindamigo.com",
                    style: TextStyle(
                        color: AmigoColors.white,
                        fontSize: 16.89,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  left: 400,
                  top: 167.88,
                  child: InkWell(
                    onTap: () {
                      js.context.callMethod(
                          'open', ['https://www.instagram.com/mindamigo/']);
                    },
                    child: Image.asset(bottomInstagram,
                        fit: BoxFit.fill, width: 34.86, height: 34.86),
                  )),
              Positioned(
                  left: 450,
                  top: 167.88,
                  child: InkWell(
                    onTap: () {
                      js.context.callMethod(
                          'open', ['https://www.facebook.com/mindamigo']);
                    },
                    child: Image.asset(
                      bottomFacebook,
                      fit: BoxFit.fill,
                      width: 34.86,
                      height: 34.86,
                    ),
                  )),
              Positioned(
                  left: 500,
                  top: 167.88,
                  child: InkWell(
                    onTap: () {
                      js.context.callMethod('open', [
                        'https://www.youtube.com/channel/UChxDki9pZDQbbxule7j-IKw'
                      ]);
                    },
                    child: Image.asset(
                      bottomYoutube,
                      fit: BoxFit.fill,
                      width: 34.86,
                      height: 34.86,
                    ),
                  )),
              Positioned(
                  left: 230,
                  bottom: 49.152,
                  child: Text(
                    "\u00a9 2020 Mindamigo",
                    style: TextStyle(
                        fontSize: 16.89,
                        fontWeight: FontWeight.bold,
                        color: AmigoColors.white),
                  )),
              Positioned(
                  left: 400,
                  bottom: 49.15,
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, PrivacyPolicyRoute);
                      },
                      child: Text("Privacy Policy",
                          style: TextStyle(
                              fontSize: 16.89,
                              fontWeight: FontWeight.bold,
                              color: AmigoColors.lightRed2)))),
              Positioned(
                  left: 530,
                  bottom: 49.15,
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, TermsConditionRoute);
                      },
                      child: Text("Terms & Conditions",
                          style: TextStyle(
                              fontSize: 16.89,
                              fontWeight: FontWeight.bold,
                              color: AmigoColors.lightRed2)))),
              Positioned(
                  right: 300,
                  bottom: 0,
                  child: Image.asset(
                    bottomNavImage,
                    fit: BoxFit.fill,
                    width: 280,
                    height: 280,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class WebBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AmigoColors.lightBrown,
      child: Center(
        child: Container(
          height: 19.53 * SizeConfig.heightMultiplier,
          //constraints: BoxConstraints(maxWidth: 1920),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Positioned(
                  left: 14.97 * SizeConfig.heightMultiplier,
                  top: 3.2 * SizeConfig.heightMultiplier,
                  child: Text(
                    "Download the mindamigo app",
                    style: TextStyle(
                        color: AmigoColors.white,
                        fontSize: 2.4 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  left: 14.97 * SizeConfig.heightMultiplier,
                  top: 6.4 * SizeConfig.heightMultiplier,
                  child: Image.asset(
                    bottomAppStore,
                    fit: BoxFit.fill,
                    width: 9.6 * SizeConfig.heightMultiplier,
                    height: 3.2 * SizeConfig.heightMultiplier,
                  )),
              Positioned(
                  left: 14.3 * SizeConfig.heightMultiplier,
                  top: 9.69 * SizeConfig.heightMultiplier,
                  child: Image.asset(
                    bottomPlayStore,
                    fit: BoxFit.fill,
                    width: 11.06 * SizeConfig.heightMultiplier,
                    height: 4.5 * SizeConfig.heightMultiplier,
                  )),
              Positioned(
                left: 14 * SizeConfig.heightMultiplier,
                top: 6 * SizeConfig.heightMultiplier,
                child: Container(
                  alignment: Alignment.center,
                  height: 8.13 * SizeConfig.heightMultiplier,
                  width: 11.71 * SizeConfig.heightMultiplier,
                  color: AmigoColors.lightBrown.withOpacity(0.9),
                  child: Text(
                    "Coming soon",
                    style: TextStyle(
                      fontFamily: robot,
                      color: Colors.white,
                      fontSize: 2 * SizeConfig.textMultiplier,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 26.04 * SizeConfig.heightMultiplier,
                  top: 6.4 * SizeConfig.heightMultiplier,
                  child: Text(
                    "Contact details",
                    style: TextStyle(
                        color: AmigoColors.lightRed2,
                        fontSize: 1.10 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  left: 26.04 * SizeConfig.heightMultiplier,
                  top: 7.9 * SizeConfig.heightMultiplier,
                  child: Text(
                    "info@mindamigo.com",
                    style: TextStyle(
                        color: AmigoColors.white,
                        fontSize: 1.10 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  left: 26.04 * SizeConfig.heightMultiplier,
                  top: 10.93 * SizeConfig.heightMultiplier,
                  child: InkWell(
                    onTap: () {
                      js.context.callMethod(
                          'open', ['https://www.instagram.com/mindamigo/']);
                    },
                    child: Image.asset(bottomInstagram,
                        fit: BoxFit.fill,
                        width: 2.27 * SizeConfig.heightMultiplier,
                        height: 2.27 * SizeConfig.heightMultiplier),
                  )),
              Positioned(
                  left: 29.29 * SizeConfig.heightMultiplier,
                  top: 10.93 * SizeConfig.heightMultiplier,
                  child: InkWell(
                    onTap: () {
                      js.context.callMethod(
                          'open', ['https://www.facebook.com/mindamigo']);
                    },
                    child: Image.asset(
                      bottomFacebook,
                      fit: BoxFit.fill,
                      width: 2.27 * SizeConfig.heightMultiplier,
                      height: 2.27 * SizeConfig.heightMultiplier,
                    ),
                  )),
              Positioned(
                  left: 32.55 * SizeConfig.heightMultiplier,
                  top: 10.93 * SizeConfig.heightMultiplier,
                  child: InkWell(
                    onTap: () {
                      js.context.callMethod('open', [
                        'https://www.youtube.com/channel/UChxDki9pZDQbbxule7j-IKw'
                      ]);
                    },
                    child: Image.asset(
                      bottomYoutube,
                      fit: BoxFit.fill,
                      width: 2.27 * SizeConfig.heightMultiplier,
                      height: 2.27 * SizeConfig.heightMultiplier,
                    ),
                  )),
              Positioned(
                  left: 14.97 * SizeConfig.heightMultiplier,
                  bottom: 3.2 * SizeConfig.heightMultiplier,
                  child: Text(
                    "\u00a9 2020 Mindamigo",
                    style: TextStyle(
                        fontSize: 1.10 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.bold,
                        color: AmigoColors.white),
                  )),
              Positioned(
                  left: 26.04 * SizeConfig.heightMultiplier,
                  bottom: 3.2 * SizeConfig.heightMultiplier,
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, PrivacyPolicyRoute);
                      },
                      child: Text("Privacy Policy",
                          style: TextStyle(
                              fontSize: 1.10 * SizeConfig.textMultiplier,
                              fontWeight: FontWeight.bold,
                              color: AmigoColors.lightRed2)))),
              Positioned(
                  left: 35.80 * SizeConfig.heightMultiplier,
                  bottom: 3.2 * SizeConfig.heightMultiplier,
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, TermsConditionRoute);
                      },
                      child: Text("Terms & Conditions",
                          style: TextStyle(
                              fontSize: 1.10 * SizeConfig.textMultiplier,
                              fontWeight: FontWeight.bold,
                              color: AmigoColors.lightRed2)))),
              Positioned(
                  right: 19.53 * SizeConfig.heightMultiplier,
                  bottom: 0,
                  child: Image.asset(
                    bottomNavImage,
                    fit: BoxFit.fill,
                    width: 18.22 * SizeConfig.heightMultiplier,
                    height: 18.22 * SizeConfig.heightMultiplier,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class TabBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 19.53 * SizeConfig.heightMultiplier,
      color: AmigoColors.lightBrown,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Positioned(
              left: 14.97 * SizeConfig.heightMultiplier,
              top: 3.2 * SizeConfig.heightMultiplier,
              child: Text(
                "Download the mindamigo app",
                style: TextStyle(
                    color: AmigoColors.white,
                    fontSize: 2.4 * SizeConfig.textMultiplier,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              left: 14.97 * SizeConfig.heightMultiplier,
              top: 6.4 * SizeConfig.heightMultiplier,
              child: Image.asset(
                bottomAppStore,
                fit: BoxFit.fill,
                width: 9.6 * SizeConfig.heightMultiplier,
                height: 3.2 * SizeConfig.heightMultiplier,
              )),
          Positioned(
              left: 14.3 * SizeConfig.heightMultiplier,
              top: 9.69 * SizeConfig.heightMultiplier,
              child: Image.asset(
                bottomPlayStore,
                fit: BoxFit.fill,
                width: 11.06 * SizeConfig.heightMultiplier,
                height: 4.5 * SizeConfig.heightMultiplier,
              )),
          Positioned(
            left: 14 * SizeConfig.heightMultiplier,
            top: 6 * SizeConfig.heightMultiplier,
            child: Container(
              alignment: Alignment.center,
              height: 8.13 * SizeConfig.heightMultiplier,
              width: 11.71 * SizeConfig.heightMultiplier,
              color: AmigoColors.lightBrown.withOpacity(0.9),
              child: Text(
                "Coming soon",
                style: TextStyle(
                  fontFamily: robot,
                  color: Colors.white,
                  fontSize: 2 * SizeConfig.textMultiplier,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
              left: 26.04 * SizeConfig.heightMultiplier,
              top: 6.4 * SizeConfig.heightMultiplier,
              child: Text(
                "Contact details",
                style: TextStyle(
                    color: AmigoColors.lightRed2,
                    fontSize: 1.10 * SizeConfig.textMultiplier,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              left: 26.04 * SizeConfig.heightMultiplier,
              top: 7.9 * SizeConfig.heightMultiplier,
              child: Text(
                "info@mindamigo.com",
                style: TextStyle(
                    color: AmigoColors.white,
                    fontSize: 1.10 * SizeConfig.textMultiplier,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              left: 26.04 * SizeConfig.heightMultiplier,
              top: 10.93 * SizeConfig.heightMultiplier,
              child: InkWell(
                onTap: () {
                  js.context.callMethod(
                      'open', ['https://www.instagram.com/mindamigo/']);
                },
                child: Image.asset(bottomInstagram,
                    fit: BoxFit.fill,
                    width: 2.27 * SizeConfig.heightMultiplier,
                    height: 2.27 * SizeConfig.heightMultiplier),
              )),
          Positioned(
              left: 29.29 * SizeConfig.heightMultiplier,
              top: 10.93 * SizeConfig.heightMultiplier,
              child: InkWell(
                onTap: () {
                  js.context.callMethod(
                      'open', ['https://www.facebook.com/mindamigo']);
                },
                child: Image.asset(
                  bottomFacebook,
                  fit: BoxFit.fill,
                  width: 2.27 * SizeConfig.heightMultiplier,
                  height: 2.27 * SizeConfig.heightMultiplier,
                ),
              )),
          Positioned(
              left: 32.55 * SizeConfig.heightMultiplier,
              top: 10.93 * SizeConfig.heightMultiplier,
              child: InkWell(
                onTap: () {
                  js.context.callMethod('open', [
                    'https://www.youtube.com/channel/UChxDki9pZDQbbxule7j-IKw'
                  ]);
                },
                child: Image.asset(
                  bottomYoutube,
                  fit: BoxFit.fill,
                  width: 2.27 * SizeConfig.heightMultiplier,
                  height: 2.27 * SizeConfig.heightMultiplier,
                ),
              )),
          Positioned(
              left: 14.97 * SizeConfig.heightMultiplier,
              bottom: 3.2 * SizeConfig.heightMultiplier,
              child: Text(
                "\u00a9 2020 Mindamigo",
                style: TextStyle(
                    fontSize: 1.10 * SizeConfig.textMultiplier,
                    fontWeight: FontWeight.bold,
                    color: AmigoColors.white),
              )),
          Positioned(
              left: 26.04 * SizeConfig.heightMultiplier,
              bottom: 3.2 * SizeConfig.heightMultiplier,
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, PrivacyPolicyRoute);
                  },
                  child: Text("Privacy Policy",
                      style: TextStyle(
                          fontSize: 1.10 * SizeConfig.textMultiplier,
                          fontWeight: FontWeight.bold,
                          color: AmigoColors.lightRed2)))),
          Positioned(
              left: 35.80 * SizeConfig.heightMultiplier,
              bottom: 3.2 * SizeConfig.heightMultiplier,
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, TermsConditionRoute);
                  },
                  child: Text("Terms & Conditions",
                      style: TextStyle(
                          fontSize: 1.10 * SizeConfig.textMultiplier,
                          fontWeight: FontWeight.bold,
                          color: AmigoColors.lightRed2)))),
          Positioned(
              right: 1.53 * SizeConfig.heightMultiplier,
              bottom: 0,
              child: Image.asset(
                bottomNavImage,
                fit: BoxFit.fill,
                width: 18.22 * SizeConfig.heightMultiplier,
                height: 18.22 * SizeConfig.heightMultiplier,
              )),
        ],
      ),
    );
  }
}

class MobileBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 19.53 * SizeConfig.heightMultiplier,
      color: AmigoColors.lightBrown,
      child: Stack(
        children: [
          Positioned(
              left: 10.97 * SizeConfig.heightMultiplier,
              top: 3.2 * SizeConfig.heightMultiplier,
              child: Text(
                "Download the mindamigo app",
                style: TextStyle(
                    color: AmigoColors.white,
                    fontSize: 2.4 * SizeConfig.textMultiplier,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              left: 10.97 * SizeConfig.heightMultiplier,
              top: 6.4 * SizeConfig.heightMultiplier,
              child: Image.asset(
                bottomAppStore,
                fit: BoxFit.fill,
                width: 9.6 * SizeConfig.heightMultiplier,
                height: 3.2 * SizeConfig.heightMultiplier,
              )),
          Positioned(
              left: 10.3 * SizeConfig.heightMultiplier,
              top: 9.69 * SizeConfig.heightMultiplier,
              child: Image.asset(
                bottomPlayStore,
                fit: BoxFit.fill,
                width: 11.06 * SizeConfig.heightMultiplier,
                height: 4.5 * SizeConfig.heightMultiplier,
              )),
          Positioned(
            left: 10 * SizeConfig.heightMultiplier,
            top: 6 * SizeConfig.heightMultiplier,
            child: Container(
              alignment: Alignment.center,
              height: 8.13 * SizeConfig.heightMultiplier,
              width: 11.71 * SizeConfig.heightMultiplier,
              color: AmigoColors.lightBrown.withOpacity(0.9),
              child: Text(
                "Coming soon",
                style: TextStyle(
                  fontFamily: robot,
                  color: Colors.white,
                  fontSize: 2 * SizeConfig.textMultiplier,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
              left: 22.04 * SizeConfig.heightMultiplier,
              top: 6.4 * SizeConfig.heightMultiplier,
              child: Text(
                "Contact details",
                style: TextStyle(
                    color: AmigoColors.lightRed2,
                    fontSize: 1.10 * SizeConfig.textMultiplier,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              left: 22.04 * SizeConfig.heightMultiplier,
              top: 7.9 * SizeConfig.heightMultiplier,
              child: Text(
                "info@mindamigo.com",
                style: TextStyle(
                    color: AmigoColors.white,
                    fontSize: 1.10 * SizeConfig.textMultiplier,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              left: 22.04 * SizeConfig.heightMultiplier,
              top: 10.93 * SizeConfig.heightMultiplier,
              child: InkWell(
                onTap: () {
                  js.context.callMethod(
                      'open', ['https://www.instagram.com/mindamigo/']);
                },
                child: Image.asset(bottomInstagram,
                    fit: BoxFit.fill,
                    width: 2.27 * SizeConfig.heightMultiplier,
                    height: 2.27 * SizeConfig.heightMultiplier),
              )),
          Positioned(
              left: 25.29 * SizeConfig.heightMultiplier,
              top: 10.93 * SizeConfig.heightMultiplier,
              child: InkWell(
                onTap: () {
                  js.context.callMethod(
                      'open', ['https://www.facebook.com/mindamigo']);
                },
                child: Image.asset(
                  bottomFacebook,
                  fit: BoxFit.fill,
                  width: 2.27 * SizeConfig.heightMultiplier,
                  height: 2.27 * SizeConfig.heightMultiplier,
                ),
              )),
          Positioned(
              left: 28.55 * SizeConfig.heightMultiplier,
              top: 10.93 * SizeConfig.heightMultiplier,
              child: InkWell(
                onTap: () {
                  js.context.callMethod('open', [
                    'https://www.youtube.com/channel/UChxDki9pZDQbbxule7j-IKw'
                  ]);
                },
                child: Image.asset(
                  bottomYoutube,
                  fit: BoxFit.fill,
                  width: 2.27 * SizeConfig.heightMultiplier,
                  height: 2.27 * SizeConfig.heightMultiplier,
                ),
              )),
          Positioned(
              left: 10.97 * SizeConfig.heightMultiplier,
              bottom: 3.2 * SizeConfig.heightMultiplier,
              child: Text(
                "\u00a9 2020 Mindamigo",
                style: TextStyle(
                    fontSize: 1.10 * SizeConfig.textMultiplier,
                    fontWeight: FontWeight.bold,
                    color: AmigoColors.white),
              )),
          Positioned(
              left: 22.04 * SizeConfig.heightMultiplier,
              bottom: 3.2 * SizeConfig.heightMultiplier,
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, PrivacyPolicyRoute);
                  },
                  child: Text("Privacy Policy",
                      style: TextStyle(
                          fontSize: 1.10 * SizeConfig.textMultiplier,
                          fontWeight: FontWeight.bold,
                          color: AmigoColors.lightRed2)))),
          Positioned(
              left: 30.80 * SizeConfig.heightMultiplier,
              bottom: 3.2 * SizeConfig.heightMultiplier,
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, TermsConditionRoute);
                  },
                  child: Text("Terms & Conditions",
                      style: TextStyle(
                          fontSize: 1.10 * SizeConfig.textMultiplier,
                          fontWeight: FontWeight.bold,
                          color: AmigoColors.lightRed2)))),
        ],
      ),
    );
  }
}
