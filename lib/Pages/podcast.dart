import 'package:flutter/material.dart';
import 'package:website/styles/colorsAmigo.dart';
import 'package:website/styles/constants.dart';
import 'package:website/styles/size_config.dart';
import 'package:website/styles/strings.dart';
import 'package:website/utils/responsive_widget.dart';
import 'package:website/widgets/bottombar.dart';
import 'package:website/widgets/gradient_line.dart';
import 'package:website/widgets/navbar.dart';
import 'package:website/widgets/newsletter.dart';
import 'package:website/widgets/title.dart';


class PodCast extends StatefulWidget {
  @override
  _PodCastState createState() => _PodCastState();
}

class _PodCastState extends State<PodCast> {
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
              height: 900,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top:80,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
                      alignment: Alignment.center,
                      height: 600,
                      width: MediaQuery.of(context).size.width/1.5,
                      child: Text(Strings.podcastCenter,style: TextStyle(fontSize: 26, fontFamily: robot, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Positioned(
                    bottom: 100,
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: MediaQuery.of(context).size.width/1.8,
                      child: Text(Strings.podcastBottom,textAlign: TextAlign.center,style: TextStyle(fontSize: 26, fontFamily: robot, fontWeight: FontWeight.bold)),),
                  ),

                ],
              )
            ),
            Container(
              height: 22.78*SizeConfig.heightMultiplier,
              color: AmigoColors.lightWhite,
              child: Text("Hello World"),
            ),

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
                      colors: [AmigoColors.lightRed,AmigoColors.lightBlue])
              ), child: null,
            ),
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

                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pushNamed(context, TermsConditionRoute);
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
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
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
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),


      appBar: AppBar(
          iconTheme: IconThemeData(color: AmigoColors.lightBlue),
          backgroundColor: Colors.white,
          title: Image.asset("assets/images/logo.png", height: 3.18*SizeConfig.heightMultiplier,)
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              GradientLine(),
              TitleSection(),

              MobileBottomNav(),

            ],
          ),
        ),
      ),
    );
  }
}
