import 'package:flutter/material.dart';
import 'package:website/styles/size_config.dart';
import 'package:website/styles/strings.dart';
import 'package:website/utils/responsive_widget.dart';
import 'package:website/widgets/gradient_line.dart';
import 'package:website/widgets/navbar.dart';
import 'package:website/widgets/section.dart';
import 'package:website/widgets/title.dart';
import 'package:website/widgets/videoAndDisc.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isDesktop(context)?SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            NavBar(),
            GradientLine(),
            TitleSection(),
            HomeSection(
              sectionHeight: 26.15*SizeConfig.heightMultiplier,
              sectionColor: Color(0xffFDF2E4),
              sectionAlign: Alignment.centerLeft,
              sectionPositionLeft: 120,
              sectionText: Strings.homeSection1,
              sectionTextColor: Color(0xff707070),
              sectionFontSize: 37,
            ),
            HomeSection(
              sectionHeight: 26.15*SizeConfig.heightMultiplier,
              sectionColor: Colors.white,
              sectionAlign: Alignment.centerRight,
              sectionPositionRight: 140,
              sectionText: Strings.homeSection2,
              sectionTextColor: Color(0xff707070),
              sectionFontSize: 37,
            ),
            HomeSection(
              sectionHeight: 26.15*SizeConfig.heightMultiplier,
              sectionColor: Color(0xffFDF2E4),
              sectionAlign: Alignment.centerLeft,
              sectionPositionLeft: 120,
              sectionText: Strings.homeSection3,
              sectionTextColor: Color(0xff707070),
              sectionFontSize: 37,
            ),
            HomeSection(
              sectionHeight: 26.15*SizeConfig.heightMultiplier,
              sectionColor: Colors.white,
              sectionAlign: Alignment.centerRight,
              sectionPositionRight: 140,
              sectionText: Strings.homeSection4,
              sectionTextColor: Color(0xff707070),
              sectionFontSize: 37,
            ),
            VideoDisc(),




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
              TitleSection(),

            ],
          ),
        ),
      ),
    );
  }
}
