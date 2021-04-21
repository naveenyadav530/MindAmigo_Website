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
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 6.51*SizeConfig.heightMultiplier),
                              width: MediaQuery.of(context).size.width/1.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Privacy Policy",
                                    style: TextStyle(
                                        fontSize: 2.40*SizeConfig.textMultiplier,
                                        color: Colors.orange,
                                        fontFamily: robot,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: 1.95*SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text: Strings.privacyPolicy1,
                                          style: TextStyle(fontFamily: robot, fontSize: 1.62*SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(text: 'policy',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    decoration: TextDecoration.underline,
                                                    fontSize: 1.62*SizeConfig.textMultiplier,
                                                    fontFamily: robot
                                                )
                                            ),
                                            TextSpan(text: '  and it is important that you read that information.'),
                                          ],
                                        ),
                                      )
                                    /*Text(Strings.privacyPolicy1, style: TextStyle(fontFamily: robot, fontSize: 25),),*/
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text: Strings.privacyPolicy2,
                                          style: TextStyle(fontFamily: robot, fontSize: 1.62*SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(text: 'policy',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    decoration: TextDecoration.underline,
                                                    fontSize: 1.62*SizeConfig.textMultiplier,
                                                    fontFamily: robot
                                                )
                                            ),

                                          ],
                                        ),
                                      )

                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          style: TextStyle(fontFamily: robot, fontSize: 1.62*SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(text: 'YES ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 1.62*SizeConfig.textMultiplier, fontFamily: robot)),
                                            TextSpan(text: 'I consent to the installation of the App for the purposes of personal use.'),
                                          ],
                                        ),
                                      )

                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          style: TextStyle(fontFamily: robot, fontSize: 1.62*SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(text: 'NO ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 1.62*SizeConfig.textMultiplier, fontFamily: robot)),
                                            TextSpan(text: 'I do not consent to the installation of the App.'),
                                          ],
                                        ),
                                      )
                                    /*Text(Strings.privacyPolicy1, style: TextStyle(fontFamily: robot, fontSize: 25),),*/
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                                    child: Text("How you can withdraw consent", style: TextStyle(fontFamily: robot, fontSize: 1.62*SizeConfig.textMultiplier),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                                    child: Text(Strings.privacyPolicy3, style: TextStyle(fontFamily: robot, fontSize: 1.62*SizeConfig.textMultiplier),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 1.30*SizeConfig.heightMultiplier),
                                    child: Text("Introduction", style: TextStyle(fontFamily: robot, fontSize: 1.62*SizeConfig.textMultiplier, fontWeight: FontWeight.bold),),
                                  ),

                                  Container(
                                      margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text: "This policy (together with our ",
                                          style: TextStyle(fontFamily: robot, fontSize: 1.62*SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(text: 'Terms of Use',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 1.62*SizeConfig.textMultiplier,
                                                    decoration: TextDecoration.underline,
                                                    fontFamily: robot
                                                )
                                            ),
                                            TextSpan(text: ') applies to your use of:'),
                                          ],
                                        ),
                                      )
                                  ),

                                  Container(
                                    margin: EdgeInsets.fromLTRB(3.25*SizeConfig.heightMultiplier, 1.62*SizeConfig.heightMultiplier, 0, 1.62*SizeConfig.heightMultiplier),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(1.30*SizeConfig.heightMultiplier),
                                              child: MyBullet(),
                                            ),
                                            Expanded(
                                                child: RichText(
                                                  text: TextSpan(
                                                    text: "Mindamigo mobile application software ",
                                                    style: TextStyle(fontFamily: robot, fontSize: 1.62*SizeConfig.textMultiplier),
                                                    children: <TextSpan>[
                                                      TextSpan(text: "(App)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 1.62*SizeConfig.textMultiplier, fontFamily: robot)),
                                                      TextSpan(text: ' hosted on Apple App store and Android Play stores '),
                                                      TextSpan(text: '(App Sites)',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 1.62*SizeConfig.textMultiplier, fontFamily: robot)),
                                                      TextSpan(text: ', once you have downloaded a copy of the App onto your mobile telephone or handheld device '),
                                                      TextSpan(text: '(Device)',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 1.62*SizeConfig.textMultiplier, fontFamily: robot)),
                                                      TextSpan(text: '. \n'),
                                                    ],
                                                  ),
                                                )
                                            ),

                                          ],
                                        ),
                                        Row(
                                          crossAxisAlignment:CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(1.62*SizeConfig.heightMultiplier),
                                              child: MyBullet(),
                                            ),
                                            Expanded(child: RichText(
                                              text: TextSpan(
                                                text: "Any of the services accessible through the App ",
                                                style: TextStyle(fontFamily: robot, fontSize: 1.62*SizeConfig.textMultiplier),
                                                children: <TextSpan>[
                                                  TextSpan(text: "(Services)",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 1.62*SizeConfig.textMultiplier,
                                                          fontFamily: robot
                                                      )
                                                  ),
                                                  TextSpan(text: ' that is available on the App Site or other sites of ours '),
                                                  TextSpan(text: '(Services Sites)',
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 1.62*SizeConfig.textMultiplier,
                                                          fontFamily: robot
                                                      )
                                                  ),
                                                  TextSpan(text: '. This policy sets out the basis on which any personal data we collect from you, or that you provide to us, will be processed by us. This App is not intended for children and we do not knowingly collect data relating to children. Please read the following carefully to understand our practices regarding your personal data and how we will treat it.'),
                                                ],
                                              ),
                                            ) ),

                                          ],
                                        ),
                                      ],
                                    ),

                                  ),
                                  Container(
                                      margin: EdgeInsets.fromLTRB(0, 0.65*SizeConfig.heightMultiplier, 0, 5.20*SizeConfig.heightMultiplier),
                                      child: RichText(
                                        text: TextSpan(
                                          text: 'This policy is provided in a layered format so you can click through to the specific areas set out below. Alternatively, you can download a pdf version of the',
                                          style: TextStyle(fontFamily: robot, fontSize: 1.62*SizeConfig.textMultiplier),
                                          children: <TextSpan>[
                                            TextSpan(text: 'policy here',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    decoration: TextDecoration.underline,
                                                    fontSize: 1.62*SizeConfig.textMultiplier,
                                                    fontFamily: robot
                                                )
                                            ),
                                          ],
                                        ),
                                      )

                                  ),

                                ],
                              )
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
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [AmigoColors.lightRed,AmigoColors.lightBlue])
              ), child: null,
            ),
            //meet adam
            ListTile(
              leading: Icon(Icons.person, color: AmigoColors.lightBlue,),
              title: Text('Meet Adam',
                style: TextStyle(
                    fontSize:2.27*SizeConfig.textMultiplier,
                    color: AmigoColors.lightBlue,
                    fontFamily: robot,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold
                ),
              ),
              onTap: () {

                Navigator.pushNamed(context, MeetAdamRoute);
              },
            ),
            //about us
            ListTile(
              leading: Icon(Icons.people ,color: AmigoColors.lightBlue,),
              title: Text('About Us',
                style: TextStyle(
                    fontSize:2.27*SizeConfig.textMultiplier,
                    color: AmigoColors.lightBlue,
                    fontFamily: robot,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold
                ),),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pushNamed(context, AboutUsRoute);
              },
            ),
            ListTile(
              leading: Icon(Icons.mic, color: AmigoColors.lightBlue,),
              title: Text('PodCast',
                style: TextStyle(
                    fontSize:2.27*SizeConfig.textMultiplier,
                    color: AmigoColors.lightBlue,
                    fontFamily: robot,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold
                ),),
              onTap: () {

                Navigator.pushNamed(context, PodcastRoute);
              },
            ),
            //podcast
            ListTile(
              leading: Icon(Icons.article_outlined,color: AmigoColors.lightBlue,),
              title: Text('Blog',
                style: TextStyle(
                    fontSize:2.27*SizeConfig.textMultiplier,
                    color: AmigoColors.lightBlue,
                    fontFamily: robot,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold
                ),),
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
              child: Image.asset("assets/images/logo.png", height: 3.18*SizeConfig.heightMultiplier,))
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
                        margin: EdgeInsets.only(top: 6.51*SizeConfig.heightMultiplier),
                        width: MediaQuery.of(context).size.width/1.4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Privacy Policy",
                              style: TextStyle(
                                  fontSize: 2.40*SizeConfig.textMultiplier,
                                  color: Colors.orange,
                                  fontFamily: robot,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 1.95*SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: Strings.privacyPolicy1,
                                    style: TextStyle(fontFamily: robot, fontSize: 1.62*SizeConfig.textMultiplier, color: AmigoColors.lightBlack),
                                    children: <TextSpan>[
                                      TextSpan(text: 'policy',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              decoration: TextDecoration.underline,
                                              fontSize: 1.62*SizeConfig.textMultiplier,
                                              fontFamily: robot
                                          )
                                      ),
                                      TextSpan(text: '  and it is important that you read that information.'),
                                    ],
                                  ),
                                )
                              /*Text(Strings.privacyPolicy1, style: TextStyle(fontFamily: robot, fontSize: 25),),*/
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: Strings.privacyPolicy2,
                                    style: TextStyle(fontFamily: robot, fontSize: 1.62*SizeConfig.textMultiplier,color: AmigoColors.lightBlack),
                                    children: <TextSpan>[
                                      TextSpan(text: 'policy',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              decoration: TextDecoration.underline,
                                              fontSize: 1.62*SizeConfig.textMultiplier,
                                              fontFamily: robot
                                          )
                                      ),

                                    ],
                                  ),
                                )

                            ),
                            Container(
                                margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(fontFamily: robot, fontSize: 1.62*SizeConfig.textMultiplier,color: AmigoColors.lightBlack),
                                    children: <TextSpan>[
                                      TextSpan(text: 'YES ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 1.62*SizeConfig.textMultiplier, fontFamily: robot)),
                                      TextSpan(text: 'I consent to the installation of the App for the purposes of personal use.'),
                                    ],
                                  ),
                                )

                            ),
                            Container(
                                margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(fontFamily: robot, fontSize: 1.62*SizeConfig.textMultiplier,color: AmigoColors.lightBlack),
                                    children: <TextSpan>[
                                      TextSpan(text: 'NO ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 1.62*SizeConfig.textMultiplier, fontFamily: robot)),
                                      TextSpan(text: 'I do not consent to the installation of the App.'),
                                    ],
                                  ),
                                )
                              /*Text(Strings.privacyPolicy1, style: TextStyle(fontFamily: robot, fontSize: 25),),*/
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                              child: Text("How you can withdraw consent", style: TextStyle(fontFamily: robot, fontSize: 1.62*SizeConfig.textMultiplier,color: AmigoColors.lightBlack),),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                              child: Text(Strings.privacyPolicy3, style: TextStyle(fontFamily: robot, fontSize: 1.62*SizeConfig.textMultiplier,color: AmigoColors.lightBlack),),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 1.30*SizeConfig.heightMultiplier),
                              child: Text("Introduction", style: TextStyle(fontFamily: robot, fontSize: 1.62*SizeConfig.textMultiplier, fontWeight: FontWeight.bold,color: AmigoColors.lightBlack),),
                            ),

                            Container(
                                margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: "This policy (together with our ",
                                    style: TextStyle(fontFamily: robot, fontSize: 1.62*SizeConfig.textMultiplier,color: AmigoColors.lightBlack),
                                    children: <TextSpan>[
                                      TextSpan(text: 'Terms of Use',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.62*SizeConfig.textMultiplier,
                                              decoration: TextDecoration.underline,
                                              fontFamily: robot
                                          )
                                      ),
                                      TextSpan(text: ') applies to your use of:'),
                                    ],
                                  ),
                                )
                            ),

                            Container(
                              margin: EdgeInsets.fromLTRB(3.25*SizeConfig.heightMultiplier, 1.62*SizeConfig.heightMultiplier, 0, 1.62*SizeConfig.heightMultiplier),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(1.30*SizeConfig.heightMultiplier),
                                        child: MyBullet(),
                                      ),
                                      Expanded(
                                          child: RichText(
                                            text: TextSpan(
                                              text: "Mindamigo mobile application software ",
                                              style: TextStyle(fontFamily: robot, fontSize: 1.62*SizeConfig.textMultiplier,color: AmigoColors.lightBlack),
                                              children: <TextSpan>[
                                                TextSpan(text: "(App)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 1.62*SizeConfig.textMultiplier, fontFamily: robot)),
                                                TextSpan(text: ' hosted on Apple App store and Android Play stores '),
                                                TextSpan(text: '(App Sites)',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 1.62*SizeConfig.textMultiplier, fontFamily: robot)),
                                                TextSpan(text: ', once you have downloaded a copy of the App onto your mobile telephone or handheld device '),
                                                TextSpan(text: '(Device)',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 1.62*SizeConfig.textMultiplier, fontFamily: robot)),
                                                TextSpan(text: '. \n'),
                                              ],
                                            ),
                                          )
                                      ),

                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(1.62*SizeConfig.heightMultiplier),
                                        child: MyBullet(),
                                      ),
                                      Expanded(child: RichText(
                                        text: TextSpan(
                                          text: "Any of the services accessible through the App ",
                                          style: TextStyle(fontFamily: robot, fontSize: 1.62*SizeConfig.textMultiplier,color: AmigoColors.lightBlack),
                                          children: <TextSpan>[
                                            TextSpan(text: "(Services)",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 1.62*SizeConfig.textMultiplier,
                                                    fontFamily: robot
                                                )
                                            ),
                                            TextSpan(text: ' that is available on the App Site or other sites of ours '),
                                            TextSpan(text: '(Services Sites)',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 1.62*SizeConfig.textMultiplier,
                                                    fontFamily: robot
                                                )
                                            ),
                                            TextSpan(text: '. This policy sets out the basis on which any personal data we collect from you, or that you provide to us, will be processed by us. This App is not intended for children and we do not knowingly collect data relating to children. Please read the following carefully to understand our practices regarding your personal data and how we will treat it.',),
                                          ],
                                        ),
                                      ) ),

                                    ],
                                  ),
                                ],
                              ),

                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(0, 0.65*SizeConfig.heightMultiplier, 0, 5.20*SizeConfig.heightMultiplier),
                                child: RichText(
                                  text: TextSpan(
                                    text: 'This policy is provided in a layered format so you can click through to the specific areas set out below. Alternatively, you can download a pdf version of the',
                                    style: TextStyle(fontFamily: robot, fontSize: 1.62*SizeConfig.textMultiplier,color: AmigoColors.lightBlack),
                                    children: <TextSpan>[
                                      TextSpan(text: 'policy here',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              decoration: TextDecoration.underline,
                                              fontSize: 1.62*SizeConfig.textMultiplier,
                                              fontFamily: robot
                                          )
                                      ),
                                    ],
                                  ),
                                )

                            ),

                          ],
                        )
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
                      circleAmigoHeight: 10.02*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 10.02*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      topCircleAmigoPosition: -5.46*SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition: -10.41*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 18.53*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 18.53*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      topCircleAmigoPosition: -8.71*SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition: -13.67*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04*SizeConfig.heightMultiplier,
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



class MyBullet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      alignment: Alignment.center,
      height: 8.0,
      width: 8.0,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}


