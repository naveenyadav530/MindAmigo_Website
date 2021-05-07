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
      webBody: WebPrivacy(),
      mobileBody: MobilePrivacy(),
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
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: "(App)",
                                                      style: TextStyle(
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
                                                    fontFamily: robot,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: "(Services)",
                                                      style: TextStyle(
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
                                              fontFamily: robot,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '''This is information (including Identity, Contact, and Marketing and Communications Data) you consent to giving us about you by filling in forms on the App Site and the Services Sites (together''',
                                                style: TextStyle(
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
                                    margin: EdgeInsets.all(20),
                                    child: Table(
                                      defaultColumnWidth:
                                          FixedColumnWidth(300.0),
                                      border: TableBorder.all(
                                          color: Colors.grey,
                                          style: BorderStyle.solid,
                                          width: 1),
                                      children: [
                                        TableRow(children: [
                                          Column(children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 2, 0, 5),
                                              child: Text('Purpose/activity',
                                                  style: TextStyle(
                                                      fontSize: 20.0)),
                                            )
                                          ]),
                                          Column(children: [
                                            Text('Type of data',
                                                style:
                                                    TextStyle(fontSize: 20.0))
                                          ]),
                                          Column(children: [
                                            Text('Lawful basis for processing',
                                                style:
                                                    TextStyle(fontSize: 20.0))
                                          ]),
                                        ]),
                                        TableRow(children: [
                                          Column(children: [
                                            Text(
                                                '''To install the App and register you as a new App user''')
                                          ]),
                                          Column(children: [
                                            Text(
                                                'Identity \n Contact \n Device')
                                          ]),
                                          Column(
                                              children: [Text('Your consent')]),
                                        ]),
                                        TableRow(children: [
                                          Column(children: [
                                            Text(
                                                'To process in-App purchases and deliver Services including managing payments and collecting money owed to us')
                                          ]),
                                          Column(children: [
                                            Text(
                                                'Identity \n\n Contact \n\n Transaction \n\n Device \n\n Marketing and Communications')
                                          ]),
                                          Column(children: [
                                            Text(
                                                '''Your consent Performance of a contract with you Necessary for our legitimate  interests (to recover debts due to us) ) This would not be necessary since service will not continue unless money has been received''')
                                          ]),
                                        ]),
                                        TableRow(children: [
                                          Column(children: [
                                            Text(
                                                '''To manage our relationship with you including notifying you of changes to the App or any Services''')
                                          ]),
                                          Column(children: [
                                            Text(
                                                '''Identity \n\n Contact \n\n Profile \n\n Marketing and Communications''')
                                          ]),
                                          Column(children: [
                                            Text(
                                                '''Your consent Performance of a contract with you Necessary for our legitimate interests (to keep records updated and to analyse how customers use our products/ Services) Necessary to comply with legal obligations (to inform you of any changes to our terms and conditions)''')
                                          ]),
                                        ]),
                                        TableRow(children: [
                                          Column(children: [
                                            Text(
                                                '''To enable you to participate in a prize draw, competition or complete a survey''')
                                          ]),
                                          Column(children: [
                                            Text(
                                                '''Identity \n\n Contact\n\nDevice\n\n Profile\n\nMarketing and Communications''')
                                          ]),
                                          Column(children: [
                                            Padding(
                                              padding: EdgeInsets.all(20.0),
                                              child: Text(
                                                  '''Your consent Performance of a contract with you Necessary for our legitimate interests (to analyse how customers use our products/Services and to develop them and grow our business)'''),
                                            )
                                          ]),
                                        ]),
                                        TableRow(children: [
                                          Column(children: [
                                            Text(
                                                '''To administer and protect our business and this App  including troubleshooting, data analysis and system testing''')
                                          ]),
                                          Column(children: [
                                            Text(
                                                '''Identity \n\n Contact \n\n Device''')
                                          ]),
                                          Column(children: [
                                            Text(
                                                '''Necessary for our legitimate interests (for running our business, provision of administration and IT services, network security)''')
                                          ]),
                                        ]),
                                        TableRow(children: [
                                          Column(children: [
                                            Text(
                                                '''To deliver content and advertisements to you To make recommendations to you about goods or services which may interest you To measure and analyse the effectiveness of the advertising we serve you To monitor trends so we can improve the App''')
                                          ]),
                                          Column(children: [
                                            Text(
                                                '''Identity \n\n Contact \n\n Device \n\n Profile \n\nUsage \n\n Marketing and Communications''')
                                          ]),
                                          Column(children: [
                                            Text(
                                                '''Consent Necessary for our legitimate interests (to develop our products/Services and grow our business)''')
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
                                        fontFamily: robot,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier,
                                        color: AmigoColors.lightBlack),
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
                                    top: 0.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: Strings.privacyPolicy2,
                                    style: TextStyle(
                                        fontFamily: robot,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier,
                                        color: AmigoColors.lightBlack),
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
                                    top: 0.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                        fontFamily: robot,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier,
                                        color: AmigoColors.lightBlack),
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
                                    top: 0.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                        fontFamily: robot,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier,
                                        color: AmigoColors.lightBlack),
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
                                  top: 0.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                "How you can withdraw consent",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontSize: 1.62 * SizeConfig.textMultiplier,
                                    color: AmigoColors.lightBlack),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 0.65 * SizeConfig.heightMultiplier),
                              child: Text(
                                Strings.privacyPolicy3,
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontSize: 1.62 * SizeConfig.textMultiplier,
                                    color: AmigoColors.lightBlack),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 1.30 * SizeConfig.heightMultiplier),
                              child: Text(
                                "Introduction",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontSize: 1.62 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold,
                                    color: AmigoColors.lightBlack),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 0.65 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: "This policy (together with our ",
                                    style: TextStyle(
                                        fontFamily: robot,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier,
                                        color: AmigoColors.lightBlack),
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
                                        padding: EdgeInsets.all(
                                            1.30 * SizeConfig.heightMultiplier),
                                        child: MyBullet(),
                                      ),
                                      Expanded(
                                          child: RichText(
                                        text: TextSpan(
                                          text:
                                              "Mindamigo mobile application software ",
                                          style: TextStyle(
                                              fontFamily: robot,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              color: AmigoColors.lightBlack),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: "(App)",
                                                style: TextStyle(
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
                                        padding: EdgeInsets.all(
                                            1.62 * SizeConfig.heightMultiplier),
                                        child: MyBullet(),
                                      ),
                                      Expanded(
                                          child: RichText(
                                        text: TextSpan(
                                          text:
                                              "Any of the services accessible through the App ",
                                          style: TextStyle(
                                              fontFamily: robot,
                                              fontSize: 1.62 *
                                                  SizeConfig.textMultiplier,
                                              color: AmigoColors.lightBlack),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: "(Services)",
                                                style: TextStyle(
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
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 1.62 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontFamily: robot)),
                                            TextSpan(
                                              text:
                                                  '. This policy sets out the basis on which any personal data we collect from you, or that you provide to us, will be processed by us. This App is not intended for children and we do not knowingly collect data relating to children. Please read the following carefully to understand our practices regarding your personal data and how we will treat it.',
                                            ),
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
                                    5.20 * SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text:
                                        'This policy is provided in a layered format so you can click through to the specific areas set out below. Alternatively, you can download a pdf version of the',
                                    style: TextStyle(
                                        fontFamily: robot,
                                        fontSize:
                                            1.62 * SizeConfig.textMultiplier,
                                        color: AmigoColors.lightBlack),
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
