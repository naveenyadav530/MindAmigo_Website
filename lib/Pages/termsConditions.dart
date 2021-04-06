import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
              alignment:Alignment.topLeft ,
              height: 1200,
              margin: EdgeInsets.symmetric(vertical: 50),
              width: MediaQuery.of(context).size.width/1.5,
              color: Colors.blue,
              child: Column(
                children: [
                  Text("Terms and Conditions",style:TextStyle(fontSize: 37, color: Color(0xffED8000))),
                  //head
                  Row(
                    children: [
                      Text("1.", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      SizedBox(width: 20,),
                      Text("These Terms", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
                    ],
                  ),

                  //info
                  Row(
                    children: [
                      Text("1.1.",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      SizedBox(width: 20,),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text: 'What these terms cover.',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                          children: <TextSpan>[
                            TextSpan(text: 'These are the terms and conditions on which we supply products in the form of the Mindamigo app (the App) to you.',style: TextStyle(fontSize: 25)),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text("1."),
                      SizedBox(width: 20,),
                      Text("These Terms", )
                    ],
                  )

                ],
              ),),
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
