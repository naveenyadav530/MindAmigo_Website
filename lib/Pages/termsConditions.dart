import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:website/styles/constants.dart';
import 'package:website/styles/size_config.dart';
import 'package:website/utils/responsive_widget.dart';
import 'package:website/widgets/bottombar.dart';
import 'package:website/widgets/gradient_line.dart';
import 'package:website/widgets/navbar.dart';

class TermsConditions extends StatefulWidget {
  @override
  _TermsConditionsState createState() => _TermsConditionsState();
}

class _TermsConditionsState extends State<TermsConditions> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isDesktop(context)?SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            NavBar(),
            GradientLine(),
            Container(
              margin: EdgeInsets.only(top: 6.51*SizeConfig.heightMultiplier),
              width: MediaQuery.of(context).size.width/1.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:EdgeInsets.only(left: 0.65*SizeConfig.heightMultiplier),
                    child: Text("Terms and Conditions", style: TextStyle(fontSize: 2.40*SizeConfig.heightMultiplier, color: Colors.orange, fontFamily: robot, fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    height: 78.10*SizeConfig.heightMultiplier,
                    child: ListView(
                      padding: EdgeInsets.symmetric(vertical: 0.52*SizeConfig.heightMultiplier),
                      children: [
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
                          padding: const EdgeInsets.only(bottom: 50),
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
                          padding: const EdgeInsets.only(bottom: 50),
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
                  )

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
