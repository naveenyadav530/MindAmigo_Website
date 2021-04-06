import 'package:flutter/material.dart';
import 'package:website/styles/colorsAmigo.dart';
import 'package:website/styles/constants.dart';
import 'package:website/styles/size_config.dart';
import 'package:website/styles/strings.dart';
import 'package:website/utils/responsive_widget.dart';
import 'package:website/widgets/act.dart';
import 'package:website/widgets/bottombar.dart';
import 'package:website/widgets/cbt.dart';
import 'package:website/widgets/circles.dart';
import 'package:website/widgets/gradient_line.dart';
import 'package:website/widgets/navbar.dart';
import 'package:website/widgets/newsletter.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isDesktop(context)?SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            NavBar(),
            GradientLine(),
            Container(
              color: AmigoColors.cream,
                height: 32.55*SizeConfig.heightMultiplier,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/2,
                      child: Text(Strings.aboutus, style: TextStyle(fontWeight: FontWeight.bold, fontFamily: robot, fontSize: 2.08*SizeConfig.textMultiplier),),
                    ),
                    //left circle
                    CircleAmigo(
                      leftCircleAmigoPosition: -6.51*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 9.7*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 9.7*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.5, 0.5],
                    ),
                    CircleAmigo(
                      leftCircleAmigoPosition: -7.81*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.4, 0.4],
                    ),
                    CircleAmigo(
                      leftCircleAmigoPosition: -9.11*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 16.27*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 16.27*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.3, 0.3],
                    ),
                    //corner circle
                    CircleAmigo(
                      rightCircleAmigoPosition: -6.51*SizeConfig.heightMultiplier,
                      topCircleAmigoPosition: -3.25*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 9.7*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 9.7*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.3, 0.3],
                    ),
                    CircleAmigo(
                      rightCircleAmigoPosition: -7.81*SizeConfig.heightMultiplier,
                      topCircleAmigoPosition: -4.55*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.3, 0.3],
                    ),
                    CircleAmigo(
                      rightCircleAmigoPosition: -9.11*SizeConfig.heightMultiplier,
                      topCircleAmigoPosition: -5.85*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 16.27*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 16.27*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.3, 0.3],
                    )
                  ],
                )
            ),
            ACT(),
            CBT(),
            //newsletter
            NewsLetter(),
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
