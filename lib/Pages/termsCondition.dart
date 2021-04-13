import 'package:flutter/material.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/utils/responsiveLayout.dart';
import 'package:mindamigo/utils/size_config.dart';
import 'package:mindamigo/widgets/bottombar.dart';
import 'package:mindamigo/widgets/circles.dart';
import 'package:mindamigo/widgets/gradientLine.dart';
import 'package:mindamigo/widgets/navbar.dart';


class TermsConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      webBody: WebTermsConditions(),

    );
  }
}


class WebTermsConditions extends StatefulWidget {
  @override
  _WebTermsConditionsState createState() => _WebTermsConditionsState();
}

class _WebTermsConditionsState extends State<WebTermsConditions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
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
                      margin: EdgeInsets.symmetric(vertical: 3.25*SizeConfig.heightMultiplier),
                      height: 65.10*SizeConfig.heightMultiplier,
                      width: MediaQuery.of(context).size.width/1.5,

                      child: ListView(
                        padding: EdgeInsets.symmetric(vertical: 0.52*SizeConfig.heightMultiplier),
                        children: [
                          ListTile(
                            title: Text("Terms and Conditions", style: TextStyle(fontSize: 2.40*SizeConfig.heightMultiplier, color: Colors.orange, fontFamily: robot, fontWeight: FontWeight.bold),),
                          ),
                          ListTile(
                            leading: ExcludeSemantics(
                              child: Text("1.", style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, fontFamily: robot),),
                            ),
                            title: Text("These Terms ",style: TextStyle(fontSize:1.62*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, fontFamily: robot),),
                          ),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text("1.1.", style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, fontFamily: robot),),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: 'What These terms Cover. ',
                                  style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, fontFamily: robot),
                                  children: <TextSpan>[
                                    TextSpan(text: 'These are the terms and conditions on which we supply products in the form of the Mindamigo app (the App) to you.',
                                        style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier, fontFamily: robot, fontWeight: FontWeight.normal)),

                                  ],
                                ),
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 3*SizeConfig.heightMultiplier),
                            child: ListTile(
                                leading: ExcludeSemantics(
                                  child: Text("1.2.", style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, fontFamily: robot),),
                                ),
                                title: RichText(
                                  text: TextSpan(
                                    text: 'Why you should read them. ',
                                    style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, fontFamily: robot),
                                    children: <TextSpan>[
                                      TextSpan(text: 'Please read these terms carefully before you download the App. These terms tell you who we are, how we will provide the App to you, how you and we may change or end the contract, what to do if there is a problem and other important information. If you think that there is a mistake in these terms, please contact us to discuss.',
                                          style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier, fontFamily: robot, fontWeight: FontWeight.normal)),

                                    ],
                                  ),
                                )
                            ),
                          ),

                          ListTile(
                            leading: ExcludeSemantics(
                              child: Text("2.", style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, fontFamily: robot),),
                            ),
                            title: Text("These Terms ",style: TextStyle(fontSize:1.62*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, fontFamily: robot),),
                          ),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text("2.1.", style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, fontFamily: robot),),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: 'What These terms Cover. ',
                                  style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, fontFamily: robot),
                                  children: <TextSpan>[
                                    TextSpan(text: 'These are the terms and conditions on which we supply products in the form of the Mindamigo app (the App) to you.',
                                        style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier, fontFamily: robot, fontWeight: FontWeight.normal)),

                                  ],
                                ),
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 3*SizeConfig.heightMultiplier),
                            child: ListTile(
                                leading: ExcludeSemantics(
                                  child: Text("2.2.", style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, fontFamily: robot),),
                                ),
                                title: RichText(
                                  text: TextSpan(
                                    text: 'Why you should read them. ',
                                    style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, fontFamily: robot),
                                    children: <TextSpan>[
                                      TextSpan(text: 'Please read these terms carefully before you download the App. These terms tell you who we are, how we will provide the App to you, how you and we may change or end the contract, what to do if there is a problem and other important information. If you think that there is a mistake in these terms, please contact us to discuss.',
                                          style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier, fontFamily: robot, fontWeight: FontWeight.normal)),

                                    ],
                                  ),
                                )
                            ),
                          ),

                          ListTile(
                            leading: ExcludeSemantics(
                              child: Text("1.", style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, fontFamily: robot),),
                            ),
                            title: Text("These Terms ",style: TextStyle(fontSize:1.62*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, fontFamily: robot),),
                          ),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text("1.1.", style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, fontFamily: robot),),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: 'What These terms Cover. ',
                                  style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, fontFamily: robot),
                                  children: <TextSpan>[
                                    TextSpan(text: 'These are the terms and conditions on which we supply products in the form of the Mindamigo app (the App) to you.',
                                        style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier, fontFamily: robot, fontWeight: FontWeight.normal)),

                                  ],
                                ),
                              )
                          ),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: Text("1.2.", style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, fontFamily: robot),),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: 'Why you should read them. ',
                                  style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, fontFamily: robot),
                                  children: <TextSpan>[
                                    TextSpan(text: 'Please read these terms carefully before you download the App. These terms tell you who we are, how we will provide the App to you, how you and we may change or end the contract, what to do if there is a problem and other important information. If you think that there is a mistake in these terms, please contact us to discuss.',
                                        style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier, fontFamily: robot, fontWeight: FontWeight.normal)),

                                  ],
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                    //left
                    CircleAmigo(
                      bottomCircleAmigoPosition: 18.2*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -10.16*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition: 15*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -13.41*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition: 11.71*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -16.67*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),

                    //right
                    CircleAmigo(
                      topCircleAmigoPosition: -2.20*SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition: -7.16*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 15.02*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 15.02*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      topCircleAmigoPosition: -5.46*SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition: -10.41*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 22.53*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 22.53*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      topCircleAmigoPosition: -8.71*SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition: -13.67*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 30.04*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 30.04*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

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

class TabTermsConditions extends StatefulWidget {
  @override
  _TabTermsConditionsState createState() => _TabTermsConditionsState();
}

class _TabTermsConditionsState extends State<TabTermsConditions> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


