import 'package:flutter/cupertino.dart';
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


class MeetAdam extends StatefulWidget {
  @override
  _MeetAdamState createState() => _MeetAdamState();
}

class _MeetAdamState extends State<MeetAdam> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isDesktop(context)?SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            NavBar(),
            GradientLine(),
            Container(
              width: MediaQuery.of(context).size.width,
              color: AmigoColors.cream,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 3.55*SizeConfig.heightMultiplier),
                    child:CircleAvatar(
                      radius:5.55*SizeConfig.heightMultiplier,
                      backgroundImage: AssetImage("assets/images/adam.png"),
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 3.90*SizeConfig.heightMultiplier),
                    child: Text(Strings.myNameIsAdam, style: TextStyle(color: AmigoColors.orange, fontFamily: robot, fontSize: 2.40*SizeConfig.textMultiplier),),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                    child: Text(Strings.manyPeopleAsk,textAlign: TextAlign.center, style: TextStyle(color: AmigoColors.orange, fontFamily: robot, fontSize: 2.40*SizeConfig.textMultiplier, fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 1.30*SizeConfig.heightMultiplier),
                    width: MediaQuery.of(context).size.width/1.5,
                    child: Text(Strings.meetAdamPara,textAlign: TextAlign.center,style: TextStyle(fontSize: 1.62*SizeConfig.textMultiplier),),
                  ),
                  SizedBox(height: 3.25*SizeConfig.heightMultiplier,)
                ],
              ),
            ),
            Container(
              color: AmigoColors.lightWhite,
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 3.25*SizeConfig.heightMultiplier),
                    child:Text("Advisory Board", style: TextStyle(color: AmigoColors.lightBrown, fontSize: 4.10*SizeConfig.textMultiplier, fontWeight: FontWeight.bold),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.25*SizeConfig.heightMultiplier),
                            child: CircleAvatar(
                              radius: 6.55*SizeConfig.heightMultiplier,
                              backgroundColor: Colors.white,
                            ),
                          ),

                          Text("Description", style: TextStyle(fontSize: 2.08*SizeConfig.textMultiplier,)),
                        ],
                      ),
                      Column(

                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.25*SizeConfig.heightMultiplier),
                            child: CircleAvatar(
                              radius: 6.55*SizeConfig.heightMultiplier,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Text("Description", style: TextStyle(fontSize: 2.08*SizeConfig.textMultiplier,)),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.25*SizeConfig.heightMultiplier),
                            child: CircleAvatar(
                              radius: 6.55*SizeConfig.heightMultiplier,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Text("Description", style: TextStyle(fontSize: 2.08*SizeConfig.textMultiplier,),),
                        ],
                      )


                    ],
                  ),
                  SizedBox(height: 19.53*SizeConfig.heightMultiplier,)
                ],
              ),
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
