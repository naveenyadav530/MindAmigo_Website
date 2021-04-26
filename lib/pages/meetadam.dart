import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/utils/responsiveLayout.dart';
import 'package:mindamigo/utils/size_config.dart';
import 'package:mindamigo/widgets/adamAdvisory.dart';
import 'package:mindamigo/widgets/adamWidget.dart';
import 'package:mindamigo/widgets/bottombar.dart';
import 'package:mindamigo/widgets/gradientLine.dart';
import 'package:mindamigo/widgets/navbar.dart';






class MeetAdam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      webBody: WebMeetAdam(),
      mobileBody: MobileMeetAdam(),

    );
  }
}


//web MeetAdam
class WebMeetAdam extends StatefulWidget {
  @override
  _WebMeetAdamState createState() => _WebMeetAdamState();
}

class _WebMeetAdamState extends State<WebMeetAdam> {
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
      children:
          [
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
                        AdamBlog(),
                        AdamAdvisory(),
                        BottomNav(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]

    );
  }
}

//MobileMeetAdam
class MobileMeetAdam extends StatefulWidget {
  @override
  _MobileMeetAdamState createState() => _MobileMeetAdamState();
}
class _MobileMeetAdamState extends State<MobileMeetAdam> {
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
              AdamBlog(),
              AdamAdvisory(),
              BottomNav(),

            ],
          ),
        ),
      ),
    );
  }
}

