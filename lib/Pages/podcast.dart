import 'package:flutter/material.dart';
import 'package:website/styles/colorsAmigo.dart';
import 'package:website/styles/constants.dart';
import 'package:website/styles/size_config.dart';
import 'package:website/styles/strings.dart';
import 'package:website/utils/responsive_widget.dart';
import 'package:website/widgets/bottombar.dart';
import 'package:website/widgets/circles.dart';
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
                      child:RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Available to listen on ',
                          style: TextStyle( fontSize: 26, fontFamily: robot),
                          children: <TextSpan>[
                            TextSpan(text: 'Spotify,', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, fontFamily: robot, decoration: TextDecoration.underline)),
                            TextSpan(text: ' '),
                            TextSpan(text: 'Apple Podcasts, ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, fontFamily: robot,decoration: TextDecoration.underline)),
                            TextSpan(text: ' '),
                            TextSpan(text: 'Google Podcasts ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, fontFamily: robot,decoration: TextDecoration.underline)),
                            TextSpan(text: ' '),
                            TextSpan(text: 'and '),
                            TextSpan(text: ' '),
                            TextSpan(text: 'RSS Feed', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, fontFamily: robot,decoration: TextDecoration.underline )),
                          ],
                        ),
                      ) /*Text(Strings.podcastBottom,textAlign: TextAlign.center,style: TextStyle(fontSize: 26, fontFamily: robot, fontWeight: FontWeight.bold))*/
                    ),
                  ),
                  //left circle
                  CircleAmigo(
                    leftCircleAmigoPosition: -7.8*SizeConfig.heightMultiplier,
                    bottomCircleAmigoPosition: 9.11*SizeConfig.heightMultiplier,
                    circleAmigoWidth: 9.7*SizeConfig.heightMultiplier,
                    circleAmigoHeight: 9.7*SizeConfig.heightMultiplier,
                    circleAmigoGradient: [AmigoColors.lightBlue, AmigoColors.green],
                    circleAmigoOpacity: [0.5, 0.5],
                  ),
                  CircleAmigo(
                    leftCircleAmigoPosition: -7.8*SizeConfig.heightMultiplier,
                    bottomCircleAmigoPosition: 7.8*SizeConfig.heightMultiplier,
                    circleAmigoWidth: 16.27*SizeConfig.heightMultiplier,
                    circleAmigoHeight: 16.27*SizeConfig.heightMultiplier,
                    circleAmigoGradient: [AmigoColors.lightblue1, AmigoColors.green],
                    circleAmigoOpacity: [0.4, 0.5],
                  ),
                  CircleAmigo(
                    leftCircleAmigoPosition: -9.11*SizeConfig.heightMultiplier,
                    bottomCircleAmigoPosition: 6.51*SizeConfig.heightMultiplier,
                    circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
                    circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
                    circleAmigoGradient: [AmigoColors.lightblue1, AmigoColors.green],
                    circleAmigoOpacity: [0.3, 0.5],
                  ),

                ],
              )
            ),

            //Get In Touch
            Container(
             // height: //22.78*SizeConfig.heightMultiplier,
              width: MediaQuery.of(context).size.width,
              color: AmigoColors.lightWhite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 20*SizeConfig.heightMultiplier,
                    width: MediaQuery.of(context).size.width/2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //get in touch
                        Container(
                            alignment: Alignment.topLeft,
                            child: Text("Get In Touch", style: TextStyle(fontSize: 51, fontFamily: robot),)
                        ),
                        //text send us note
                        Container(
                            alignment: Alignment.topLeft,
                            child: RichText(
                              text: TextSpan(
                                text: 'Got a question or a mental health topic that you’d like to hear about in the podcast?',
                                style: TextStyle( fontSize: 28, fontFamily: robot),
                                children: <TextSpan>[
                                  TextSpan(text: ' Send us a note below', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, fontFamily: robot)),
                                ],
                              ),
                            )
                        ),
                        //name and email
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 8.0),
                          width: MediaQuery.of(context).size.width/2.5,
                          height: 70,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Positioned(
                                  left:20,
                                  child: Text("Name")),
                              Positioned(
                                  right:230,
                                  child: Text("Email")),
                              Positioned(
                                left: 0,
                                bottom: 0,
                                child: Container(
                                  width: 280,
                                    child:TextField(
                                  decoration: InputDecoration(
                                    isDense: true,
                                    filled: true,
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black26),
                                        borderRadius: BorderRadius.all(Radius.circular(10)
                                        )
                                    ),
                                    focusedBorder:OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                        borderRadius: BorderRadius.all(Radius.circular(10)
                                        )
                                    ),
                                    hintText: 'Adam Chadwick',
                                  ),
                                ),
                              ),),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 280,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      isDense: true,
                                      filled: true,
                                      fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black26),
                                          borderRadius: BorderRadius.all(Radius.circular(10)
                                          )
                                      ),
                                      focusedBorder:OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.transparent),
                                          borderRadius: BorderRadius.all(Radius.circular(10)
                                          )
                                      ),
                                      hintText: 'adam.chadwick221@gmail.com',
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                        //message
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text("Message")),
                        //message edit text with button
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 8.0),
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    isDense: true,
                                    filled: true,
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black26),
                                        borderRadius: BorderRadius.all(Radius.circular(10)
                                        )
                                    ),
                                    focusedBorder:OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                        borderRadius: BorderRadius.all(Radius.circular(10)
                                        )
                                    ),
                                    hintText: 'Adam Chadwick',
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 15),
                                height: 40,
                                width: 120,
                                child: ElevatedButton(

                                  child: Text("Send" ,style: TextStyle(fontSize: 1.3*SizeConfig.textMultiplier, fontFamily: robot, fontWeight: FontWeight.bold),),
                                  onPressed: () => print("it's pressed"),
                                  style: ElevatedButton.styleFrom(
                                    primary: AmigoColors.lightBrown,
                                    onPrimary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
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
