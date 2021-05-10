import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/responsiveLayout.dart';
import 'package:mindamigo/utils/size_config.dart';
import 'package:mindamigo/widgets/bottombar.dart';
import 'package:mindamigo/widgets/circles.dart';
import 'package:mindamigo/widgets/gradientLine.dart';
import 'package:mindamigo/widgets/navbar.dart';

import 'package:delayed_display/delayed_display.dart';

class TermsConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: WideTermsConditions(),
      webBody: WebTermsConditions(),
      mobileBody: MobileTermsConditions(),
    );
  }
}

class WideTermsConditions extends StatefulWidget {
  const WideTermsConditions({Key key}) : super(key: key);

  @override
  _WideTermsConditionsState createState() => _WideTermsConditionsState();
}

class _WideTermsConditionsState extends State<WideTermsConditions> {
  ScrollController _controller;

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
            child: Center(
              child: Container(
                width: 1440.0,
                child: Column(
                  children: [
                    NavBar(),
                    GradientLine(),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          //left
                          CircleAmigo(
                            bottomCircleAmigoPosition:
                            18.2 * SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition:
                            -10.16 * SizeConfig.heightMultiplier,
                            circleAmigoHeight:
                            13.02 * SizeConfig.heightMultiplier,
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
                            circleAmigoHeight:
                            19.53 * SizeConfig.heightMultiplier,
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
                            circleAmigoHeight:
                            26.04 * SizeConfig.heightMultiplier,
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
                            circleAmigoHeight:
                            15.02 * SizeConfig.heightMultiplier,
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
                            circleAmigoHeight:
                            22.53 * SizeConfig.heightMultiplier,
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
                            circleAmigoHeight:
                            30.04 * SizeConfig.heightMultiplier,
                            circleAmigoWidth: 30.04 * SizeConfig.heightMultiplier,
                            circleAmigoGradient: [
                              AmigoColors.orange,
                              AmigoColors.lightRed2
                            ],
                            circleAmigoOpacity: [0.1, 0.1],
                          ),

                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 4.25 * SizeConfig.heightMultiplier),
                            width: MediaQuery.of(context).size.width / 1.5,

                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom:
                                      2.25 * SizeConfig.heightMultiplier),
                                  child: ListTile(
                                    title: Text(
                                      "Terms and Conditions",
                                      style: TextStyle(
                                        fontSize: 2.40 *
                                            SizeConfig.heightMultiplier,
                                        color: Colors.orange,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "These Terms ",
                                    style: TextStyle(
                                        fontSize:
                                        1.62 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                  ),
                                ),
                                ListTile(
                                    title: RichText(
                                      text: TextSpan(
                                        text: 'What These terms Cover. ',
                                        style: TextStyle(
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              'These are the terms and conditions on which we supply products in the form of the Mindamigo app (the App) to you.',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig.textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight: FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom:
                                      3 * SizeConfig.heightMultiplier),
                                  child: ListTile(
                                      title: RichText(
                                        text: TextSpan(
                                          text: 'Why you should read them. ',
                                          style: TextStyle(
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: robot,
                                              color: AmigoColors.lightBlack),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                'Please read these terms carefully before you download the App. These terms tell you who we are, how we will provide the App to you, how you and we may change or end the contract, what to do if there is a problem and other important information. If you think that there is a mistake in these terms, please contact us to discuss.',
                                                style: TextStyle(
                                                    fontSize: 1.62 *
                                                        SizeConfig.textMultiplier,
                                                    fontFamily: robot,
                                                    fontWeight:
                                                    FontWeight.normal)),
                                          ],
                                        ),
                                      )),
                                ),
                                ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "1.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: Text(
                                    "INFORMATION ABOUT US AND HOW TO CONTACT US",
                                    style: TextStyle(
                                        fontSize:
                                        1.62 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                  ),
                                ),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "1.2",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: 'Who we are. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''We are Mindamigo Limited a company registered in England and Wales. Our company registration number is 11562829 and our registered office is at 130 Old Street, London, England, EC1V 9BD.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom:
                                      3 * SizeConfig.heightMultiplier),
                                  child: ListTile(
                                      leading: ExcludeSemantics(
                                        child: Text(
                                          "1.3.",
                                          style: TextStyle(
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: robot,
                                              color: AmigoColors.lightBlack),
                                        ),
                                      ),
                                      title: RichText(
                                        text: TextSpan(
                                          text: 'How to contact us. ',
                                          style: TextStyle(
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: robot,
                                              color: AmigoColors.lightBlack),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                '''You can contact us by telephoning our customer service team at 0115 772 0215 or by writing to us at info@mindamgio.com .''',
                                                style: TextStyle(
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot,
                                                    fontWeight:
                                                    FontWeight.normal)),
                                          ],
                                        ),
                                      )),
                                ),
                                ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "2.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: Text(
                                    "OUR CONTRACT WITH YOU",
                                    style: TextStyle(
                                        fontSize:
                                        1.62 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                  ),
                                ),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "2.1.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'How we will accept your order. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''Our acceptance of your order will take place when we accept your request to download the App, at which point a contract will come into existence between you and us.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom:
                                      3 * SizeConfig.heightMultiplier),
                                  child: ListTile(
                                      leading: ExcludeSemantics(
                                        child: Text(
                                          "2.2.",
                                          style: TextStyle(
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: robot,
                                              color: AmigoColors.lightBlack),
                                        ),
                                      ),
                                      title: RichText(
                                        text: TextSpan(
                                          text:
                                          'If we cannot accept your order. ',
                                          style: TextStyle(
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: robot,
                                              color: AmigoColors.lightBlack),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                '''If we are unable to accept your order, we will inform you of this and will not charge you for the App.''',
                                                style: TextStyle(
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot,
                                                    fontWeight:
                                                    FontWeight.normal)),
                                          ],
                                        ),
                                      )),
                                ),
                                ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "3.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: Text(
                                    "YOUR RIGHTS TO MAKE CHANGES",
                                    style: TextStyle(
                                        fontSize:
                                        1.62 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom:
                                      3 * SizeConfig.heightMultiplier),
                                  child: ListTile(
                                      leading: ExcludeSemantics(
                                        child: Text(
                                          "",
                                          style: TextStyle(
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: robot,
                                              color: AmigoColors.lightBlack),
                                        ),
                                      ),
                                      title: RichText(
                                        text: TextSpan(
                                          text: '',
                                          style: TextStyle(
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: robot,
                                              color: AmigoColors.lightBlack),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                '''If you wish to make a change to the App or subscription you have ordered please make these changes are through the App. The changes you make are likely to change the price of the App and timing of payment.''',
                                                style: TextStyle(
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot,
                                                    fontWeight:
                                                    FontWeight.normal)),
                                          ],
                                        ),
                                      )),
                                ),
                                ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "4.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: Text(
                                    "OUR RIGHTS TO MAKE CHANGES",
                                    style: TextStyle(
                                        fontSize:
                                        1.62 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                  ),
                                ),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "4.1",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: 'Minor changes to the App. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''We may change the App:''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "4.1.1.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: '',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''to implement minor technical adjustments and improvements, for example to address a security threat. These changes will not affect your use of the App.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "4.1.2.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: '',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''to reflect changes in relevant laws and regulatory requirements; and''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom:
                                      3 * SizeConfig.heightMultiplier),
                                  child: ListTile(
                                      leading: ExcludeSemantics(
                                        child: Text(
                                          "4.2.",
                                          style: TextStyle(
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: robot,
                                              color: AmigoColors.lightBlack),
                                        ),
                                      ),
                                      title: RichText(
                                        text: TextSpan(
                                          text:
                                          'Changes and updates to the App.',
                                          style: TextStyle(
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: robot,
                                              color: AmigoColors.lightBlack),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                '''We may change, update or require you to update the App, provided that the App shall always match the description of it that we provided to you before you bought it. If we made any changes, we will notify you and you may then end the contract before the changes make effect, see clause 7.1.2 .''',
                                                style: TextStyle(
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot,
                                                    fontWeight:
                                                    FontWeight.normal)),
                                          ],
                                        ),
                                      )),
                                ),
                                ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "5.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: Text(
                                    "PROVIDING THE APP",
                                    style: TextStyle(
                                        fontSize:
                                        1.62 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                  ),
                                ),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "1.1.1.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: 'If we provide the free App. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''We will make the App available for download by you as soon as we accept your order.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "1.1.2.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'If we provide a subscription to the App. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''We will make the App features available for download as soon as we accept your order and payment is received. We will supply the App to you until you end the contract as described in clause 7 or we end the as described in clause 9 .''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "1.2.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'We are not responsible for delays outside our control. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''If our supply of the App is delayed by an event outside our control then we will contact you as soon as possible to let you know and we will take steps to minimise the effect of the delay. Provided we do this we will not be liable for delays caused by the event.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "5.1.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'What will happen if you do not give required information to us. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''We may need certain information from you so that we can supply the App to you, for example, user’s login information. We may request this information from you when you download the App or subscribe to the App. If you do not give us this information, you may be unable to create a subscription account.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "6.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: Text(
                                    "YOUR RIGHTS TO END THE CONTRACT",
                                    style: TextStyle(
                                        fontSize:
                                        1.62 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                  ),
                                ),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "6.1",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'You can always end your contract with us. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''Your rights when you end the contract will depend on whether there is anything wrong with it, how we are performing and when you decide to end the contract:''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "6.1.1.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'If what you have bought is faulty or misdescribed you may have a legal right to end the contract ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''(or to get the App repaired or replaced or to get some or all of your money back), see clause 10 ;''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "6.1.2.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'If you want to end the contract because of something we have done or have told you we are going to do, see',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: '''clause 7.2''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "6.1.3.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'If you have just changed your mind about the App, see',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: '''clause 7.3 ; and''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "6.1.4.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'In all other cases (if we are not at fault and there is no right to change your mind), see',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: '''clause 7.5 .''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "6.2.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'Ending the contract because of something we have done or are going to do.',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''If you are ending a contract for a reason set out at ( 7.2.1 ) to ( 7.2.3 ) below the contract will end immediately. The reasons are:''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "6.2.1.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: '',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''we have told you about an upcoming change to the App or these terms which you do not agree to, see clause 5.2 ;''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "6.2.2.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: '',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''we have told you about an error in the price or description of the App you have ordered and you do not wish to proceed; or''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "6.2.3.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: '',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''you have a legal right to end the contract because of something we have done wrong.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "6.3.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'Exercising your right to change your mind (Consumer Contracts Regulations 2013).',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''For most products bought online you have a legal right to change your mind within 14 days and receive a refund. These rights, under the Consumer Contracts Regulations 2013, are explained in more detail in these terms.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "6.4.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'How long do I have to change my mind?',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''You have 14 days after the day we accept your order, or, if earlier, until you start downloading. You agree that we may deliver the App to you immediately and you acknowledge that, if we do so then you will lose the right to change your mind as referred to in clause 7.3 .''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom:
                                      3 * SizeConfig.heightMultiplier),
                                  child: ListTile(
                                      leading: ExcludeSemantics(
                                        child: Text(
                                          "6.5.",
                                          style: TextStyle(
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: robot,
                                              color: AmigoColors.lightBlack),
                                        ),
                                      ),
                                      title: RichText(
                                        text: TextSpan(
                                          text:
                                          'Ending the contract where we are not at fault and there is no right to change your mind.',
                                          style: TextStyle(
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: robot,
                                              color: AmigoColors.lightBlack),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                '''Even if we are not at fault and you do not have a right to change your mind (see clause 7.1 ), you can still end the contract at any time (see clause 8.1 ).''',
                                                style: TextStyle(
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot,
                                                    fontWeight:
                                                    FontWeight.normal)),
                                          ],
                                        ),
                                      )),
                                ),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "7.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'HOW TO END THE CONTRACT WITH US (INCLUDING IF YOU HAVE CHANGED YOUR MIND)',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: '''''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "7.1",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: '',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''You can end the contract with us at any time directly through the Android Play store or Apple App store.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "7.2",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: '',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''You will not be entitled to receive a refund unless you are ending the contract in accordance to clause 7.1.1 .''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "8",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'OUR RIGHTS TO END THE CONTRACT',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: '''''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "8.1",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'We may end the contract if you break it.',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''We may end the contract for the App at any time if you do not make any payment to us when it is due.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "8.2",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: 'We may withdraw the App.',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''We may write to you to let you know that we are going to stop providing the App. We will let you know at least two weeks in advance of our stopping the supply of the App.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "9",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'IF THERE IS A PROBLEM WITH THE APP',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: '''''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "9.1",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'How to tell us about problems.',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''If you have any questions or complaints about the App, please contact us. You can telephone our customer service team at 0115 772 0215 or write to us at info@mindamigo.com or 16 Commerce Square, Lace Market, Nottingham, NG1 1HS.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "9.2",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: 'Summary of your legal rights.',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''We are under a legal duty to supply the App that is in conformity with this contract. See the box below for a summary of your key legal rights in relation to the App. Nothing in these terms will affect your legal rights.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                Container(
                                  margin: const EdgeInsets.all(30.0),
                                  padding: const EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                      border: Border
                                          .all()), //             <--- BoxDecoration here
                                  child: RichText(
                                    text: TextSpan(
                                      text:
                                      'Summary of your key legal rights\n\n',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: Strings.termsPage1,
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                FontWeight.normal)),
                                      ],
                                    ),
                                  ),
                                ),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "11.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: 'PRICE AND PAYMENT',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "11.1",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'Where to find the price for the App.',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''The price of the App (which includes VAT) will be the price indicated on the order pages when you placed your order. We use our best efforts to ensure that the price of the App advised to you is correct. However please see clause 11.2 for what happens if we discover an error in the price of the App you order.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "11.2",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'What happens if we got the price wrong. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''It is always possible that, despite our best efforts, the App we sell may be incorrectly priced. We will normally check prices before accepting your order so that, where the App’s correct price at your order date is less than our stated price at your order date, we will charge the lower amount. If the App&#39;s correct price at your order date is higher than the price stated to you, we will contact you for your instructions before we accept your order.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "11.3",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'When you must pay and how you must pay. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''We accept payment through the Apple App store or Android Play store. When you must pay depends on what App you are buying:''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "11.4",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: '',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              'For the App, you are not required to pay for the App.',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "11.4.1",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: '',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''For subscriptions, you must pay in advance according to the plan you select when you begin the subscription. Unless stated otherwise, the fee will be payable in monthly instalments in advance, with the first payment being made at the commencement of the subscription. Where any fees are stated as weekly amounts, the amount due each month shall be calculated on the basis of a 52-week year with payments spread evenly across the 12 months. Where any fees are stated as yearly amounts, the amount due each year shall be paid in advance of that year, with the first payment being made at the commencement of the subscription. Your subscription will continue until the contract is brought to an end by you or us.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "11.5.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'What to do if you think an invoice is wrong. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''If you think an invoice is wrong please contact us promptly to let us know.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "12.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'OUR RESPONSIBILITY FOR LOSS OR DAMAGE SUFFERED BY YOU ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: '''''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "12.1",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'We are responsible to you for foreseeable loss and damage caused by us. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''If we fail to comply with these terms, we are responsible for loss or damage you suffer that is a foreseeable result of our breaking this contract or our failing to use reasonable care and skill, but we are not responsible for any loss or damage that is not foreseeable. Loss or damage is foreseeable if either it is obvious that it will happen or if, at the time the contract was made, both we and you knew it might happen, for example, if you discussed it with us during the sales process.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "12.2",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'We do not exclude or limit in any way our liability to you where it would be unlawful to do so.',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''This includes liability for death or personal injury caused by our negligence or the negligence of our employees, agents or subcontractors; for fraud or fraudulent misrepresentation; for breach of your legal rights in relation to the App as summarised at clause 10.2 .''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "12.3",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'When we are liable for damage to your property. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''If the App we have supplied is defective and damages a device or digital content belonging to you and this is caused by our failure to use reasonable care and skill we will either repair the damage or pay you compensation. However, we will not be liable for damage which you could have avoided by following our advice to apply an update offered to you free of charge or for damage which was caused by you failing to correctly follow installation instructions or to have in place the minimum system requirements advised by us.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "12.4",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'We are not liable for business losses. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''We only supply the App for domestic and private use. If you use the App for any commercial, business or re-sale purpose we will have no liability to you for any loss of profit, loss of business, business interruption, or loss of business opportunity.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "13.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'HOW WE MAY USE YOUR PERSONAL INFORMATION ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: '''''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'How we may use your personal information. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''We will only use your personal information as set out in our Privacy Policy.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "14",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: 'OTHER IMPORTANT TERMS ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: '''''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "14.1",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'We may transfer this Agreement to someone else. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''We may transfer our rights and obligations under these terms to another organisation. We will contact you to let you know if we plan to do this. If you are unhappy with the transfer you may end the contract, see clause 7.1.2 .''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "14.2",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'You need our consent to transfer your rights to someone else. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''You may only transfer your rights or your obligations under these terms to another person if we agree to this in writing.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "14.3",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'Nobody else has any rights under this contract. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''This contract is between you and us. No other person shall have any rights to enforce any of its terms.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "14.4",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'If a court finds part of this contract illegal, the rest will continue in force. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: '''''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "14.5",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'Even if we delay in enforcing this contract, we can still enforce it later. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: '''''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                                ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "14.6",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                        'Which laws apply to this contract and where you may bring legal proceedings. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                              '''These terms are governed by English law and you can bring legal proceedings in respect of the App in the English courts.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
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
      ),
    ]);
  }
}

class WebTermsConditions extends StatefulWidget {
  @override
  _WebTermsConditionsState createState() => _WebTermsConditionsState();
}

class _WebTermsConditionsState extends State<WebTermsConditions> {
  ScrollController _controller;

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
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        //left
                        CircleAmigo(
                          bottomCircleAmigoPosition:
                              18.2 * SizeConfig.heightMultiplier,
                          leftCircleAmigoPosition:
                              -10.16 * SizeConfig.heightMultiplier,
                          circleAmigoHeight:
                              13.02 * SizeConfig.heightMultiplier,
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
                          circleAmigoHeight:
                              19.53 * SizeConfig.heightMultiplier,
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
                          circleAmigoHeight:
                              26.04 * SizeConfig.heightMultiplier,
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
                          circleAmigoHeight:
                              15.02 * SizeConfig.heightMultiplier,
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
                          circleAmigoHeight:
                              22.53 * SizeConfig.heightMultiplier,
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
                          circleAmigoHeight:
                              30.04 * SizeConfig.heightMultiplier,
                          circleAmigoWidth: 30.04 * SizeConfig.heightMultiplier,
                          circleAmigoGradient: [
                            AmigoColors.orange,
                            AmigoColors.lightRed2
                          ],
                          circleAmigoOpacity: [0.1, 0.1],
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 4.25 * SizeConfig.heightMultiplier),
                          width: MediaQuery.of(context).size.width / 1.5,

                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom:
                                        2.25 * SizeConfig.heightMultiplier),
                                child: ListTile(
                                  title: Text(
                                    "Terms and Conditions",
                                    style: TextStyle(
                                      fontSize: 2.40 *
                                          SizeConfig.heightMultiplier,
                                      color: Colors.orange,
                                      fontFamily: robot,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "These Terms ",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              ListTile(
                                  title: RichText(
                                text: TextSpan(
                                  text: 'What These terms Cover. ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            'These are the terms and conditions on which we supply products in the form of the Mindamigo app (the App) to you.',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom:
                                        3 * SizeConfig.heightMultiplier),
                                child: ListTile(
                                    title: RichText(
                                  text: TextSpan(
                                    text: 'Why you should read them. ',
                                    style: TextStyle(
                                        fontSize: 1.62 *
                                            SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              'Please read these terms carefully before you download the App. These terms tell you who we are, how we will provide the App to you, how you and we may change or end the contract, what to do if there is a problem and other important information. If you think that there is a mistake in these terms, please contact us to discuss.',
                                          style: TextStyle(
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot,
                                              fontWeight:
                                                  FontWeight.normal)),
                                    ],
                                  ),
                                )),
                              ),
                              ListTile(
                                leading: ExcludeSemantics(
                                  child: Text(
                                    "1.",
                                    style: TextStyle(
                                        fontSize: 1.62 *
                                            SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                  ),
                                ),
                                title: Text(
                                  "INFORMATION ABOUT US AND HOW TO CONTACT US",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "1.2",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text: 'Who we are. ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''We are Mindamigo Limited a company registered in England and Wales. Our company registration number is 11562829 and our registered office is at 130 Old Street, London, England, EC1V 9BD.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom:
                                        3 * SizeConfig.heightMultiplier),
                                child: ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "1.3.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: 'How to contact us. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                                  '''You can contact us by telephoning our customer service team at 0115 772 0215 or by writing to us at info@mindamgio.com .''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                      FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                              ),
                              ListTile(
                                leading: ExcludeSemantics(
                                  child: Text(
                                    "2.",
                                    style: TextStyle(
                                        fontSize: 1.62 *
                                            SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                  ),
                                ),
                                title: Text(
                                  "OUR CONTRACT WITH YOU",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "2.1.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'How we will accept your order. ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''Our acceptance of your order will take place when we accept your request to download the App, at which point a contract will come into existence between you and us.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom:
                                        3 * SizeConfig.heightMultiplier),
                                child: ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "2.2.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                            'If we cannot accept your order. ',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                                  '''If we are unable to accept your order, we will inform you of this and will not charge you for the App.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                      FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                              ),
                              ListTile(
                                leading: ExcludeSemantics(
                                  child: Text(
                                    "3.",
                                    style: TextStyle(
                                        fontSize: 1.62 *
                                            SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                  ),
                                ),
                                title: Text(
                                  "YOUR RIGHTS TO MAKE CHANGES",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom:
                                        3 * SizeConfig.heightMultiplier),
                                child: ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: '',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                                  '''If you wish to make a change to the App or subscription you have ordered please make these changes are through the App. The changes you make are likely to change the price of the App and timing of payment.''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                      FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                              ),
                              ListTile(
                                leading: ExcludeSemantics(
                                  child: Text(
                                    "4.",
                                    style: TextStyle(
                                        fontSize: 1.62 *
                                            SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                  ),
                                ),
                                title: Text(
                                  "OUR RIGHTS TO MAKE CHANGES",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "4.1",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text: 'Minor changes to the App. ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''We may change the App:''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "4.1.1.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text: '',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''to implement minor technical adjustments and improvements, for example to address a security threat. These changes will not affect your use of the App.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "4.1.2.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text: '',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''to reflect changes in relevant laws and regulatory requirements; and''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom:
                                        3 * SizeConfig.heightMultiplier),
                                child: ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "4.2.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                            'Changes and updates to the App.',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                                  '''We may change, update or require you to update the App, provided that the App shall always match the description of it that we provided to you before you bought it. If we made any changes, we will notify you and you may then end the contract before the changes make effect, see clause 7.1.2 .''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                      FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                              ),
                              ListTile(
                                leading: ExcludeSemantics(
                                  child: Text(
                                    "5.",
                                    style: TextStyle(
                                        fontSize: 1.62 *
                                            SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                  ),
                                ),
                                title: Text(
                                  "PROVIDING THE APP",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "1.1.1.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text: 'If we provide the free App. ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''We will make the App available for download by you as soon as we accept your order.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "1.1.2.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'If we provide a subscription to the App. ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''We will make the App features available for download as soon as we accept your order and payment is received. We will supply the App to you until you end the contract as described in clause 7 or we end the as described in clause 9 .''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "1.2.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'We are not responsible for delays outside our control. ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''If our supply of the App is delayed by an event outside our control then we will contact you as soon as possible to let you know and we will take steps to minimise the effect of the delay. Provided we do this we will not be liable for delays caused by the event.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "5.1.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'What will happen if you do not give required information to us. ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''We may need certain information from you so that we can supply the App to you, for example, user’s login information. We may request this information from you when you download the App or subscribe to the App. If you do not give us this information, you may be unable to create a subscription account.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                leading: ExcludeSemantics(
                                  child: Text(
                                    "6.",
                                    style: TextStyle(
                                        fontSize: 1.62 *
                                            SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                  ),
                                ),
                                title: Text(
                                  "YOUR RIGHTS TO END THE CONTRACT",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "6.1",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'You can always end your contract with us. ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''Your rights when you end the contract will depend on whether there is anything wrong with it, how we are performing and when you decide to end the contract:''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "6.1.1.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'If what you have bought is faulty or misdescribed you may have a legal right to end the contract ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''(or to get the App repaired or replaced or to get some or all of your money back), see clause 10 ;''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "6.1.2.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'If you want to end the contract because of something we have done or have told you we are going to do, see',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '''clause 7.2''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "6.1.3.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'If you have just changed your mind about the App, see',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '''clause 7.3 ; and''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "6.1.4.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'In all other cases (if we are not at fault and there is no right to change your mind), see',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '''clause 7.5 .''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "6.2.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'Ending the contract because of something we have done or are going to do.',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''If you are ending a contract for a reason set out at ( 7.2.1 ) to ( 7.2.3 ) below the contract will end immediately. The reasons are:''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "6.2.1.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text: '',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''we have told you about an upcoming change to the App or these terms which you do not agree to, see clause 5.2 ;''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "6.2.2.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text: '',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''we have told you about an error in the price or description of the App you have ordered and you do not wish to proceed; or''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "6.2.3.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text: '',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''you have a legal right to end the contract because of something we have done wrong.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "6.3.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'Exercising your right to change your mind (Consumer Contracts Regulations 2013).',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''For most products bought online you have a legal right to change your mind within 14 days and receive a refund. These rights, under the Consumer Contracts Regulations 2013, are explained in more detail in these terms.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "6.4.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'How long do I have to change my mind?',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''You have 14 days after the day we accept your order, or, if earlier, until you start downloading. You agree that we may deliver the App to you immediately and you acknowledge that, if we do so then you will lose the right to change your mind as referred to in clause 7.3 .''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom:
                                        3 * SizeConfig.heightMultiplier),
                                child: ListTile(
                                    leading: ExcludeSemantics(
                                      child: Text(
                                        "6.5.",
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                      ),
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                            'Ending the contract where we are not at fault and there is no right to change your mind.',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: robot,
                                            color: AmigoColors.lightBlack),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                                  '''Even if we are not at fault and you do not have a right to change your mind (see clause 7.1 ), you can still end the contract at any time (see clause 8.1 ).''',
                                              style: TextStyle(
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier,
                                                  fontFamily: robot,
                                                  fontWeight:
                                                      FontWeight.normal)),
                                        ],
                                      ),
                                    )),
                              ),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "7.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'HOW TO END THE CONTRACT WITH US (INCLUDING IF YOU HAVE CHANGED YOUR MIND)',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '''''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "7.1",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text: '',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''You can end the contract with us at any time directly through the Android Play store or Apple App store.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "7.2",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text: '',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''You will not be entitled to receive a refund unless you are ending the contract in accordance to clause 7.1.1 .''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "8",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'OUR RIGHTS TO END THE CONTRACT',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '''''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "8.1",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'We may end the contract if you break it.',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''We may end the contract for the App at any time if you do not make any payment to us when it is due.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "8.2",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text: 'We may withdraw the App.',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''We may write to you to let you know that we are going to stop providing the App. We will let you know at least two weeks in advance of our stopping the supply of the App.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "9",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'IF THERE IS A PROBLEM WITH THE APP',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '''''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "9.1",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'How to tell us about problems.',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''If you have any questions or complaints about the App, please contact us. You can telephone our customer service team at 0115 772 0215 or write to us at info@mindamigo.com or 16 Commerce Square, Lace Market, Nottingham, NG1 1HS.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "9.2",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text: 'Summary of your legal rights.',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''We are under a legal duty to supply the App that is in conformity with this contract. See the box below for a summary of your key legal rights in relation to the App. Nothing in these terms will affect your legal rights.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              Container(
                                margin: const EdgeInsets.all(30.0),
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    border: Border
                                        .all()), //             <--- BoxDecoration here
                                child: RichText(
                                  text: TextSpan(
                                    text:
                                        'Summary of your key legal rights\n\n',
                                    style: TextStyle(
                                        fontSize: 1.62 *
                                            SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: Strings.termsPage1,
                                          style: TextStyle(
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot,
                                              fontWeight:
                                                  FontWeight.normal)),
                                    ],
                                  ),
                                ),
                              ),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "11.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text: 'PRICE AND PAYMENT',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "11.1",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'Where to find the price for the App.',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''The price of the App (which includes VAT) will be the price indicated on the order pages when you placed your order. We use our best efforts to ensure that the price of the App advised to you is correct. However please see clause 11.2 for what happens if we discover an error in the price of the App you order.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "11.2",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'What happens if we got the price wrong. ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''It is always possible that, despite our best efforts, the App we sell may be incorrectly priced. We will normally check prices before accepting your order so that, where the App’s correct price at your order date is less than our stated price at your order date, we will charge the lower amount. If the App&#39;s correct price at your order date is higher than the price stated to you, we will contact you for your instructions before we accept your order.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "11.3",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'When you must pay and how you must pay. ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''We accept payment through the Apple App store or Android Play store. When you must pay depends on what App you are buying:''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "11.4",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text: '',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                'For the App, you are not required to pay for the App.',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "11.4.1",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text: '',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''For subscriptions, you must pay in advance according to the plan you select when you begin the subscription. Unless stated otherwise, the fee will be payable in monthly instalments in advance, with the first payment being made at the commencement of the subscription. Where any fees are stated as weekly amounts, the amount due each month shall be calculated on the basis of a 52-week year with payments spread evenly across the 12 months. Where any fees are stated as yearly amounts, the amount due each year shall be paid in advance of that year, with the first payment being made at the commencement of the subscription. Your subscription will continue until the contract is brought to an end by you or us.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "11.5.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'What to do if you think an invoice is wrong. ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''If you think an invoice is wrong please contact us promptly to let us know.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "12.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'OUR RESPONSIBILITY FOR LOSS OR DAMAGE SUFFERED BY YOU ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '''''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "12.1",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'We are responsible to you for foreseeable loss and damage caused by us. ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''If we fail to comply with these terms, we are responsible for loss or damage you suffer that is a foreseeable result of our breaking this contract or our failing to use reasonable care and skill, but we are not responsible for any loss or damage that is not foreseeable. Loss or damage is foreseeable if either it is obvious that it will happen or if, at the time the contract was made, both we and you knew it might happen, for example, if you discussed it with us during the sales process.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "12.2",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'We do not exclude or limit in any way our liability to you where it would be unlawful to do so.',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''This includes liability for death or personal injury caused by our negligence or the negligence of our employees, agents or subcontractors; for fraud or fraudulent misrepresentation; for breach of your legal rights in relation to the App as summarised at clause 10.2 .''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "12.3",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'When we are liable for damage to your property. ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''If the App we have supplied is defective and damages a device or digital content belonging to you and this is caused by our failure to use reasonable care and skill we will either repair the damage or pay you compensation. However, we will not be liable for damage which you could have avoided by following our advice to apply an update offered to you free of charge or for damage which was caused by you failing to correctly follow installation instructions or to have in place the minimum system requirements advised by us.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "12.4",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'We are not liable for business losses. ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''We only supply the App for domestic and private use. If you use the App for any commercial, business or re-sale purpose we will have no liability to you for any loss of profit, loss of business, business interruption, or loss of business opportunity.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "13.",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'HOW WE MAY USE YOUR PERSONAL INFORMATION ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '''''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'How we may use your personal information. ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''We will only use your personal information as set out in our Privacy Policy.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "14",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text: 'OTHER IMPORTANT TERMS ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '''''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "14.1",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'We may transfer this Agreement to someone else. ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''We may transfer our rights and obligations under these terms to another organisation. We will contact you to let you know if we plan to do this. If you are unhappy with the transfer you may end the contract, see clause 7.1.2 .''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "14.2",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'You need our consent to transfer your rights to someone else. ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''You may only transfer your rights or your obligations under these terms to another person if we agree to this in writing.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "14.3",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'Nobody else has any rights under this contract. ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''This contract is between you and us. No other person shall have any rights to enforce any of its terms.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "14.4",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'If a court finds part of this contract illegal, the rest will continue in force. ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '''''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "14.5",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'Even if we delay in enforcing this contract, we can still enforce it later. ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '''''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                              ListTile(
                                  leading: ExcludeSemantics(
                                    child: Text(
                                      "14.6",
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                    ),
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text:
                                          'Which laws apply to this contract and where you may bring legal proceedings. ',
                                      style: TextStyle(
                                          fontSize: 1.62 *
                                              SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: robot,
                                          color: AmigoColors.lightBlack),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '''These terms are governed by English law and you can bring legal proceedings in respect of the App in the English courts.''',
                                            style: TextStyle(
                                                fontSize: 1.62 *
                                                    SizeConfig
                                                        .textMultiplier,
                                                fontFamily: robot,
                                                fontWeight:
                                                    FontWeight.normal)),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
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
    ]);
  }
}

class MobileTermsConditions extends StatefulWidget {
  @override
  _MobileTermsConditionsState createState() => _MobileTermsConditionsState();
}

class _MobileTermsConditionsState extends State<MobileTermsConditions> {
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
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    //left
                    CircleAmigo(
                      bottomCircleAmigoPosition:
                          18.2 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -6.16 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 8.02 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 8.02 * SizeConfig.heightMultiplier,
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
                          -11.41 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 14.53 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 14.53 * SizeConfig.heightMultiplier,
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
                          -14.67 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 21.04 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 21.04 * SizeConfig.heightMultiplier,
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
                      circleAmigoHeight: 10.02 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 10.02 * SizeConfig.heightMultiplier,
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
                      circleAmigoHeight: 18.53 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 18.53 * SizeConfig.heightMultiplier,
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
                      circleAmigoHeight: 25.04 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 25.04 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 3.25 * SizeConfig.heightMultiplier),
                      height: 75.10 * SizeConfig.heightMultiplier,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: ListView(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.52 * SizeConfig.heightMultiplier),
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: 2.25 * SizeConfig.heightMultiplier),
                            child: ListTile(
                              title: Text(
                                "Terms and Conditions",
                                style: TextStyle(
                                  fontSize: 2.40 * SizeConfig.heightMultiplier,
                                  color: Colors.orange,
                                  fontFamily: robot,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "These Terms ",
                              style: TextStyle(
                                  fontSize: 1.62 * SizeConfig.textMultiplier,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: robot,
                                  color: AmigoColors.lightBlack),
                            ),
                          ),
                          ListTile(
                              title: RichText(
                            text: TextSpan(
                              text: 'What These terms Cover. ',
                              style: TextStyle(
                                  fontSize: 1.62 * SizeConfig.textMultiplier,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: robot,
                                  color: AmigoColors.lightBlack),
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        'These are the terms and conditions on which we supply products in the form of the Mindamigo app (the App) to you.',
                                    style: TextStyle(
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.normal)),
                              ],
                            ),
                          )),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: 3 * SizeConfig.heightMultiplier),
                            child: ListTile(
                                title: RichText(
                              text: TextSpan(
                                text: 'Why you should read them. ',
                                style: TextStyle(
                                    fontSize: 1.62 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: robot,
                                    color: AmigoColors.lightBlack),
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                          'Please read these terms carefully before you download the App. These terms tell you who we are, how we will provide the App to you, how you and we may change or end the contract, what to do if there is a problem and other important information. If you think that there is a mistake in these terms, please contact us to discuss.',
                                      style: TextStyle(
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier,
                                          fontFamily: robot,
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            )),
                          ),
                          ListTile(
                            leading: ExcludeSemantics(
                              child: Text(
                                "1.",
                                style: TextStyle(
                                    fontSize: 1.62 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: robot,
                                    color: AmigoColors.lightBlack),
                              ),
                            ),
                            title: Text(
                              "INFORMATION ABOUT US AND HOW TO CONTACT US",
                              style: TextStyle(
                                  fontSize: 1.62 * SizeConfig.textMultiplier,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: robot,
                                  color: AmigoColors.lightBlack),
                            ),
                          ),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "1.2",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: 'Who we are. ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''We are Mindamigo Limited a company registered in England and Wales. Our company registration number is 11562829 and our registered office is at 130 Old Street, London, England, EC1V 9BD.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: 3 * SizeConfig.heightMultiplier),
                            child: ListTile(
                                leading: ExcludeSemantics(
                                  child: Text(
                                    "1.3.",
                                    style: TextStyle(
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                  ),
                                ),
                                title: RichText(
                                  text: TextSpan(
                                    text: 'How to contact us. ',
                                    style: TextStyle(
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''You can contact us by telephoning our customer service team at 0115 772 0215 or by writing to us at info@mindamgio.com .''',
                                          style: TextStyle(
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.normal)),
                                    ],
                                  ),
                                )),
                          ),
                          ListTile(
                            leading: ExcludeSemantics(
                              child: Text(
                                "2.",
                                style: TextStyle(
                                    fontSize: 1.62 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: robot,
                                    color: AmigoColors.lightBlack),
                              ),
                            ),
                            title: Text(
                              "OUR CONTRACT WITH YOU",
                              style: TextStyle(
                                  fontSize: 1.62 * SizeConfig.textMultiplier,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: robot,
                                  color: AmigoColors.lightBlack),
                            ),
                          ),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "2.1.",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: 'How we will accept your order. ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''Our acceptance of your order will take place when we accept your request to download the App, at which point a contract will come into existence between you and us.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: 3 * SizeConfig.heightMultiplier),
                            child: ListTile(
                                leading: ExcludeSemantics(
                                  child: Text(
                                    "2.2.",
                                    style: TextStyle(
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                  ),
                                ),
                                title: RichText(
                                  text: TextSpan(
                                    text: 'If we cannot accept your order. ',
                                    style: TextStyle(
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''If we are unable to accept your order, we will inform you of this and will not charge you for the App.''',
                                          style: TextStyle(
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.normal)),
                                    ],
                                  ),
                                )),
                          ),
                          ListTile(
                            leading: ExcludeSemantics(
                              child: Text(
                                "3.",
                                style: TextStyle(
                                    fontSize: 1.62 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: robot,
                                    color: AmigoColors.lightBlack),
                              ),
                            ),
                            title: Text(
                              "YOUR RIGHTS TO MAKE CHANGES",
                              style: TextStyle(
                                  fontSize: 1.62 * SizeConfig.textMultiplier,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: robot,
                                  color: AmigoColors.lightBlack),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: 3 * SizeConfig.heightMultiplier),
                            child: ListTile(
                                leading: ExcludeSemantics(
                                  child: Text(
                                    "",
                                    style: TextStyle(
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                  ),
                                ),
                                title: RichText(
                                  text: TextSpan(
                                    text: '',
                                    style: TextStyle(
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''If you wish to make a change to the App or subscription you have ordered please make these changes are through the App. The changes you make are likely to change the price of the App and timing of payment.''',
                                          style: TextStyle(
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.normal)),
                                    ],
                                  ),
                                )),
                          ),
                          ListTile(
                            leading: ExcludeSemantics(
                              child: Text(
                                "4.",
                                style: TextStyle(
                                    fontSize: 1.62 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: robot,
                                    color: AmigoColors.lightBlack),
                              ),
                            ),
                            title: Text(
                              "OUR RIGHTS TO MAKE CHANGES",
                              style: TextStyle(
                                  fontSize: 1.62 * SizeConfig.textMultiplier,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: robot,
                                  color: AmigoColors.lightBlack),
                            ),
                          ),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "4.1",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: 'Minor changes to the App. ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '''We may change the App:''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "4.1.1.",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: '',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''to implement minor technical adjustments and improvements, for example to address a security threat. These changes will not affect your use of the App.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "4.1.2.",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: '',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''to reflect changes in relevant laws and regulatory requirements; and''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: 3 * SizeConfig.heightMultiplier),
                            child: ListTile(
                                leading: ExcludeSemantics(
                                  child: Text(
                                    "4.2.",
                                    style: TextStyle(
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                  ),
                                ),
                                title: RichText(
                                  text: TextSpan(
                                    text: 'Changes and updates to the App.',
                                    style: TextStyle(
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''We may change, update or require you to update the App, provided that the App shall always match the description of it that we provided to you before you bought it. If we made any changes, we will notify you and you may then end the contract before the changes make effect, see clause 7.1.2 .''',
                                          style: TextStyle(
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.normal)),
                                    ],
                                  ),
                                )),
                          ),
                          ListTile(
                            leading: ExcludeSemantics(
                              child: Text(
                                "5.",
                                style: TextStyle(
                                    fontSize: 1.62 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: robot,
                                    color: AmigoColors.lightBlack),
                              ),
                            ),
                            title: Text(
                              "PROVIDING THE APP",
                              style: TextStyle(
                                  fontSize: 1.62 * SizeConfig.textMultiplier,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: robot,
                                  color: AmigoColors.lightBlack),
                            ),
                          ),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "1.1.1.",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: 'If we provide the free App. ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''We will make the App available for download by you as soon as we accept your order.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "1.1.2.",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'If we provide a subscription to the App. ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''We will make the App features available for download as soon as we accept your order and payment is received. We will supply the App to you until you end the contract as described in clause 7 or we end the as described in clause 9 .''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "1.2.",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'We are not responsible for delays outside our control. ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''If our supply of the App is delayed by an event outside our control then we will contact you as soon as possible to let you know and we will take steps to minimise the effect of the delay. Provided we do this we will not be liable for delays caused by the event.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "5.1.",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'What will happen if you do not give required information to us. ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''We may need certain information from you so that we can supply the App to you, for example, user’s login information. We may request this information from you when you download the App or subscribe to the App. If you do not give us this information, you may be unable to create a subscription account.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                            leading: ExcludeSemantics(
                              child: Text(
                                "6.",
                                style: TextStyle(
                                    fontSize: 1.62 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: robot,
                                    color: AmigoColors.lightBlack),
                              ),
                            ),
                            title: Text(
                              "YOUR RIGHTS TO END THE CONTRACT",
                              style: TextStyle(
                                  fontSize: 1.62 * SizeConfig.textMultiplier,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: robot,
                                  color: AmigoColors.lightBlack),
                            ),
                          ),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "6.1",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'You can always end your contract with us. ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''Your rights when you end the contract will depend on whether there is anything wrong with it, how we are performing and when you decide to end the contract:''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "6.1.1.",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'If what you have bought is faulty or misdescribed you may have a legal right to end the contract ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''(or to get the App repaired or replaced or to get some or all of your money back), see clause 10 ;''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "6.1.2.",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'If you want to end the contract because of something we have done or have told you we are going to do, see',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '''clause 7.2''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "6.1.3.",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'If you have just changed your mind about the App, see',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '''clause 7.3 ; and''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "6.1.4.",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'In all other cases (if we are not at fault and there is no right to change your mind), see',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '''clause 7.5 .''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "6.2.",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'Ending the contract because of something we have done or are going to do.',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''If you are ending a contract for a reason set out at ( 7.2.1 ) to ( 7.2.3 ) below the contract will end immediately. The reasons are:''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "6.2.1.",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: '',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''we have told you about an upcoming change to the App or these terms which you do not agree to, see clause 5.2 ;''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "6.2.2.",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: '',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''we have told you about an error in the price or description of the App you have ordered and you do not wish to proceed; or''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "6.2.3.",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: '',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''you have a legal right to end the contract because of something we have done wrong.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "6.3.",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'Exercising your right to change your mind (Consumer Contracts Regulations 2013).',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''For most products bought online you have a legal right to change your mind within 14 days and receive a refund. These rights, under the Consumer Contracts Regulations 2013, are explained in more detail in these terms.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "6.4.",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: 'How long do I have to change my mind?',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''You have 14 days after the day we accept your order, or, if earlier, until you start downloading. You agree that we may deliver the App to you immediately and you acknowledge that, if we do so then you will lose the right to change your mind as referred to in clause 7.3 .''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: 3 * SizeConfig.heightMultiplier),
                            child: ListTile(
                                leading: ExcludeSemantics(
                                  child: Text(
                                    "6.5.",
                                    style: TextStyle(
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                  ),
                                ),
                                title: RichText(
                                  text: TextSpan(
                                    text:
                                        'Ending the contract where we are not at fault and there is no right to change your mind.',
                                    style: TextStyle(
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: robot,
                                        color: AmigoColors.lightBlack),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''Even if we are not at fault and you do not have a right to change your mind (see clause 7.1 ), you can still end the contract at any time (see clause 8.1 ).''',
                                          style: TextStyle(
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.normal)),
                                    ],
                                  ),
                                )),
                          ),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "7.",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'HOW TO END THE CONTRACT WITH US (INCLUDING IF YOU HAVE CHANGED YOUR MIND)',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '''''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "7.1",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: '',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''You can end the contract with us at any time directly through the Android Play store or Apple App store.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "7.2",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: '',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''You will not be entitled to receive a refund unless you are ending the contract in accordance to clause 7.1.1 .''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "8",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: 'OUR RIGHTS TO END THE CONTRACT',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '''''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "8.1",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'We may end the contract if you break it.',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''We may end the contract for the App at any time if you do not make any payment to us when it is due.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "8.2",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: 'We may withdraw the App.',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''We may write to you to let you know that we are going to stop providing the App. We will let you know at least two weeks in advance of our stopping the supply of the App.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "9",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: 'IF THERE IS A PROBLEM WITH THE APP',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '''''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "9.1",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: 'How to tell us about problems.',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''If you have any questions or complaints about the App, please contact us. You can telephone our customer service team at 0115 772 0215 or write to us at info@mindamigo.com or 16 Commerce Square, Lace Market, Nottingham, NG1 1HS.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "9.2",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: 'Summary of your legal rights.',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''We are under a legal duty to supply the App that is in conformity with this contract. See the box below for a summary of your key legal rights in relation to the App. Nothing in these terms will affect your legal rights.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          Container(
                            margin: const EdgeInsets.all(30.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border
                                    .all()), //             <--- BoxDecoration here
                            child: RichText(
                              text: TextSpan(
                                text: 'Summary of your key legal rights\n\n',
                                style: TextStyle(
                                    fontSize: 1.62 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: robot,
                                    color: AmigoColors.lightBlack),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: Strings.termsPage1,
                                      style: TextStyle(
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier,
                                          fontFamily: robot,
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          ),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "11.",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: 'PRICE AND PAYMENT',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "11.1",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: 'Where to find the price for the App.',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''The price of the App (which includes VAT) will be the price indicated on the order pages when you placed your order. We use our best efforts to ensure that the price of the App advised to you is correct. However please see clause 11.2 for what happens if we discover an error in the price of the App you order.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "11.2",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'What happens if we got the price wrong. ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''It is always possible that, despite our best efforts, the App we sell may be incorrectly priced. We will normally check prices before accepting your order so that, where the App’s correct price at your order date is less than our stated price at your order date, we will charge the lower amount. If the App&#39;s correct price at your order date is higher than the price stated to you, we will contact you for your instructions before we accept your order.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "11.3",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'When you must pay and how you must pay. ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''We accept payment through the Apple App store or Android Play store. When you must pay depends on what App you are buying:''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "11.4",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: '',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            'For the App, you are not required to pay for the App.',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "11.4.1",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: '',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''For subscriptions, you must pay in advance according to the plan you select when you begin the subscription. Unless stated otherwise, the fee will be payable in monthly instalments in advance, with the first payment being made at the commencement of the subscription. Where any fees are stated as weekly amounts, the amount due each month shall be calculated on the basis of a 52-week year with payments spread evenly across the 12 months. Where any fees are stated as yearly amounts, the amount due each year shall be paid in advance of that year, with the first payment being made at the commencement of the subscription. Your subscription will continue until the contract is brought to an end by you or us.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "11.5.",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'What to do if you think an invoice is wrong. ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''If you think an invoice is wrong please contact us promptly to let us know.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "12.",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'OUR RESPONSIBILITY FOR LOSS OR DAMAGE SUFFERED BY YOU ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '''''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "12.1",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'We are responsible to you for foreseeable loss and damage caused by us. ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''If we fail to comply with these terms, we are responsible for loss or damage you suffer that is a foreseeable result of our breaking this contract or our failing to use reasonable care and skill, but we are not responsible for any loss or damage that is not foreseeable. Loss or damage is foreseeable if either it is obvious that it will happen or if, at the time the contract was made, both we and you knew it might happen, for example, if you discussed it with us during the sales process.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "12.2",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'We do not exclude or limit in any way our liability to you where it would be unlawful to do so.',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''This includes liability for death or personal injury caused by our negligence or the negligence of our employees, agents or subcontractors; for fraud or fraudulent misrepresentation; for breach of your legal rights in relation to the App as summarised at clause 10.2 .''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "12.3",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'When we are liable for damage to your property. ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''If the App we have supplied is defective and damages a device or digital content belonging to you and this is caused by our failure to use reasonable care and skill we will either repair the damage or pay you compensation. However, we will not be liable for damage which you could have avoided by following our advice to apply an update offered to you free of charge or for damage which was caused by you failing to correctly follow installation instructions or to have in place the minimum system requirements advised by us.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "12.4",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'We are not liable for business losses. ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''We only supply the App for domestic and private use. If you use the App for any commercial, business or re-sale purpose we will have no liability to you for any loss of profit, loss of business, business interruption, or loss of business opportunity.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "13.",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'HOW WE MAY USE YOUR PERSONAL INFORMATION ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '''''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'How we may use your personal information. ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''We will only use your personal information as set out in our Privacy Policy.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "14",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: 'OTHER IMPORTANT TERMS ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '''''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "14.1",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'We may transfer this Agreement to someone else. ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''We may transfer our rights and obligations under these terms to another organisation. We will contact you to let you know if we plan to do this. If you are unhappy with the transfer you may end the contract, see clause 7.1.2 .''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "14.2",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'You need our consent to transfer your rights to someone else. ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''You may only transfer your rights or your obligations under these terms to another person if we agree to this in writing.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "14.3",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'Nobody else has any rights under this contract. ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''This contract is between you and us. No other person shall have any rights to enforce any of its terms.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "14.4",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'If a court finds part of this contract illegal, the rest will continue in force. ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '''''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "14.5",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'Even if we delay in enforcing this contract, we can still enforce it later. ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '''''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text(
                                  "14.6",
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text:
                                      'Which laws apply to this contract and where you may bring legal proceedings. ',
                                  style: TextStyle(
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '''These terms are governed by English law and you can bring legal proceedings in respect of the App in the English courts.''',
                                        style: TextStyle(
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              BottomNav(),
            ],
          ),
        ),
      ),
    );
  }
}
