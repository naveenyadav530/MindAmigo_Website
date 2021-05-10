import 'package:flutter/material.dart';
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

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: WidePrivacy(),
      webBody: WebPrivacy(),
      mobileBody: MobilePrivacy(),
    );
  }
}

class WidePrivacy extends StatefulWidget {
  const WidePrivacy({Key key}) : super(key: key);

  @override
  _WidePrivacyState createState() => _WidePrivacyState();
}

class _WidePrivacyState extends State<WidePrivacy> {
  ScrollController _controller;

  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Stack(
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
                            Container(
                                margin: EdgeInsets.only(
                                    top: 6.51 * SizeConfig.heightMultiplier),
                                width: MediaQuery.of(context).size.width / 1.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Privacy Policy",
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
                                            text: Strings.privacyPolicy1,
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'policy',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      decoration: TextDecoration
                                                          .underline,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                              TextSpan(
                                                  text:
                                                  '  and it is important that you read that information.'),
                                            ],
                                          ),
                                        )
                                      /*Text(Strings.privacyPolicy1, style: TextStyle(fontFamily: robot, fontSize: 25),),*/
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 1.65 *
                                                SizeConfig.heightMultiplier),
                                        child: RichText(
                                          text: TextSpan(
                                            text: Strings.privacyPolicy2,
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'policy',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      decoration: TextDecoration
                                                          .underline,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 1.65 *
                                                SizeConfig.heightMultiplier),
                                        child: RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'YES ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                              TextSpan(
                                                  text:
                                                  'I consent to the installation of the App for the purposes of personal use.'),
                                            ],
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 1.65 *
                                                SizeConfig.heightMultiplier),
                                        child: RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'NO ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                              TextSpan(
                                                  text:
                                                  'I do not consent to the installation of the App.'),
                                            ],
                                          ),
                                        )
                                      /*Text(Strings.privacyPolicy1, style: TextStyle(fontFamily: robot, fontSize: 25),),*/
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "How you can withdraw consent",
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        Strings.privacyPolicy3,
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "Introduction",
                                        style: TextStyle(
                                            color: AmigoColors.lightBlack,
                                            fontFamily: robot,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 1.65 *
                                                SizeConfig.heightMultiplier),
                                        child: RichText(
                                          text: TextSpan(
                                            text:
                                            "This policy (together with our ",
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Terms of Use',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      decoration: TextDecoration
                                                          .underline,
                                                      fontFamily: robot)),
                                              TextSpan(
                                                  text:
                                                  ') applies to your use of:'),
                                            ],
                                          ),
                                        )),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          3.25 * SizeConfig.heightMultiplier,
                                          1.62 * SizeConfig.heightMultiplier,
                                          0,
                                          1.62 * SizeConfig.heightMultiplier),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    1.2 *
                                                        SizeConfig
                                                            .heightMultiplier,
                                                    0.5 *
                                                        SizeConfig
                                                            .heightMultiplier,
                                                    1.62 *
                                                        SizeConfig
                                                            .heightMultiplier,
                                                    0),
                                                child: MyBullet(),
                                              ),
                                              Expanded(
                                                  child: RichText(
                                                    text: TextSpan(
                                                      text:
                                                      "Mindamigo mobile application software ",
                                                      style: TextStyle(
                                                          color:
                                                          AmigoColors.lightBlack,
                                                          fontFamily: robot,
                                                          fontSize: 1.62 *
                                                              SizeConfig
                                                                  .textMultiplier),
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                            text: "(App)",
                                                            style: TextStyle(
                                                                color: AmigoColors
                                                                    .lightBlack,
                                                                fontWeight:
                                                                FontWeight.bold,
                                                                fontSize: 1.62 *
                                                                    SizeConfig
                                                                        .textMultiplier,
                                                                fontFamily: robot)),
                                                        TextSpan(
                                                            text:
                                                            ' hosted on Apple App store and Android Play stores '),
                                                        TextSpan(
                                                            text: '(App Sites)',
                                                            style: TextStyle(
                                                                color: AmigoColors
                                                                    .lightBlack,
                                                                fontWeight:
                                                                FontWeight.bold,
                                                                fontSize: 1.62 *
                                                                    SizeConfig
                                                                        .textMultiplier,
                                                                fontFamily: robot)),
                                                        TextSpan(
                                                            text:
                                                            ', once you have downloaded a copy of the App onto your mobile telephone or handheld device '),
                                                        TextSpan(
                                                            text: '(Device)',
                                                            style: TextStyle(
                                                                color: AmigoColors
                                                                    .lightBlack,
                                                                fontWeight:
                                                                FontWeight.bold,
                                                                fontSize: 1.62 *
                                                                    SizeConfig
                                                                        .textMultiplier,
                                                                fontFamily: robot)),
                                                        TextSpan(text: '. \n'),
                                                      ],
                                                    ),
                                                  )),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    1.2 *
                                                        SizeConfig
                                                            .heightMultiplier,
                                                    0.5 *
                                                        SizeConfig
                                                            .heightMultiplier,
                                                    1.62 *
                                                        SizeConfig
                                                            .heightMultiplier,
                                                    0),
                                                child: MyBullet(),
                                              ),
                                              Expanded(
                                                  child: RichText(
                                                    text: TextSpan(
                                                      text:
                                                      "Any of the services accessible through the App ",
                                                      style: TextStyle(
                                                          color:
                                                          AmigoColors.lightBlack,
                                                          fontFamily: robot,
                                                          fontSize: 1.62 *
                                                              SizeConfig
                                                                  .textMultiplier),
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                            text: "(Services)",
                                                            style: TextStyle(
                                                                color: AmigoColors
                                                                    .lightBlack,
                                                                fontWeight:
                                                                FontWeight.bold,
                                                                fontSize: 1.62 *
                                                                    SizeConfig
                                                                        .textMultiplier,
                                                                fontFamily: robot)),
                                                        TextSpan(
                                                            text:
                                                            ' that is available on the App Site or other sites of ours '),
                                                        TextSpan(
                                                            text: '(Services Sites)',
                                                            style: TextStyle(
                                                                color: AmigoColors
                                                                    .lightBlack,
                                                                fontWeight:
                                                                FontWeight.bold,
                                                                fontSize: 1.62 *
                                                                    SizeConfig
                                                                        .textMultiplier,
                                                                fontFamily: robot)),
                                                        TextSpan(
                                                            text:
                                                            '. This policy sets out the basis on which any personal data we collect from you, or that you provide to us, will be processed by us. This App is not intended for children and we do not knowingly collect data relating to children. Please read the following carefully to understand our practices regarding your personal data and how we will treat it.'),
                                                      ],
                                                    ),
                                                  )),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                          0,
                                          0.65 * SizeConfig.heightMultiplier,
                                          0,
                                          0.65 * SizeConfig.heightMultiplier,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            text:
                                            'This policy is provided in a layered format so you can click through to the specific areas set out below. Alternatively, you can download a pdf version of the',
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'policy here',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      decoration: TextDecoration
                                                          .underline,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),
                                    //sdfsddf
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          0.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "Important information and who we are",
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          0.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        '''Mindamigo Limited is the controller and is responsible for your personal data (collectively referred to as "Company", "we", "us" or "our" in this policy).''',
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          0.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "We have appointed a data privacy manager. If you have any questions about this privacy policy, please contact them using the details set out below.",
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "Contact details",
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          0.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        Strings.privacyPolicy,
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "Changes to the privacy policy and your duty to inform us of changes",
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          0.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        Strings.privacyPolicy10,
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "Third party links",
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        Strings.privacyPolicy11,
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "The data we collect about you",
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        Strings.privacyPolicy12,
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "How is your personal data collected?",
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "We will collect and process the following data about you:",
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),

                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 1.65 *
                                                SizeConfig.heightMultiplier),
                                        child: RichText(
                                          text: TextSpan(
                                            text: "Information you give us. ",
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                  '''This is information (including Identity, Contact, and Marketing and Communications Data) you consent to giving us about you by filling in forms on the App Site and the Services Sites (together''',
                                                  style: TextStyle(
                                                      color:
                                                      AmigoColors.lightBlack,
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                              TextSpan(
                                                  text: " Our Sites), ",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                              TextSpan(
                                                  text:
                                                  '''or by corresponding with us (for example, by email or chat). It includes information you provide when you register to use the App Site, download or register an App, subscribe to any of our Services, search for an App or Service, make an in-App purchase, share data via an App&#39;s social media functions, enter a competition, promotion or survey, and when you report a problem with an App, our Services, or any of Our Sites. If you contact us, we will keep a record of that correspondence.''',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 1.65 *
                                                SizeConfig.heightMultiplier),
                                        child: RichText(
                                          text: TextSpan(
                                            text:
                                            "Information we collect about you and your device. ",
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                  '''Each time you visit one of Our Sites or use one of our Apps we will automatically collect personal data including Device, Content and Usage Data. We collect this data using cookies and other similar technologies. Please see our cookie policy [LINK] for further details. ''',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),

                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "Cookies",
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        Strings.privacyPolicy13,
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "How we use your personal data",
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        Strings.privacyPolicy14,
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "Purposes for which we will use your personal data",
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    //table
                                    Container(
                                      margin: EdgeInsets.all(
                                          1.46 * SizeConfig.heightMultiplier),
                                      child: Table(
                                        defaultColumnWidth: FixedColumnWidth(
                                            22 * SizeConfig.heightMultiplier),
                                        border: TableBorder.all(
                                            color: Colors.grey,
                                            style: BorderStyle.solid,
                                            width: 1),
                                        children: [
                                          TableRow(children: [
                                            Column(children: [
                                              Text(
                                                'Purpose/activity',
                                                style: TextStyle(
                                                    fontFamily: robot,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 2.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              )
                                            ]),
                                            Column(children: [
                                              Text(
                                                'Type of data',
                                                style: TextStyle(
                                                    fontFamily: robot,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 2.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              )
                                            ]),
                                            Column(children: [
                                              Text(
                                                'Lawful basis for processing',
                                                style: TextStyle(
                                                    fontFamily: robot,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 2.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              )
                                            ]),
                                          ]),
                                          TableRow(children: [
                                            Column(children: [
                                              Text(
                                                '''To install the App and register you as a new App user''',
                                                style: TextStyle(
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              )
                                            ]),
                                            Column(children: [
                                              Text(
                                                'Identity \n Contact \n Device',
                                                style: TextStyle(
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              )
                                            ]),
                                            Column(children: [
                                              Text(
                                                'Your consent',
                                                style: TextStyle(
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              )
                                            ]),
                                          ]),
                                          TableRow(children: [
                                            Column(children: [
                                              Text(
                                                'To process in-App purchases and deliver Services including managing payments and collecting money owed to us',
                                                style: TextStyle(
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              )
                                            ]),
                                            Column(children: [
                                              Text(
                                                'Identity \n\n Contact \n\n Transaction \n\n Device \n\n Marketing and Communications',
                                                style: TextStyle(
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              )
                                            ]),
                                            Column(children: [
                                              Text(
                                                '''Your consent Performance of a contract with you Necessary for our legitimate  interests (to recover debts due to us) ) This would not be necessary since service will not continue unless money has been received''',
                                                style: TextStyle(
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              )
                                            ]),
                                          ]),
                                          TableRow(children: [
                                            Column(children: [
                                              Text(
                                                '''To manage our relationship with you including notifying you of changes to the App or any Services''',
                                                style: TextStyle(
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              )
                                            ]),
                                            Column(children: [
                                              Text(
                                                '''Identity \n\n Contact \n\n Profile \n\n Marketing and Communications''',
                                                style: TextStyle(
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              )
                                            ]),
                                            Column(children: [
                                              Text(
                                                '''Your consent Performance of a contract with you Necessary for our legitimate interests (to keep records updated and to analyse how customers use our products/ Services) Necessary to comply with legal obligations (to inform you of any changes to our terms and conditions)''',
                                                style: TextStyle(
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              )
                                            ]),
                                          ]),
                                          TableRow(children: [
                                            Column(children: [
                                              Text(
                                                '''To enable you to participate in a prize draw, competition or complete a survey''',
                                                style: TextStyle(
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              )
                                            ]),
                                            Column(children: [
                                              Text(
                                                '''Identity \n\n Contact\n\nDevice\n\n Profile\n\nMarketing and Communications''',
                                                style: TextStyle(
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              )
                                            ]),
                                            Column(children: [
                                              Text(
                                                '''Your consent Performance of a contract with you Necessary for our legitimate interests (to analyse how customers use our products/Services and to develop them and grow our business)''',
                                                style: TextStyle(
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              )
                                            ]),
                                          ]),
                                          TableRow(children: [
                                            Column(children: [
                                              Text(
                                                '''To administer and protect our business and this App  including troubleshooting, data analysis and system testing''',
                                                style: TextStyle(
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              )
                                            ]),
                                            Column(children: [
                                              Text(
                                                '''Identity \n\n Contact \n\n Device''',
                                                style: TextStyle(
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              )
                                            ]),
                                            Column(children: [
                                              Text(
                                                '''Necessary for our legitimate interests (for running our business, provision of administration and IT services, network security)''',
                                                style: TextStyle(
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              )
                                            ]),
                                          ]),
                                          TableRow(children: [
                                            Column(children: [
                                              Text(
                                                '''To deliver content and advertisements to you To make recommendations to you about goods or services which may interest you To measure and analyse the effectiveness of the advertising we serve you To monitor trends so we can improve the App''',
                                                style: TextStyle(
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              )
                                            ]),
                                            Column(children: [
                                              Text(
                                                '''Identity \n\n Contact \n\n Device \n\n Profile \n\nUsage \n\n Marketing and Communications''',
                                                style: TextStyle(
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              )
                                            ]),
                                            Column(children: [
                                              Text(
                                                '''Consent Necessary for our legitimate interests (to develop our products/Services and grow our business)''',
                                                style: TextStyle(
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              )
                                            ]),
                                          ]),
                                        ],
                                      ),
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "Disclosures of your personal data",
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        Strings.privacyPolicy15,
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "International transfers",
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        Strings.privacyPolicy16,
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "Data security",
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        Strings.privacyPolicy17,
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "Data retention",
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        Strings.privacyPolicy18,
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "Your legal rights",
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        Strings.privacyPolicy19,
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "Glossary",
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "LAWFUL BASIS",
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            7.65 * SizeConfig.heightMultiplier,
                                            1.65 * SizeConfig.heightMultiplier,
                                            0,
                                            0),
                                        child: RichText(
                                          text: TextSpan(
                                            text: "Consent ",
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                  '''means processing your personal data where you have signified your agreement by a statement or clear opt-in to processing for a specific purpose. Consent will only be valid if it is a freely given, specific, informed and unambiguous indication of what you want. You can withdraw your consent at any time by contacting us.''',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            7.65 * SizeConfig.heightMultiplier,
                                            1.65 * SizeConfig.heightMultiplier,
                                            0,
                                            0),
                                        child: RichText(
                                          text: TextSpan(
                                            text: "Legitimate Interest ",
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: Strings.privacyPolicy20,
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            7.65 * SizeConfig.heightMultiplier,
                                            1.65 * SizeConfig.heightMultiplier,
                                            0,
                                            0),
                                        child: RichText(
                                          text: TextSpan(
                                            text: "Performance of Contract ",
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                  '''means processing your data where it is necessary for the performance of a contract to which you are a party or to take steps at your request before entering into such a contract.''',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            7.65 * SizeConfig.heightMultiplier,
                                            1.65 * SizeConfig.heightMultiplier,
                                            0,
                                            0),
                                        child: RichText(
                                          text: TextSpan(
                                            text:
                                            "Comply with a legal obligation ",
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                  '''means processing your personal data where it is necessary for compliance with a legal obligation that we are subject to.''',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "THIRD PARTIES",
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "EXTERNAL THIRD PARTIES",
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            7.65 * SizeConfig.heightMultiplier,
                                            1.65 * SizeConfig.heightMultiplier,
                                            0,
                                            0),
                                        child: Text(
                                          Strings.privacyPolicy21,
                                          style: TextStyle(
                                              fontFamily: robot,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                        )),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                          1.65 * SizeConfig.heightMultiplier),
                                      child: Text(
                                        "YOUR LEGAL RIGHTS",
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 1.65 *
                                                SizeConfig.heightMultiplier),
                                        child: RichText(
                                          text: TextSpan(
                                            text: "Request access ",
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                  '''to your personal data (commonly known as a "data subject access request"). This enables you to receive a copy of the personal data we hold about you and to check that we are lawfully processing it. ''',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),

                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 1.65 *
                                                SizeConfig.heightMultiplier),
                                        child: RichText(
                                          text: TextSpan(
                                            text: "Request correction ",
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                  '''of the personal data that we hold about you. This enables you to have any incomplete or inaccurate data we hold about you corrected, though we may need to verify the accuracy of the new data you provide to us.''',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 1.65 *
                                                SizeConfig.heightMultiplier),
                                        child: RichText(
                                          text: TextSpan(
                                            text: "Request erasure ",
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                  '''of your personal data. This enables you to ask us to delete or remove personal data where there is no good reason for us continuing to process it. You also have the right to ask us to delete or remove your personal data where you have successfully exercised your right to object to processing (see below), where we may have processed your information unlawfully or where we are required to erase your personal data to comply with local law. Note, however, that we may not always be able to comply with your request of erasure for specific legal reasons which will be notified to you, if applicable, at the time of your request.''',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 1.65 *
                                                SizeConfig.heightMultiplier),
                                        child: RichText(
                                          text: TextSpan(
                                            text: "Object to processing ",
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                  '''of your personal data where we are relying on a legitimate interest (or those of a third party) and there is something about your particular situation which makes you want to object to processing on this ground as you feel it impacts on your fundamental rights and freedoms. You also have the right to object where we are processing your personal data for direct marketing purposes. In some cases, we may demonstrate that we have compelling legitimate grounds to process your information which override your rights and freedoms.''',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 1.65 *
                                                SizeConfig.heightMultiplier),
                                        child: RichText(
                                          text: TextSpan(
                                            text:
                                            "Request restriction of processing ",
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                  '''of your personal data. This enables you to ask us to suspend the processing of your personal data in the following scenarios:''',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          3.25 * SizeConfig.heightMultiplier,
                                          1.62 * SizeConfig.heightMultiplier,
                                          0,
                                          1.62 * SizeConfig.heightMultiplier),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    1.2 *
                                                        SizeConfig
                                                            .heightMultiplier,
                                                    0.5 *
                                                        SizeConfig
                                                            .heightMultiplier,
                                                    1.62 *
                                                        SizeConfig
                                                            .heightMultiplier,
                                                    0),
                                                child: Text(
                                                  "(a) ",
                                                  style: TextStyle(
                                                      color:
                                                      AmigoColors.lightBlack,
                                                      fontFamily: robot,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier),
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "if you want us to establish the data's accuracy;",
                                                  style: TextStyle(
                                                      color:
                                                      AmigoColors.lightBlack,
                                                      fontFamily: robot,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier),
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    1.2 *
                                                        SizeConfig
                                                            .heightMultiplier,
                                                    0.5 *
                                                        SizeConfig
                                                            .heightMultiplier,
                                                    1.62 *
                                                        SizeConfig
                                                            .heightMultiplier,
                                                    0),
                                                child: Text(
                                                  "(b) ",
                                                  style: TextStyle(
                                                      color:
                                                      AmigoColors.lightBlack,
                                                      fontFamily: robot,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier),
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "where our use of the data is unlawful but you do not want us to erase it;",
                                                  style: TextStyle(
                                                      color:
                                                      AmigoColors.lightBlack,
                                                      fontFamily: robot,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier),
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    1.2 *
                                                        SizeConfig
                                                            .heightMultiplier,
                                                    0.5 *
                                                        SizeConfig
                                                            .heightMultiplier,
                                                    1.62 *
                                                        SizeConfig
                                                            .heightMultiplier,
                                                    0),
                                                child: Text(
                                                  "(c) ",
                                                  style: TextStyle(
                                                      color:
                                                      AmigoColors.lightBlack,
                                                      fontFamily: robot,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier),
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "where you need us to hold the data even if we no longer require it as you need it to establish, exercise or defend legal claims; or",
                                                  style: TextStyle(
                                                      color:
                                                      AmigoColors.lightBlack,
                                                      fontFamily: robot,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier),
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    1.2 *
                                                        SizeConfig
                                                            .heightMultiplier,
                                                    0.5 *
                                                        SizeConfig
                                                            .heightMultiplier,
                                                    1.62 *
                                                        SizeConfig
                                                            .heightMultiplier,
                                                    0),
                                                child: Text(
                                                  "(d) ",
                                                  style: TextStyle(
                                                      color:
                                                      AmigoColors.lightBlack,
                                                      fontFamily: robot,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier),
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "you have objected to our use of your data but we need to verify whether we have overriding legitimate grounds to use it.",
                                                  style: TextStyle(
                                                      color:
                                                      AmigoColors.lightBlack,
                                                      fontFamily: robot,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 1.65 *
                                                SizeConfig.heightMultiplier),
                                        child: RichText(
                                          text: TextSpan(
                                            text: "Request the transfer ",
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                  '''of your personal data to you or to a third party. We will provide to you, or a third party you have chosen, your personal data in a structured, commonly used, machine-readable format. Note that this right only applies to automated information which you initially provided consent for us to use or where we used the information to perform a contract with you.''',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 1.65 *
                                                SizeConfig.heightMultiplier),
                                        child: RichText(
                                          text: TextSpan(
                                            text: "Withdraw consent at any time ",
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                  '''where we are relying on consent to process your personal data. However, this will not affect the lawfulness of any processing carried out before you withdraw your consent. If you withdraw your consent, we may not be able to provide certain products or services to you. We will advise you if this is the case at the time you withdraw your consent.''',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 1.65 *
                                                SizeConfig.heightMultiplier),
                                        child: Text(
                                          "Description of categories of personal data",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 1.65 *
                                                SizeConfig.heightMultiplier),
                                        child: RichText(
                                          text: TextSpan(
                                            text: "Identity Data: ",
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                  '''first name, last name, maiden name, username or similar identifier, marital status, title, date of birth, gender.''',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 1.65 *
                                                SizeConfig.heightMultiplier),
                                        child: RichText(
                                          text: TextSpan(
                                            text: "Contact Data: ",
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                  '''billing address, delivery address, email address and telephone numbers.''',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 1.65 *
                                                SizeConfig.heightMultiplier),
                                        child: RichText(
                                          text: TextSpan(
                                            text: "Transaction Data: ",
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                  '''includes details about payments to and from you and details of in-App purchases.''',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 1.65 *
                                                SizeConfig.heightMultiplier),
                                        child: RichText(
                                          text: TextSpan(
                                            text: "Device Data: ",
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                  '''includes the type of mobile device you use, a unique device identifier (for example, your Device's IMEI number, the MAC address of the Device's wireless network interface, or the mobile phone number used by the Device), your mobile operating system, the type of mobile browser you use and time zone setting.''',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 1.65 *
                                                SizeConfig.heightMultiplier),
                                        child: RichText(
                                          text: TextSpan(
                                            text: "Content Data: ",
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                  '''includes information stored on your Device, including login information, and check-ins.''',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 1.65 *
                                                SizeConfig.heightMultiplier),
                                        child: RichText(
                                          text: TextSpan(
                                            text: "Profile Data: ",
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                  '''includes your username and password, in-App purchase history, your interests, preferences, feedback and survey responses.''',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 1.65 *
                                                SizeConfig.heightMultiplier),
                                        child: RichText(
                                          text: TextSpan(
                                            text: "Usage Data: ",
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                  '''includes details of your use of any of our Apps or your visits to any of Our Sites including, but not limited to, traffic data and other communication data, whether this is required for our own billing purposes or otherwise and the resources that you access.''',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),
                                    Container(
                                            padding:EdgeInsets.only(bottom:7.65*SizeConfig.heightMultiplier),
                                        margin: EdgeInsets.only(
                                            top: 1.65 *
                                                SizeConfig.heightMultiplier),
                                        child: RichText(
                                          text: TextSpan(
                                            text:
                                            "Marketing and Communications Data: ",
                                            style: TextStyle(
                                                color: AmigoColors.lightBlack,
                                                fontFamily: robot,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 1.62 *
                                                    SizeConfig.textMultiplier),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                  '''includes your preferences in receiving marketing from us and our third parties and your communication preferences.''',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontSize: 1.62 *
                                                          SizeConfig
                                                              .textMultiplier,
                                                      fontFamily: robot)),
                                            ],
                                          ),
                                        )),
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
        ),
      ],
    );
  }
}

class WebPrivacy extends StatefulWidget {
  @override
  _WebPrivacyState createState() => _WebPrivacyState();
}

class _WebPrivacyState extends State<WebPrivacy> {
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
                                    "Privacy Policy",
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
                                          text: Strings.privacyPolicy1,
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: 'policy',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    decoration: TextDecoration
                                                        .underline,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                            TextSpan(
                                                text:
                                                    '  and it is important that you read that information.'),
                                          ],
                                        ),
                                      )
                                      /*Text(Strings.privacyPolicy1, style: TextStyle(fontFamily: robot, fontSize: 25),),*/
                                      ),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.65 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text: Strings.privacyPolicy2,
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: 'policy',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    decoration: TextDecoration
                                                        .underline,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.65 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: 'YES ',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                            TextSpan(
                                                text:
                                                    'I consent to the installation of the App for the purposes of personal use.'),
                                          ],
                                        ),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.65 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: 'NO ',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                            TextSpan(
                                                text:
                                                    'I do not consent to the installation of the App.'),
                                          ],
                                        ),
                                      )
                                      /*Text(Strings.privacyPolicy1, style: TextStyle(fontFamily: robot, fontSize: 25),),*/
                                      ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "How you can withdraw consent",
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      Strings.privacyPolicy3,
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "Introduction",
                                      style: TextStyle(
                                          color: AmigoColors.lightBlack,
                                          fontFamily: robot,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.65 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text:
                                              "This policy (together with our ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: 'Terms of Use',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    decoration: TextDecoration
                                                        .underline,
                                                    fontFamily: robot)),
                                            TextSpan(
                                                text:
                                                    ') applies to your use of:'),
                                          ],
                                        ),
                                      )),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        3.25 * SizeConfig.heightMultiplier,
                                        1.62 * SizeConfig.heightMultiplier,
                                        0,
                                        1.62 * SizeConfig.heightMultiplier),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  1.2 *
                                                      SizeConfig
                                                          .heightMultiplier,
                                                  0.5 *
                                                      SizeConfig
                                                          .heightMultiplier,
                                                  1.62 *
                                                      SizeConfig
                                                          .heightMultiplier,
                                                  0),
                                              child: MyBullet(),
                                            ),
                                            Expanded(
                                                child: RichText(
                                              text: TextSpan(
                                                text:
                                                    "Mindamigo mobile application software ",
                                                style: TextStyle(
                                                    color:
                                                        AmigoColors.lightBlack,
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: "(App)",
                                                      style: TextStyle(
                                                          color: AmigoColors
                                                              .lightBlack,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 1.62 *
                                                              SizeConfig
                                                                  .textMultiplier,
                                                          fontFamily: robot)),
                                                  TextSpan(
                                                      text:
                                                          ' hosted on Apple App store and Android Play stores '),
                                                  TextSpan(
                                                      text: '(App Sites)',
                                                      style: TextStyle(
                                                          color: AmigoColors
                                                              .lightBlack,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 1.62 *
                                                              SizeConfig
                                                                  .textMultiplier,
                                                          fontFamily: robot)),
                                                  TextSpan(
                                                      text:
                                                          ', once you have downloaded a copy of the App onto your mobile telephone or handheld device '),
                                                  TextSpan(
                                                      text: '(Device)',
                                                      style: TextStyle(
                                                          color: AmigoColors
                                                              .lightBlack,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 1.62 *
                                                              SizeConfig
                                                                  .textMultiplier,
                                                          fontFamily: robot)),
                                                  TextSpan(text: '. \n'),
                                                ],
                                              ),
                                            )),
                                          ],
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  1.2 *
                                                      SizeConfig
                                                          .heightMultiplier,
                                                  0.5 *
                                                      SizeConfig
                                                          .heightMultiplier,
                                                  1.62 *
                                                      SizeConfig
                                                          .heightMultiplier,
                                                  0),
                                              child: MyBullet(),
                                            ),
                                            Expanded(
                                                child: RichText(
                                              text: TextSpan(
                                                text:
                                                    "Any of the services accessible through the App ",
                                                style: TextStyle(
                                                    color:
                                                        AmigoColors.lightBlack,
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: "(Services)",
                                                      style: TextStyle(
                                                          color: AmigoColors
                                                              .lightBlack,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 1.62 *
                                                              SizeConfig
                                                                  .textMultiplier,
                                                          fontFamily: robot)),
                                                  TextSpan(
                                                      text:
                                                          ' that is available on the App Site or other sites of ours '),
                                                  TextSpan(
                                                      text: '(Services Sites)',
                                                      style: TextStyle(
                                                          color: AmigoColors
                                                              .lightBlack,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 1.62 *
                                                              SizeConfig
                                                                  .textMultiplier,
                                                          fontFamily: robot)),
                                                  TextSpan(
                                                      text:
                                                          '. This policy sets out the basis on which any personal data we collect from you, or that you provide to us, will be processed by us. This App is not intended for children and we do not knowingly collect data relating to children. Please read the following carefully to understand our practices regarding your personal data and how we will treat it.'),
                                                ],
                                              ),
                                            )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.fromLTRB(
                                        0,
                                        0.65 * SizeConfig.heightMultiplier,
                                        0,
                                        0.65 * SizeConfig.heightMultiplier,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          text:
                                              'This policy is provided in a layered format so you can click through to the specific areas set out below. Alternatively, you can download a pdf version of the',
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: 'policy here',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    decoration: TextDecoration
                                                        .underline,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),
                                  //sdfsddf
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            0.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "Important information and who we are",
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            0.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      '''Mindamigo Limited is the controller and is responsible for your personal data (collectively referred to as "Company", "we", "us" or "our" in this policy).''',
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            0.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "We have appointed a data privacy manager. If you have any questions about this privacy policy, please contact them using the details set out below.",
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "Contact details",
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            0.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      Strings.privacyPolicy,
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "Changes to the privacy policy and your duty to inform us of changes",
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            0.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      Strings.privacyPolicy10,
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "Third party links",
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      Strings.privacyPolicy11,
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "The data we collect about you",
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      Strings.privacyPolicy12,
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "How is your personal data collected?",
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "We will collect and process the following data about you:",
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),

                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.65 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text: "Information you give us. ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '''This is information (including Identity, Contact, and Marketing and Communications Data) you consent to giving us about you by filling in forms on the App Site and the Services Sites (together''',
                                                style: TextStyle(
                                                    color:
                                                        AmigoColors.lightBlack,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                            TextSpan(
                                                text: " Our Sites), ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                            TextSpan(
                                                text:
                                                    '''or by corresponding with us (for example, by email or chat). It includes information you provide when you register to use the App Site, download or register an App, subscribe to any of our Services, search for an App or Service, make an in-App purchase, share data via an App&#39;s social media functions, enter a competition, promotion or survey, and when you report a problem with an App, our Services, or any of Our Sites. If you contact us, we will keep a record of that correspondence.''',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.65 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text:
                                              "Information we collect about you and your device. ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '''Each time you visit one of Our Sites or use one of our Apps we will automatically collect personal data including Device, Content and Usage Data. We collect this data using cookies and other similar technologies. Please see our cookie policy [LINK] for further details. ''',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),

                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "Cookies",
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      Strings.privacyPolicy13,
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "How we use your personal data",
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      Strings.privacyPolicy14,
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "Purposes for which we will use your personal data",
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  //table
                                  Container(
                                    margin: EdgeInsets.all(
                                        1.46 * SizeConfig.heightMultiplier),
                                    child: Table(
                                      defaultColumnWidth: FixedColumnWidth(
                                          22 * SizeConfig.heightMultiplier),
                                      border: TableBorder.all(
                                          color: Colors.grey,
                                          style: BorderStyle.solid,
                                          width: 1),
                                      children: [
                                        TableRow(children: [
                                          Column(children: [
                                            Text(
                                              'Purpose/activity',
                                              style: TextStyle(
                                                  fontFamily: robot,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 2.62 *
                                                      SizeConfig
                                                          .textMultiplier),
                                            )
                                          ]),
                                          Column(children: [
                                            Text(
                                              'Type of data',
                                              style: TextStyle(
                                                  fontFamily: robot,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 2.62 *
                                                      SizeConfig
                                                          .textMultiplier),
                                            )
                                          ]),
                                          Column(children: [
                                            Text(
                                              'Lawful basis for processing',
                                              style: TextStyle(
                                                  fontFamily: robot,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 2.62 *
                                                      SizeConfig
                                                          .textMultiplier),
                                            )
                                          ]),
                                        ]),
                                        TableRow(children: [
                                          Column(children: [
                                            Text(
                                              '''To install the App and register you as a new App user''',
                                              style: TextStyle(
                                                  fontFamily: robot,
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier),
                                            )
                                          ]),
                                          Column(children: [
                                            Text(
                                              'Identity \n Contact \n Device',
                                              style: TextStyle(
                                                  fontFamily: robot,
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier),
                                            )
                                          ]),
                                          Column(children: [
                                            Text(
                                              'Your consent',
                                              style: TextStyle(
                                                  fontFamily: robot,
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier),
                                            )
                                          ]),
                                        ]),
                                        TableRow(children: [
                                          Column(children: [
                                            Text(
                                              'To process in-App purchases and deliver Services including managing payments and collecting money owed to us',
                                              style: TextStyle(
                                                  fontFamily: robot,
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier),
                                            )
                                          ]),
                                          Column(children: [
                                            Text(
                                              'Identity \n\n Contact \n\n Transaction \n\n Device \n\n Marketing and Communications',
                                              style: TextStyle(
                                                  fontFamily: robot,
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier),
                                            )
                                          ]),
                                          Column(children: [
                                            Text(
                                              '''Your consent Performance of a contract with you Necessary for our legitimate  interests (to recover debts due to us) ) This would not be necessary since service will not continue unless money has been received''',
                                              style: TextStyle(
                                                  fontFamily: robot,
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier),
                                            )
                                          ]),
                                        ]),
                                        TableRow(children: [
                                          Column(children: [
                                            Text(
                                              '''To manage our relationship with you including notifying you of changes to the App or any Services''',
                                              style: TextStyle(
                                                  fontFamily: robot,
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier),
                                            )
                                          ]),
                                          Column(children: [
                                            Text(
                                              '''Identity \n\n Contact \n\n Profile \n\n Marketing and Communications''',
                                              style: TextStyle(
                                                  fontFamily: robot,
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier),
                                            )
                                          ]),
                                          Column(children: [
                                            Text(
                                              '''Your consent Performance of a contract with you Necessary for our legitimate interests (to keep records updated and to analyse how customers use our products/ Services) Necessary to comply with legal obligations (to inform you of any changes to our terms and conditions)''',
                                              style: TextStyle(
                                                  fontFamily: robot,
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier),
                                            )
                                          ]),
                                        ]),
                                        TableRow(children: [
                                          Column(children: [
                                            Text(
                                              '''To enable you to participate in a prize draw, competition or complete a survey''',
                                              style: TextStyle(
                                                  fontFamily: robot,
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier),
                                            )
                                          ]),
                                          Column(children: [
                                            Text(
                                              '''Identity \n\n Contact\n\nDevice\n\n Profile\n\nMarketing and Communications''',
                                              style: TextStyle(
                                                  fontFamily: robot,
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier),
                                            )
                                          ]),
                                          Column(children: [
                                            Text(
                                              '''Your consent Performance of a contract with you Necessary for our legitimate interests (to analyse how customers use our products/Services and to develop them and grow our business)''',
                                              style: TextStyle(
                                                  fontFamily: robot,
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier),
                                            )
                                          ]),
                                        ]),
                                        TableRow(children: [
                                          Column(children: [
                                            Text(
                                              '''To administer and protect our business and this App  including troubleshooting, data analysis and system testing''',
                                              style: TextStyle(
                                                  fontFamily: robot,
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier),
                                            )
                                          ]),
                                          Column(children: [
                                            Text(
                                              '''Identity \n\n Contact \n\n Device''',
                                              style: TextStyle(
                                                  fontFamily: robot,
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier),
                                            )
                                          ]),
                                          Column(children: [
                                            Text(
                                              '''Necessary for our legitimate interests (for running our business, provision of administration and IT services, network security)''',
                                              style: TextStyle(
                                                  fontFamily: robot,
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier),
                                            )
                                          ]),
                                        ]),
                                        TableRow(children: [
                                          Column(children: [
                                            Text(
                                              '''To deliver content and advertisements to you To make recommendations to you about goods or services which may interest you To measure and analyse the effectiveness of the advertising we serve you To monitor trends so we can improve the App''',
                                              style: TextStyle(
                                                  fontFamily: robot,
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier),
                                            )
                                          ]),
                                          Column(children: [
                                            Text(
                                              '''Identity \n\n Contact \n\n Device \n\n Profile \n\nUsage \n\n Marketing and Communications''',
                                              style: TextStyle(
                                                  fontFamily: robot,
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier),
                                            )
                                          ]),
                                          Column(children: [
                                            Text(
                                              '''Consent Necessary for our legitimate interests (to develop our products/Services and grow our business)''',
                                              style: TextStyle(
                                                  fontFamily: robot,
                                                  fontSize: 1.62 *
                                                      SizeConfig
                                                          .textMultiplier),
                                            )
                                          ]),
                                        ]),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "Disclosures of your personal data",
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      Strings.privacyPolicy15,
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "International transfers",
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      Strings.privacyPolicy16,
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "Data security",
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      Strings.privacyPolicy17,
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "Data retention",
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      Strings.privacyPolicy18,
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "Your legal rights",
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      Strings.privacyPolicy19,
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "Glossary",
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "LAWFUL BASIS",
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.fromLTRB(
                                          7.65 * SizeConfig.heightMultiplier,
                                          1.65 * SizeConfig.heightMultiplier,
                                          0,
                                          0),
                                      child: RichText(
                                        text: TextSpan(
                                          text: "Consent ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '''means processing your personal data where you have signified your agreement by a statement or clear opt-in to processing for a specific purpose. Consent will only be valid if it is a freely given, specific, informed and unambiguous indication of what you want. You can withdraw your consent at any time by contacting us.''',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),
                                  Container(
                                      margin: EdgeInsets.fromLTRB(
                                          7.65 * SizeConfig.heightMultiplier,
                                          1.65 * SizeConfig.heightMultiplier,
                                          0,
                                          0),
                                      child: RichText(
                                        text: TextSpan(
                                          text: "Legitimate Interest ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: Strings.privacyPolicy20,
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),
                                  Container(
                                      margin: EdgeInsets.fromLTRB(
                                          7.65 * SizeConfig.heightMultiplier,
                                          1.65 * SizeConfig.heightMultiplier,
                                          0,
                                          0),
                                      child: RichText(
                                        text: TextSpan(
                                          text: "Performance of Contract ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '''means processing your data where it is necessary for the performance of a contract to which you are a party or to take steps at your request before entering into such a contract.''',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),
                                  Container(
                                      margin: EdgeInsets.fromLTRB(
                                          7.65 * SizeConfig.heightMultiplier,
                                          1.65 * SizeConfig.heightMultiplier,
                                          0,
                                          0),
                                      child: RichText(
                                        text: TextSpan(
                                          text:
                                              "Comply with a legal obligation ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '''means processing your personal data where it is necessary for compliance with a legal obligation that we are subject to.''',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "THIRD PARTIES",
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "EXTERNAL THIRD PARTIES",
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.fromLTRB(
                                          7.65 * SizeConfig.heightMultiplier,
                                          1.65 * SizeConfig.heightMultiplier,
                                          0,
                                          0),
                                      child: Text(
                                        Strings.privacyPolicy21,
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier),
                                      )),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            1.65 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      "YOUR LEGAL RIGHTS",
                                      style: TextStyle(
                                          fontFamily: robot,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              1.62 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.65 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text: "Request access ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '''to your personal data (commonly known as a "data subject access request"). This enables you to receive a copy of the personal data we hold about you and to check that we are lawfully processing it. ''',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),

                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.65 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text: "Request correction ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '''of the personal data that we hold about you. This enables you to have any incomplete or inaccurate data we hold about you corrected, though we may need to verify the accuracy of the new data you provide to us.''',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.65 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text: "Request erasure ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '''of your personal data. This enables you to ask us to delete or remove personal data where there is no good reason for us continuing to process it. You also have the right to ask us to delete or remove your personal data where you have successfully exercised your right to object to processing (see below), where we may have processed your information unlawfully or where we are required to erase your personal data to comply with local law. Note, however, that we may not always be able to comply with your request of erasure for specific legal reasons which will be notified to you, if applicable, at the time of your request.''',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.65 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text: "Object to processing ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '''of your personal data where we are relying on a legitimate interest (or those of a third party) and there is something about your particular situation which makes you want to object to processing on this ground as you feel it impacts on your fundamental rights and freedoms. You also have the right to object where we are processing your personal data for direct marketing purposes. In some cases, we may demonstrate that we have compelling legitimate grounds to process your information which override your rights and freedoms.''',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.65 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text:
                                              "Request restriction of processing ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '''of your personal data. This enables you to ask us to suspend the processing of your personal data in the following scenarios:''',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        3.25 * SizeConfig.heightMultiplier,
                                        1.62 * SizeConfig.heightMultiplier,
                                        0,
                                        1.62 * SizeConfig.heightMultiplier),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  1.2 *
                                                      SizeConfig
                                                          .heightMultiplier,
                                                  0.5 *
                                                      SizeConfig
                                                          .heightMultiplier,
                                                  1.62 *
                                                      SizeConfig
                                                          .heightMultiplier,
                                                  0),
                                              child: Text(
                                                "(a) ",
                                                style: TextStyle(
                                                    color:
                                                        AmigoColors.lightBlack,
                                                    fontFamily: robot,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                "if you want us to establish the data's accuracy;",
                                                style: TextStyle(
                                                    color:
                                                        AmigoColors.lightBlack,
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  1.2 *
                                                      SizeConfig
                                                          .heightMultiplier,
                                                  0.5 *
                                                      SizeConfig
                                                          .heightMultiplier,
                                                  1.62 *
                                                      SizeConfig
                                                          .heightMultiplier,
                                                  0),
                                              child: Text(
                                                "(b) ",
                                                style: TextStyle(
                                                    color:
                                                        AmigoColors.lightBlack,
                                                    fontFamily: robot,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                "where our use of the data is unlawful but you do not want us to erase it;",
                                                style: TextStyle(
                                                    color:
                                                        AmigoColors.lightBlack,
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  1.2 *
                                                      SizeConfig
                                                          .heightMultiplier,
                                                  0.5 *
                                                      SizeConfig
                                                          .heightMultiplier,
                                                  1.62 *
                                                      SizeConfig
                                                          .heightMultiplier,
                                                  0),
                                              child: Text(
                                                "(c) ",
                                                style: TextStyle(
                                                    color:
                                                        AmigoColors.lightBlack,
                                                    fontFamily: robot,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                "where you need us to hold the data even if we no longer require it as you need it to establish, exercise or defend legal claims; or",
                                                style: TextStyle(
                                                    color:
                                                        AmigoColors.lightBlack,
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  1.2 *
                                                      SizeConfig
                                                          .heightMultiplier,
                                                  0.5 *
                                                      SizeConfig
                                                          .heightMultiplier,
                                                  1.62 *
                                                      SizeConfig
                                                          .heightMultiplier,
                                                  0),
                                              child: Text(
                                                "(d) ",
                                                style: TextStyle(
                                                    color:
                                                        AmigoColors.lightBlack,
                                                    fontFamily: robot,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                "you have objected to our use of your data but we need to verify whether we have overriding legitimate grounds to use it.",
                                                style: TextStyle(
                                                    color:
                                                        AmigoColors.lightBlack,
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.65 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text: "Request the transfer ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '''of your personal data to you or to a third party. We will provide to you, or a third party you have chosen, your personal data in a structured, commonly used, machine-readable format. Note that this right only applies to automated information which you initially provided consent for us to use or where we used the information to perform a contract with you.''',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.65 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text: "Withdraw consent at any time ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '''where we are relying on consent to process your personal data. However, this will not affect the lawfulness of any processing carried out before you withdraw your consent. If you withdraw your consent, we may not be able to provide certain products or services to you. We will advise you if this is the case at the time you withdraw your consent.''',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.65 *
                                              SizeConfig.heightMultiplier),
                                      child: Text(
                                        "Description of categories of personal data",
                                        style: TextStyle(
                                            color: AmigoColors.lightBlack,
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.65 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text: "Identity Data: ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '''first name, last name, maiden name, username or similar identifier, marital status, title, date of birth, gender.''',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.65 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text: "Contact Data: ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '''billing address, delivery address, email address and telephone numbers.''',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.65 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text: "Transaction Data: ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '''includes details about payments to and from you and details of in-App purchases.''',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.65 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text: "Device Data: ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '''includes the type of mobile device you use, a unique device identifier (for example, your Device's IMEI number, the MAC address of the Device's wireless network interface, or the mobile phone number used by the Device), your mobile operating system, the type of mobile browser you use and time zone setting.''',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.65 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text: "Content Data: ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '''includes information stored on your Device, including login information, and check-ins.''',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.65 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text: "Profile Data: ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '''includes your username and password, in-App purchase history, your interests, preferences, feedback and survey responses.''',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 1.65 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text: "Usage Data: ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '''includes details of your use of any of our Apps or your visits to any of Our Sites including, but not limited to, traffic data and other communication data, whether this is required for our own billing purposes or otherwise and the resources that you access.''',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),
                                  Container(
                                    padding:EdgeInsets.only(bottom: 7.65*SizeConfig.heightMultiplier),
                                      margin: EdgeInsets.only(
                                          top: 1.65 *
                                              SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text:
                                              "Marketing and Communications Data: ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '''includes your preferences in receiving marketing from us and our third parties and your communication preferences.''',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                          ],
                                        ),
                                      )),
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

class MobilePrivacy extends StatefulWidget {
  @override
  _MobilePrivacyState createState() => _MobilePrivacyState();
}

class _MobilePrivacyState extends State<MobilePrivacy> {
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
                    Container(
                        margin: EdgeInsets.only(
                            top: 6.51 * SizeConfig.heightMultiplier),
                        width: MediaQuery.of(context).size.width / 1.4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Privacy Policy",
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
                                    text: Strings.privacyPolicy1,
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'policy',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              decoration:
                                                  TextDecoration.underline,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                      TextSpan(
                                          text:
                                              '  and it is important that you read that information.'),
                                    ],
                                  ),
                                )
                                /*Text(Strings.privacyPolicy1, style: TextStyle(fontFamily: robot, fontSize: 25),),*/
                                ),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 1.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: Strings.privacyPolicy2,
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'policy',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              decoration:
                                                  TextDecoration.underline,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 1.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'YES ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                      TextSpan(
                                          text:
                                              'I consent to the installation of the App for the purposes of personal use.'),
                                    ],
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 1.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'NO ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                      TextSpan(
                                          text:
                                              'I do not consent to the installation of the App.'),
                                    ],
                                  ),
                                )
                                /*Text(Strings.privacyPolicy1, style: TextStyle(fontFamily: robot, fontSize: 25),),*/
                                ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "How you can withdraw consent",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                Strings.privacyPolicy3,
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "Introduction",
                                style: TextStyle(
                                    color: AmigoColors.lightBlack,
                                    fontFamily: robot,
                                    fontSize: 1.62 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 1.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: "This policy (together with our ",
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Terms of Use',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              decoration:
                                                  TextDecoration.underline,
                                              fontFamily: robot)),
                                      TextSpan(
                                          text: ') applies to your use of:'),
                                    ],
                                  ),
                                )),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  3.25 * SizeConfig.heightMultiplier,
                                  1.62 * SizeConfig.heightMultiplier,
                                  0,
                                  1.62 * SizeConfig.heightMultiplier),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            1.2 * SizeConfig.heightMultiplier,
                                            0.5 * SizeConfig.heightMultiplier,
                                            1.62 * SizeConfig.heightMultiplier,
                                            0),
                                        child: MyBullet(),
                                      ),
                                      Expanded(
                                          child: RichText(
                                        text: TextSpan(
                                          text:
                                              "Mindamigo mobile application software ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: "(App)",
                                                style: TextStyle(
                                                    color:
                                                        AmigoColors.lightBlack,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                            TextSpan(
                                                text:
                                                    ' hosted on Apple App store and Android Play stores '),
                                            TextSpan(
                                                text: '(App Sites)',
                                                style: TextStyle(
                                                    color:
                                                        AmigoColors.lightBlack,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                            TextSpan(
                                                text:
                                                    ', once you have downloaded a copy of the App onto your mobile telephone or handheld device '),
                                            TextSpan(
                                                text: '(Device)',
                                                style: TextStyle(
                                                    color:
                                                        AmigoColors.lightBlack,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                            TextSpan(text: '. \n'),
                                          ],
                                        ),
                                      )),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            1.2 * SizeConfig.heightMultiplier,
                                            0.5 * SizeConfig.heightMultiplier,
                                            1.62 * SizeConfig.heightMultiplier,
                                            0),
                                        child: MyBullet(),
                                      ),
                                      Expanded(
                                          child: RichText(
                                        text: TextSpan(
                                          text:
                                              "Any of the services accessible through the App ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: "(Services)",
                                                style: TextStyle(
                                                    color:
                                                        AmigoColors.lightBlack,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                            TextSpan(
                                                text:
                                                    ' that is available on the App Site or other sites of ours '),
                                            TextSpan(
                                                text: '(Services Sites)',
                                                style: TextStyle(
                                                    color:
                                                        AmigoColors.lightBlack,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                            TextSpan(
                                                text:
                                                    '. This policy sets out the basis on which any personal data we collect from you, or that you provide to us, will be processed by us. This App is not intended for children and we do not knowingly collect data relating to children. Please read the following carefully to understand our practices regarding your personal data and how we will treat it.'),
                                          ],
                                        ),
                                      )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(
                                  0,
                                  0.65 * SizeConfig.heightMultiplier,
                                  0,
                                  0.65 * SizeConfig.heightMultiplier,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    text:
                                        'This policy is provided in a layered format so you can click through to the specific areas set out below. Alternatively, you can download a pdf version of the',
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'policy here',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              decoration:
                                                  TextDecoration.underline,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),
                            //sdfsddf
                            Container(
                              margin: EdgeInsets.only(
                                  top: 0.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "Important information and who we are",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 0.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                '''Mindamigo Limited is the controller and is responsible for your personal data (collectively referred to as "Company", "we", "us" or "our" in this policy).''',
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 0.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "We have appointed a data privacy manager. If you have any questions about this privacy policy, please contact them using the details set out below.",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "Contact details",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 0.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                Strings.privacyPolicy,
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "Changes to the privacy policy and your duty to inform us of changes",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 0.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                Strings.privacyPolicy10,
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "Third party links",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                Strings.privacyPolicy11,
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "The data we collect about you",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                Strings.privacyPolicy12,
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "How is your personal data collected?",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "We will collect and process the following data about you:",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),

                            Container(
                                margin: EdgeInsets.only(
                                    top: 1.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: "Information you give us. ",
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''This is information (including Identity, Contact, and Marketing and Communications Data) you consent to giving us about you by filling in forms on the App Site and the Services Sites (together''',
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                      TextSpan(
                                          text: " Our Sites), ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                      TextSpan(
                                          text:
                                              '''or by corresponding with us (for example, by email or chat). It includes information you provide when you register to use the App Site, download or register an App, subscribe to any of our Services, search for an App or Service, make an in-App purchase, share data via an App&#39;s social media functions, enter a competition, promotion or survey, and when you report a problem with an App, our Services, or any of Our Sites. If you contact us, we will keep a record of that correspondence.''',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 1.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text:
                                        "Information we collect about you and your device. ",
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''Each time you visit one of Our Sites or use one of our Apps we will automatically collect personal data including Device, Content and Usage Data. We collect this data using cookies and other similar technologies. Please see our cookie policy [LINK] for further details. ''',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),

                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "Cookies",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                Strings.privacyPolicy13,
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "How we use your personal data",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                Strings.privacyPolicy14,
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "Purposes for which we will use your personal data",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            //table
                            Container(
                              margin: EdgeInsets.all(
                                  1.46 * SizeConfig.heightMultiplier),
                              child: Table(
                                defaultColumnWidth: FixedColumnWidth(
                                    10 * SizeConfig.heightMultiplier),
                                border: TableBorder.all(
                                    color: Colors.grey,
                                    style: BorderStyle.solid,
                                    width: 1),
                                children: [
                                  TableRow(children: [
                                    Column(children: [
                                      Text(
                                        'Purpose/activity',
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 2.62 *
                                                SizeConfig.textMultiplier),
                                      )
                                    ]),
                                    Column(children: [
                                      Text(
                                        'Type of data',
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 2.62 *
                                                SizeConfig.textMultiplier),
                                      )
                                    ]),
                                    Column(children: [
                                      Text(
                                        'Lawful basis for processing',
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 2.62 *
                                                SizeConfig.textMultiplier),
                                      )
                                    ]),
                                  ]),
                                  TableRow(children: [
                                    Column(children: [
                                      Text(
                                        '''To install the App and register you as a new App user''',
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier),
                                      )
                                    ]),
                                    Column(children: [
                                      Text(
                                        'Identity \n Contact \n Device',
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier),
                                      )
                                    ]),
                                    Column(children: [
                                      Text(
                                        'Your consent',
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier),
                                      )
                                    ]),
                                  ]),
                                  TableRow(children: [
                                    Column(children: [
                                      Text(
                                        'To process in-App purchases and deliver Services including managing payments and collecting money owed to us',
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier),
                                      )
                                    ]),
                                    Column(children: [
                                      Text(
                                        'Identity \n\n Contact \n\n Transaction \n\n Device \n\n Marketing and Communications',
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier),
                                      )
                                    ]),
                                    Column(children: [
                                      Text(
                                        '''Your consent Performance of a contract with you Necessary for our legitimate  interests (to recover debts due to us) ) This would not be necessary since service will not continue unless money has been received''',
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier),
                                      )
                                    ]),
                                  ]),
                                  TableRow(children: [
                                    Column(children: [
                                      Text(
                                        '''To manage our relationship with you including notifying you of changes to the App or any Services''',
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier),
                                      )
                                    ]),
                                    Column(children: [
                                      Text(
                                        '''Identity \n\n Contact \n\n Profile \n\n Marketing and Communications''',
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier),
                                      )
                                    ]),
                                    Column(children: [
                                      Text(
                                        '''Your consent Performance of a contract with you Necessary for our legitimate interests (to keep records updated and to analyse how customers use our products/ Services) Necessary to comply with legal obligations (to inform you of any changes to our terms and conditions)''',
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier),
                                      )
                                    ]),
                                  ]),
                                  TableRow(children: [
                                    Column(children: [
                                      Text(
                                        '''To enable you to participate in a prize draw, competition or complete a survey''',
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier),
                                      )
                                    ]),
                                    Column(children: [
                                      Text(
                                        '''Identity \n\n Contact\n\nDevice\n\n Profile\n\nMarketing and Communications''',
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier),
                                      )
                                    ]),
                                    Column(children: [
                                      Text(
                                        '''Your consent Performance of a contract with you Necessary for our legitimate interests (to analyse how customers use our products/Services and to develop them and grow our business)''',
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier),
                                      )
                                    ]),
                                  ]),
                                  TableRow(children: [
                                    Column(children: [
                                      Text(
                                        '''To administer and protect our business and this App  including troubleshooting, data analysis and system testing''',
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier),
                                      )
                                    ]),
                                    Column(children: [
                                      Text(
                                        '''Identity \n\n Contact \n\n Device''',
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier),
                                      )
                                    ]),
                                    Column(children: [
                                      Text(
                                        '''Necessary for our legitimate interests (for running our business, provision of administration and IT services, network security)''',
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier),
                                      )
                                    ]),
                                  ]),
                                  TableRow(children: [
                                    Column(children: [
                                      Text(
                                        '''To deliver content and advertisements to you To make recommendations to you about goods or services which may interest you To measure and analyse the effectiveness of the advertising we serve you To monitor trends so we can improve the App''',
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier),
                                      )
                                    ]),
                                    Column(children: [
                                      Text(
                                        '''Identity \n\n Contact \n\n Device \n\n Profile \n\nUsage \n\n Marketing and Communications''',
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier),
                                      )
                                    ]),
                                    Column(children: [
                                      Text(
                                        '''Consent Necessary for our legitimate interests (to develop our products/Services and grow our business)''',
                                        style: TextStyle(
                                            fontFamily: robot,
                                            fontSize: 1.62 *
                                                SizeConfig.textMultiplier),
                                      )
                                    ]),
                                  ]),
                                ],
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "Disclosures of your personal data",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                Strings.privacyPolicy15,
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "International transfers",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                Strings.privacyPolicy16,
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "Data security",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                Strings.privacyPolicy17,
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "Data retention",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                Strings.privacyPolicy18,
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "Your legal rights",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                Strings.privacyPolicy19,
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "Glossary",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "LAWFUL BASIS",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(
                                    7.65 * SizeConfig.heightMultiplier,
                                    1.65 * SizeConfig.heightMultiplier,
                                    0,
                                    0),
                                child: RichText(
                                  text: TextSpan(
                                    text: "Consent ",
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''means processing your personal data where you have signified your agreement by a statement or clear opt-in to processing for a specific purpose. Consent will only be valid if it is a freely given, specific, informed and unambiguous indication of what you want. You can withdraw your consent at any time by contacting us.''',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.fromLTRB(
                                    7.65 * SizeConfig.heightMultiplier,
                                    1.65 * SizeConfig.heightMultiplier,
                                    0,
                                    0),
                                child: RichText(
                                  text: TextSpan(
                                    text: "Legitimate Interest ",
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: Strings.privacyPolicy20,
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.fromLTRB(
                                    7.65 * SizeConfig.heightMultiplier,
                                    1.65 * SizeConfig.heightMultiplier,
                                    0,
                                    0),
                                child: RichText(
                                  text: TextSpan(
                                    text: "Performance of Contract ",
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''means processing your data where it is necessary for the performance of a contract to which you are a party or to take steps at your request before entering into such a contract.''',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.fromLTRB(
                                    7.65 * SizeConfig.heightMultiplier,
                                    1.65 * SizeConfig.heightMultiplier,
                                    0,
                                    0),
                                child: RichText(
                                  text: TextSpan(
                                    text: "Comply with a legal obligation ",
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''means processing your personal data where it is necessary for compliance with a legal obligation that we are subject to.''',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "THIRD PARTIES",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "EXTERNAL THIRD PARTIES",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(
                                    7.65 * SizeConfig.heightMultiplier,
                                    1.65 * SizeConfig.heightMultiplier,
                                    0,
                                    0),
                                child: Text(
                                  Strings.privacyPolicy21,
                                  style: TextStyle(
                                      fontFamily: robot,
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier),
                                )),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "YOUR LEGAL RIGHTS",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.62 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 1.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: "Request access ",
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''to your personal data (commonly known as a "data subject access request"). This enables you to receive a copy of the personal data we hold about you and to check that we are lawfully processing it. ''',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),

                            Container(
                                margin: EdgeInsets.only(
                                    top: 1.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: "Request correction ",
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''of the personal data that we hold about you. This enables you to have any incomplete or inaccurate data we hold about you corrected, though we may need to verify the accuracy of the new data you provide to us.''',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 1.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: "Request erasure ",
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''of your personal data. This enables you to ask us to delete or remove personal data where there is no good reason for us continuing to process it. You also have the right to ask us to delete or remove your personal data where you have successfully exercised your right to object to processing (see below), where we may have processed your information unlawfully or where we are required to erase your personal data to comply with local law. Note, however, that we may not always be able to comply with your request of erasure for specific legal reasons which will be notified to you, if applicable, at the time of your request.''',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 1.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: "Object to processing ",
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''of your personal data where we are relying on a legitimate interest (or those of a third party) and there is something about your particular situation which makes you want to object to processing on this ground as you feel it impacts on your fundamental rights and freedoms. You also have the right to object where we are processing your personal data for direct marketing purposes. In some cases, we may demonstrate that we have compelling legitimate grounds to process your information which override your rights and freedoms.''',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 1.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: "Request restriction of processing ",
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''of your personal data. This enables you to ask us to suspend the processing of your personal data in the following scenarios:''',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  3.25 * SizeConfig.heightMultiplier,
                                  1.62 * SizeConfig.heightMultiplier,
                                  0,
                                  1.62 * SizeConfig.heightMultiplier),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            1.2 * SizeConfig.heightMultiplier,
                                            0.5 * SizeConfig.heightMultiplier,
                                            1.62 * SizeConfig.heightMultiplier,
                                            0),
                                        child: Text(
                                          "(a) ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          "if you want us to establish the data's accuracy;",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            1.2 * SizeConfig.heightMultiplier,
                                            0.5 * SizeConfig.heightMultiplier,
                                            1.62 * SizeConfig.heightMultiplier,
                                            0),
                                        child: Text(
                                          "(b) ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          "where our use of the data is unlawful but you do not want us to erase it;",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            1.2 * SizeConfig.heightMultiplier,
                                            0.5 * SizeConfig.heightMultiplier,
                                            1.62 * SizeConfig.heightMultiplier,
                                            0),
                                        child: Text(
                                          "(c) ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          "where you need us to hold the data even if we no longer require it as you need it to establish, exercise or defend legal claims; or",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            1.2 * SizeConfig.heightMultiplier,
                                            0.5 * SizeConfig.heightMultiplier,
                                            1.62 * SizeConfig.heightMultiplier,
                                            0),
                                        child: Text(
                                          "(d) ",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          "you have objected to our use of your data but we need to verify whether we have overriding legitimate grounds to use it.",
                                          style: TextStyle(
                                              color: AmigoColors.lightBlack,
                                              fontFamily: robot,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 1.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: "Request the transfer ",
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''of your personal data to you or to a third party. We will provide to you, or a third party you have chosen, your personal data in a structured, commonly used, machine-readable format. Note that this right only applies to automated information which you initially provided consent for us to use or where we used the information to perform a contract with you.''',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 1.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: "Withdraw consent at any time ",
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''where we are relying on consent to process your personal data. However, this will not affect the lawfulness of any processing carried out before you withdraw your consent. If you withdraw your consent, we may not be able to provide certain products or services to you. We will advise you if this is the case at the time you withdraw your consent.''',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 1.65 * SizeConfig.heightMultiplier),
                                child: Text(
                                  "Description of categories of personal data",
                                  style: TextStyle(
                                      color: AmigoColors.lightBlack,
                                      fontFamily: robot,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          1.62 * SizeConfig.textMultiplier),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 1.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: "Identity Data: ",
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''first name, last name, maiden name, username or similar identifier, marital status, title, date of birth, gender.''',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 1.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: "Contact Data: ",
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''billing address, delivery address, email address and telephone numbers.''',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 1.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: "Transaction Data: ",
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''includes details about payments to and from you and details of in-App purchases.''',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 1.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: "Device Data: ",
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''includes the type of mobile device you use, a unique device identifier (for example, your Device's IMEI number, the MAC address of the Device's wireless network interface, or the mobile phone number used by the Device), your mobile operating system, the type of mobile browser you use and time zone setting.''',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 1.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: "Content Data: ",
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''includes information stored on your Device, including login information, and check-ins.''',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 1.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: "Profile Data: ",
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''includes your username and password, in-App purchase history, your interests, preferences, feedback and survey responses.''',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 1.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: "Usage Data: ",
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''includes details of your use of any of our Apps or your visits to any of Our Sites including, but not limited to, traffic data and other communication data, whether this is required for our own billing purposes or otherwise and the resources that you access.''',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 1.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: "Marketing and Communications Data: ",
                                    style: TextStyle(
                                        color: AmigoColors.lightBlack,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '''includes your preferences in receiving marketing from us and our third parties and your communication preferences.''',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              fontFamily: robot)),
                                    ],
                                  ),
                                )),
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
                      circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
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
    );
  }
}

class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      alignment: Alignment.center,
      height: 0.52 * SizeConfig.heightMultiplier,
      width: 0.52 * SizeConfig.heightMultiplier,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}
