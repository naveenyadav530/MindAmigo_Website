import 'package:flutter/material.dart';
import 'package:website/styles/constants.dart';
import 'package:website/styles/size_config.dart';
import 'package:website/styles/strings.dart';
import 'package:website/utils/responsive_widget.dart';
import 'package:website/widgets/bottombar.dart';
import 'package:website/widgets/gradient_line.dart';
import 'package:website/widgets/navbar.dart';

class PrivacyPolicy extends StatefulWidget {
  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
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

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isDesktop(context)?SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            NavBar(),
            GradientLine(),
            Container(
                margin: EdgeInsets.only(top: 100),
                width: MediaQuery.of(context).size.width/1.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Privacy Policy", style: TextStyle(fontSize: 37, color: Colors.orange, fontFamily: robot, fontWeight: FontWeight.bold),),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: RichText(
                        text: TextSpan(
                          text: Strings.privacyPolicy1,
                          style: TextStyle(fontFamily: robot, fontSize: 25),
                          children: <TextSpan>[
                            TextSpan(text: 'policy', style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline, fontSize: 25, fontFamily: robot)),
                            TextSpan(text: '  and it is important that you read that information.'),
                          ],
                        ),
                      )
                      /*Text(Strings.privacyPolicy1, style: TextStyle(fontFamily: robot, fontSize: 25),),*/
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        child: RichText(
                          text: TextSpan(
                            text: Strings.privacyPolicy2,
                            style: TextStyle(fontFamily: robot, fontSize: 25),
                            children: <TextSpan>[
                              TextSpan(text: 'policy', style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline, fontSize: 25, fontFamily: robot)),

                            ],
                          ),
                        )
                      /*Text(Strings.privacyPolicy1, style: TextStyle(fontFamily: robot, fontSize: 25),),*/
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontFamily: robot, fontSize: 25),
                            children: <TextSpan>[
                              TextSpan(text: 'YES ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, fontFamily: robot)),
                              TextSpan(text: 'I consent to the installation of the App for the purposes of personal use.'),
                            ],
                          ),
                        )
                      /*Text(Strings.privacyPolicy1, style: TextStyle(fontFamily: robot, fontSize: 25),),*/
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontFamily: robot, fontSize: 25),
                            children: <TextSpan>[
                              TextSpan(text: 'NO ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, fontFamily: robot)),
                              TextSpan(text: 'I do not consent to the installation of the App.'),
                            ],
                          ),
                        )
                      /*Text(Strings.privacyPolicy1, style: TextStyle(fontFamily: robot, fontSize: 25),),*/
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text("How you can withdraw consent", style: TextStyle(fontFamily: robot, fontSize: 25),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(Strings.privacyPolicy3, style: TextStyle(fontFamily: robot, fontSize: 25),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text("Introduction", style: TextStyle(fontFamily: robot, fontSize: 25, fontWeight: FontWeight.bold),),
                    ),

                    Container(
                        margin: EdgeInsets.only(top: 10),
                        child: RichText(
                          text: TextSpan(
                            text: "This policy (together with our ",
                            style: TextStyle(fontFamily: robot, fontSize: 25),
                            children: <TextSpan>[
                              TextSpan(text: 'Terms of Use', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, decoration: TextDecoration.underline, fontFamily: robot)),
                              TextSpan(text: ') applies to your use of:'),
                            ],
                          ),
                        )
                      /*Text(Strings.privacyPolicy1, style: TextStyle(fontFamily: robot, fontSize: 25),),*/
                    ),

                    Container(
                      height: 300,
                      margin: EdgeInsets.only(left: 30),
                      child: ListView(
                        padding: EdgeInsets.symmetric(vertical: 0.52*SizeConfig.heightMultiplier),
                        children: [
                          ListTile(
                            leading: ExcludeSemantics(
                              child: MyBullet(),
                            ),
                            title: RichText(
                              text: TextSpan(
                                text: "Mindamigo mobile application software ",
                                style: TextStyle(fontFamily: robot, fontSize: 25),
                                children: <TextSpan>[
                                  TextSpan(text: "(App)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, fontFamily: robot)),
                                  TextSpan(text: ' hosted on Apple App store and Android Play stores '),
                                  TextSpan(text: '(App Sites)',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, fontFamily: robot)),
                                  TextSpan(text: ', once you have downloaded a copy of the App onto your mobile telephone or handheld device '),
                                  TextSpan(text: '(Device)',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, fontFamily: robot)),
                                  TextSpan(text: '.'),
                                ],
                              ),
                            )
                            /*Text("These Terms ",style: TextStyle(fontSize:1.62*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, fontFamily: robot),),*/
                          ),
                          ListTile(
                              leading: ExcludeSemantics(
                                child: MyBullet(),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: "Any of the services accessible through the App ",
                                  style: TextStyle(fontFamily: robot, fontSize: 25),
                                  children: <TextSpan>[
                                    TextSpan(text: "(Services)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, fontFamily: robot)),
                                    TextSpan(text: ' that is available on the App Site or other sites of ours '),
                                    TextSpan(text: '(Services Sites)',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, fontFamily: robot)),
                                    TextSpan(text: '. This policy sets out the basis on which any personal data we collect from you, or that you provide to us, will be processed by us. This App is not intended for children and we do not knowingly collect data relating to children. Please read the following carefully to understand our practices regarding your personal data and how we will treat it.'),
                                  ],
                                ),
                              )
                            /*Text("These Terms ",style: TextStyle(fontSize:1.62*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, fontFamily: robot),),*/
                          ),


                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 80),
                        child: RichText(
                          text: TextSpan(
                            text: 'This policy is provided in a layered format so you can click through to the specific areas set out below. Alternatively, you can download a pdf version of the',
                            style: TextStyle(fontFamily: robot, fontSize: 25),
                            children: <TextSpan>[
                              TextSpan(text: 'policy here', style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline, fontSize: 25, fontFamily: robot)),
                            ],
                          ),
                        )

                    ),

                  ],
                )
            ),
            BottomNav(),




          ],
        ),
      ),
    ):

    Scaffold(
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xffe75e5e), Color(0xff457ea5)])
              ),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Color(0xff41b0e1),),

              title: Text('Meet Adam',
                style: TextStyle(
                    fontSize:2.27*SizeConfig.textMultiplier,
                    color: Color(0xff41b0e1),
                    fontFamily: "Robot",
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.mic, color: Color(0xff41b0e1),),
              title: Text('PodCast',
                style: TextStyle(
                    fontSize:2.27*SizeConfig.textMultiplier,
                    color: Color(0xff41b0e1),
                    fontFamily: "Robot",
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold
                ),),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.article_outlined,color: Color(0xff41b0e1),),
              title: Text('Blog',
                style: TextStyle(
                    fontSize:2.27*SizeConfig.textMultiplier,
                    color: Color(0xff41b0e1),
                    fontFamily: "Robot",
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold
                ),),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),


      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.blue),
          backgroundColor: Colors.white,
          title: Image.asset("assets/images/logo.png", height: 3.18*SizeConfig.heightMultiplier,)
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              GradientLine(),
              MobileBottomNav(),

            ],
          ),
        ),
      ),
    );
  }
}
