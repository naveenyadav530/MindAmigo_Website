import 'package:flutter/material.dart';
import 'package:website/Config/responsive_widget.dart';
import 'package:website/Config/size_config.dart';
import 'package:website/Config/strings.dart';
import 'package:website/Pages/Widgets/act.dart';
import 'package:website/Pages/Widgets/cbt.dart';
import 'package:website/Pages/Widgets/gradient_line.dart';
import 'package:website/Pages/Widgets/navbar.dart';
import 'package:website/Pages/Widgets/title.dart';
import 'package:website/Pages/Widgets/videoAndDisc.dart';

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
            ACT(),
            CBT(),
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



        title: RichText(
          text: TextSpan(children: <TextSpan>[
            TextSpan( text: Strings.mindLogo, style: TextStyle(color: Color(0xff41b0e1),fontFamily: "Fredoka", fontSize: 3.2*SizeConfig.textMultiplier),),
            TextSpan(text: Strings.amigoLogo ,style: TextStyle(fontFamily: "Fredoka",color: Color(0xffe75e5e),fontSize: 3.2*SizeConfig.textMultiplier))
          ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              GradientLine(),
              TitleSection(),
              ACT(),
              CBT(),

            ],
          ),
        ),
      ),
    );
  }
}
