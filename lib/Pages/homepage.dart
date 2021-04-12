import 'package:flutter/material.dart';
import 'package:website/styles/colorsAmigo.dart';
import 'package:website/styles/constants.dart';
import 'package:website/styles/size_config.dart';
import 'package:website/styles/strings.dart';
import 'package:website/utils/responsive_widget.dart';
import 'package:website/widgets/bottombar.dart';
import 'package:website/widgets/gradient_line.dart';
import 'package:website/widgets/navbar.dart';
import 'package:website/widgets/section.dart';
import 'package:website/widgets/title.dart';
import 'package:website/widgets/videoAndDisc.dart';
import 'package:flutter_web_scrollbar/flutter_web_scrollbar.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _controller;
  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    super.initState();
  }

  void scrollCallBack(DragUpdateDetails dragUpdate) {
    setState(() {
      // Note: 3.5 represents the theoretical height of all my scrollable content. This number will vary for you.
      _controller.position.moveTo(dragUpdate.globalPosition.dy * 3.5);
    });
  }
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isDesktop(context)?
    Stack(
      children: [
        Container(
          child: SingleChildScrollView(
            controller: _controller,
            child: Container(
              child: Column(
                children: [
                  NavBar(),
                  GradientLine(),
                  TitleSection(),
                  HomeSection(
                    sectionHeight: 26.15*SizeConfig.heightMultiplier,
                    sectionColor: AmigoColors.cream,
                    sectionAlign: Alignment.centerLeft,
                    sectionPositionLeft: 7.8*SizeConfig.heightMultiplier,
                    sectionText: Strings.homeSection1,
                    sectionTextColor: AmigoColors.lightBlack,
                    sectionFontSize: 2.4*SizeConfig.textMultiplier,
                  ),
                  HomeSection(
                    sectionHeight: 26.15*SizeConfig.heightMultiplier,
                    sectionColor: Colors.white,
                    sectionAlign: Alignment.centerRight,
                    sectionPositionRight: 9.11*SizeConfig.heightMultiplier,
                    sectionText: Strings.homeSection2,
                    sectionTextColor: AmigoColors.lightBlack,
                    sectionFontSize: 2.4*SizeConfig.textMultiplier,
                  ),
                  HomeSection(
                    sectionHeight: 26.15*SizeConfig.heightMultiplier,
                    sectionColor: AmigoColors.cream,
                    sectionAlign: Alignment.centerLeft,
                    sectionPositionLeft: 7.8*SizeConfig.heightMultiplier,
                    sectionText: Strings.homeSection3,
                    sectionTextColor: AmigoColors.lightBlack,
                    sectionFontSize: 2.4*SizeConfig.textMultiplier,
                  ),
                  HomeSection(
                    sectionHeight: 26.15*SizeConfig.heightMultiplier,
                    sectionColor: Colors.white,
                    sectionAlign: Alignment.centerRight,
                    sectionPositionRight: 9.11*SizeConfig.heightMultiplier,
                    sectionText: Strings.homeSection4,
                    sectionTextColor: AmigoColors.lightBlack,
                    sectionFontSize: 2.4*SizeConfig.textMultiplier,
                  ),
                  VideoDisc(),
                  BottomNav(),




                ],
              ),
            ),
          ),
        ),
        FlutterWebScroller(
          //Pass a reference to the ScrollCallBack function into the scrollbar
          scrollCallBack,

          //Add optional values
          scrollBarBackgroundColor: Colors.white,
          scrollBarWidth: 20.0,
          dragHandleColor: AmigoColors.lightblue1,
          dragHandleBorderRadius: 2.0,
          dragHandleHeight: 40.0,
          dragHandleWidth: 15.0,
        ),
      ],

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
              MobileHomeSection(
                sectionTextColor: AmigoColors.lightBlack,
                sectionHeight: 20.02*SizeConfig.heightMultiplier,
                sectionFontSize: 2.82*SizeConfig.textMultiplier,
                sectionText: Strings.homeSection1,
                sectionColor:AmigoColors.cream ,
              ),
              MobileHomeSection(
                sectionTextColor:AmigoColors.lightBlack,
                sectionHeight: 20.02*SizeConfig.heightMultiplier,
                sectionFontSize: 2.82*SizeConfig.textMultiplier,
                sectionText: Strings.homeSection2,
                sectionColor:Colors.white ,
              ),
              MobileHomeSection(
                sectionTextColor: AmigoColors.lightBlack,
                sectionHeight: 20.02*SizeConfig.heightMultiplier,
                sectionFontSize: 2.82*SizeConfig.textMultiplier,
                sectionText: Strings.homeSection3,
                sectionColor:AmigoColors.cream ,
              ),
              MobileHomeSection(
                sectionTextColor: AmigoColors.lightBlack,
                sectionHeight: 20.02*SizeConfig.heightMultiplier,
                sectionFontSize: 2.82*SizeConfig.textMultiplier,
                sectionText: Strings.homeSection4,
                sectionColor:Colors.white ,
              ),
              VideoDisc(),
              MobileBottomNav(),

            ],
          ),
        ),
      ),
    );
  }
}
