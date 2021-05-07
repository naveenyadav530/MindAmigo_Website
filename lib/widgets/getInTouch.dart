import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/utils/responsiveLayout.dart';
import 'package:mindamigo/utils/size_config.dart';

import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

import 'circles.dart';

class GetInTouch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      webBody: WebGetInTouch(),
      mobileBody: MobileGetInTouch(),
    );
  }
}

class WebGetInTouch extends StatefulWidget {
  @override
  _WebGetInTouchState createState() => _WebGetInTouchState();
}

class _WebGetInTouchState extends State<WebGetInTouch> {
  TextEditingController nameController = new TextEditingController();

  TextEditingController emailController = new TextEditingController();

  TextEditingController messageController = new TextEditingController();

  launchMailto() async {
    final mailtoLink = Mailto(
        to: ['info@mindamigo.com'],
        cc: [],
        subject: 'Mindamgio Website Query',
        body: 'Hi, I am ' +
            nameController.text +
            "\n I would like to get in touch regarding " +
            messageController.text);
    await launch('$mailtoLink');

    nameController.clear();
    emailController.clear();
    messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: AmigoColors.lightWhite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            margin:
                EdgeInsets.symmetric(vertical: 3 * SizeConfig.heightMultiplier),
            height: 25 * SizeConfig.heightMultiplier,
            width: MediaQuery.of(context).size.width / 1.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //get in touch
                Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Get In Touch",
                      style: TextStyle(
                          fontSize: 3.35 * SizeConfig.textMultiplier,
                          fontFamily: robot),
                    )),
                //text send us note
                Container(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                        text:
                            'Got a question or a mental health topic that you’d like to hear about in the podcast?',
                        style: TextStyle(
                            fontSize: 1.82 * SizeConfig.textMultiplier,
                            fontFamily: robot,
                            color: AmigoColors.lightBlack),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Send us a note below',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 1.82 * SizeConfig.textMultiplier,
                                  fontFamily: robot)),
                        ],
                      ),
                    )),
                //name and email
                Container(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                              alignment: Alignment.topLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        0.65 * SizeConfig.heightMultiplier,
                                        0.65 * SizeConfig.heightMultiplier,
                                        0,
                                        0.4 * SizeConfig.heightMultiplier),
                                    child: Text("Name",
                                        style: TextStyle(
                                            fontSize:
                                                1.2 * SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot)),
                                  ),
                                  Container(
                                    height: 3.60 * SizeConfig.heightMultiplier,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          isDense: true,
                                          filled: true,
                                          fillColor: Colors.white,
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black26),
                                              borderRadius: BorderRadius.all(Radius.circular(0.65 *
                                                  SizeConfig
                                                      .heightMultiplier))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                              borderRadius: BorderRadius.all(Radius.circular(0.65 *
                                                  SizeConfig
                                                      .heightMultiplier))),
                                          hintText: 'Adam Chadwick',
                                          hintStyle: TextStyle(
                                              fontSize: 1.1 * SizeConfig.textMultiplier,
                                              fontFamily: robot,
                                              color: Colors.black)),
                                      controller: nameController,
                                    ),
                                  )
                                ],
                              )),
                        ),
                        SizedBox(
                          width: 1.5 * SizeConfig.heightMultiplier,
                        ),
                        Expanded(
                          child: Container(
                              alignment: Alignment.topLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        0.65 * SizeConfig.heightMultiplier,
                                        0.65 * SizeConfig.heightMultiplier,
                                        0,
                                        0.4 * SizeConfig.heightMultiplier),
                                    child: Text("Email",
                                        style: TextStyle(
                                            fontSize:
                                                1.2 * SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot)),
                                  ),
                                  Container(
                                    height: 3.60 * SizeConfig.heightMultiplier,
                                    child: TextField(
                                      controller: emailController,
                                      decoration: InputDecoration(
                                          isDense: true,
                                          filled: true,
                                          fillColor: Colors.white,
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black26),
                                              borderRadius: BorderRadius.all(Radius.circular(0.65 *
                                                  SizeConfig
                                                      .heightMultiplier))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                              borderRadius: BorderRadius.all(Radius.circular(0.65 *
                                                  SizeConfig
                                                      .heightMultiplier))),
                                          hintText: 'example@abcd.com',
                                          hintStyle: TextStyle(
                                              fontSize: 1.1 * SizeConfig.textMultiplier,
                                              fontFamily: robot,
                                              color: Colors.black)),
                                    ),
                                  )
                                ],
                              )),
                        )
                      ],
                    )),

                Container(
                    margin: EdgeInsets.fromLTRB(
                        0.65 * SizeConfig.heightMultiplier,
                        0,
                        0,
                        0.4 * SizeConfig.heightMultiplier),
                    child: Text("Message",
                        style: TextStyle(
                            fontSize: 1.2 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.bold,
                            fontFamily: robot))),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 3.60 * SizeConfig.heightMultiplier,
                        width: MediaQuery.of(context).size.width / 2.5,
                        alignment: Alignment.center,
                        child: TextField(
                            controller: messageController,
                            decoration: InputDecoration(
                                isDense: true,
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black26),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(0.65 *
                                            SizeConfig.heightMultiplier))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(0.65 *
                                            SizeConfig.heightMultiplier))),
                                hintText: 'I would like to get in touch...',
                                hintStyle: TextStyle(
                                    fontSize: 1.1 * SizeConfig.textMultiplier,
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold))),
                      )),
                      SizedBox(
                        width: 1.3 * SizeConfig.heightMultiplier,
                      ),
                      Container(
                        height: 2.90 * SizeConfig.heightMultiplier,
                        width: 8.65 * SizeConfig.heightMultiplier,
                        child: ElevatedButton(
                          child: Text(
                            "Send",
                            style: TextStyle(
                                fontSize: 1.3 * SizeConfig.textMultiplier),
                          ),
                          onPressed: () {
                            launchMailto();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: AmigoColors.lightBlack,
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  0.65 * SizeConfig.heightMultiplier),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          //left
          CircleAmigo(
            bottomCircleAmigoPosition: -6.0 * SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -10.16 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          CircleAmigo(
            bottomCircleAmigoPosition: -9.0 * SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -13.41 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          CircleAmigo(
            bottomCircleAmigoPosition: -12.0 * SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -16.67 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),

          //right
          CircleAmigo(
            topCircleAmigoPosition: -2.20 * SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -7.16 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          CircleAmigo(
            topCircleAmigoPosition: -5.46 * SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -10.41 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          CircleAmigo(
            topCircleAmigoPosition: -8.71 * SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -13.67 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
        ],
      ),
    );
  }
}

class MobileGetInTouch extends StatefulWidget {
  @override
  _MobileGetInTouchState createState() => _MobileGetInTouchState();
}

class _MobileGetInTouchState extends State<MobileGetInTouch> {
  TextEditingController nameController = new TextEditingController();

  TextEditingController emailController = new TextEditingController();

  TextEditingController messageController = new TextEditingController();

  launchMailto() async {
    final mailtoLink = Mailto(
        to: ['info@mindamigo.com'],
        cc: [],
        subject: 'Mindamgio Website Query',
        body: 'Hi, I am ' +
            nameController.text +
            "\n I would like to get in touch regarding " +
            messageController.text);
    await launch('$mailtoLink');

    nameController.clear();
    emailController.clear();
    messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: AmigoColors.lightWhite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            margin:
                EdgeInsets.symmetric(vertical: 3 * SizeConfig.heightMultiplier),
            width: MediaQuery.of(context).size.width / 1.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //get in touch
                Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Get In Touch",
                      style: TextStyle(
                          fontSize: 3.35 * SizeConfig.textMultiplier,
                          fontFamily: robot),
                    )),
                //text send us note
                Container(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                        text:
                            'Got a question or a mental health topic that you’d like to hear about in the podcast?',
                        style: TextStyle(
                            fontSize: 1.82 * SizeConfig.textMultiplier,
                            fontFamily: robot,
                            color: AmigoColors.lightBlack),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Send us a note below',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 1.82 * SizeConfig.textMultiplier,
                                  fontFamily: robot)),
                        ],
                      ),
                    )),
                //name
                Container(
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 0.65 * SizeConfig.heightMultiplier),
                          child: Text("Name",
                              style: TextStyle(
                                  fontSize: 1.2 * SizeConfig.textMultiplier,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: robot)),
                        ),
                        Container(
                          height: 3.60 * SizeConfig.heightMultiplier,
                          child: TextField(
                            controller: nameController,
                            decoration: InputDecoration(
                                isDense: true,
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black26),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(0.65 *
                                            SizeConfig.heightMultiplier))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(0.65 *
                                            SizeConfig.heightMultiplier))),
                                hintText: 'Adam Chadwick',
                                hintStyle: TextStyle(
                                    fontSize: 1.1 * SizeConfig.textMultiplier,
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold)),
                          ),
                        )
                      ],
                    )),
                //email
                Container(
                    margin: EdgeInsets.only(top: 5),
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 0.65 * SizeConfig.heightMultiplier),
                          child: Text("Email",
                              style: TextStyle(
                                  fontSize: 1.2 * SizeConfig.textMultiplier,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: robot)),
                        ),
                        Container(
                          height: 3.60 * SizeConfig.heightMultiplier,
                          child: TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                                isDense: true,
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black26),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(0.65 *
                                            SizeConfig.heightMultiplier))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(0.65 *
                                            SizeConfig.heightMultiplier))),
                                hintText: 'example@abcd.com',
                                hintStyle: TextStyle(
                                    fontSize: 1.1 * SizeConfig.textMultiplier,
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold)),
                          ),
                        )
                      ],
                    )),
                //message
                Container(
                    margin: EdgeInsets.only(top: 5),
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 0.65 * SizeConfig.heightMultiplier),
                          child: Text("Message",
                              style: TextStyle(
                                  fontSize: 1.2 * SizeConfig.textMultiplier,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: robot)),
                        ),
                        Container(
                          height: 3.60 * SizeConfig.heightMultiplier,
                          child: TextField(
                            controller: messageController,
                            decoration: InputDecoration(
                                isDense: true,
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black26),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(0.65 *
                                            SizeConfig.heightMultiplier))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(0.65 *
                                            SizeConfig.heightMultiplier))),
                                hintText: 'I would like to get in touch...',
                                hintStyle: TextStyle(
                                    fontSize: 1.1 * SizeConfig.textMultiplier,
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold)),
                          ),
                        )
                      ],
                    )),
                Center(
                  child: Container(
                    height: 2.90 * SizeConfig.heightMultiplier,
                    width: 8.65 * SizeConfig.heightMultiplier,
                    margin: EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      child: Text(
                        "Send",
                        style: TextStyle(
                            fontSize: 1.3 * SizeConfig.textMultiplier),
                      ),
                      onPressed: () {
                        launchMailto();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: AmigoColors.lightBlack,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              0.65 * SizeConfig.heightMultiplier),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //left
          CircleAmigo(
            bottomCircleAmigoPosition: -6.0 * SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -10.16 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          CircleAmigo(
            bottomCircleAmigoPosition: -9.0 * SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -13.41 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          CircleAmigo(
            bottomCircleAmigoPosition: -12.0 * SizeConfig.heightMultiplier,
            leftCircleAmigoPosition: -16.67 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),

          //right
          CircleAmigo(
            topCircleAmigoPosition: -2.20 * SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -7.16 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          CircleAmigo(
            topCircleAmigoPosition: -5.46 * SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -10.41 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
          CircleAmigo(
            topCircleAmigoPosition: -8.71 * SizeConfig.heightMultiplier,
            rightCircleAmigoPosition: -13.67 * SizeConfig.heightMultiplier,
            circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
            circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
            circleAmigoOpacity: [0.1, 0.1],
          ),
        ],
      ),
    );
  }
}
