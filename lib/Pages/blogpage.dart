import 'package:flutter/cupertino.dart';
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

class BlogPage extends StatefulWidget {
  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isDesktop(context)?SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            NavBar(),
            GradientLine(),
            Container(
              alignment: Alignment.center,
              color: AmigoColors.lightWhite,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/1.4,
                        height: 700,
                        margin: EdgeInsets.only(top: 80),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width:300,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Image.asset("assets/images/blogImage1.png"),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    child: Text("What to do when anxiety strikes", style: TextStyle(color: AmigoColors.orange, fontSize: 40, fontFamily: robot),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text("21/8/19", style: TextStyle(color: AmigoColors.orange, fontSize: 20, fontFamily: robot),),
                                  ),
                                  Container(
                                    child: Text(Strings.blogContent, style: TextStyle(fontSize: 20, fontFamily: robot),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text("Read More>", style: TextStyle(fontFamily: robot, fontWeight: FontWeight.bold, fontSize: 20),),
                                  ),

                                ],
                              ),
                            ),
                            Container(
                              width:300,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Image.asset("assets/images/blogImage2.png"),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    child: Text("What to do when anxiety strikes", style: TextStyle(color: AmigoColors.orange, fontSize: 40, fontFamily: robot),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text("21/8/19", style: TextStyle(color: AmigoColors.orange, fontSize: 20, fontFamily: robot),),
                                  ),
                                  Container(
                                    child: Text(Strings.blogContent, style: TextStyle(fontSize: 20, fontFamily: robot),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text("Read More>", style: TextStyle(fontFamily: robot, fontWeight: FontWeight.bold, fontSize: 20),),
                                  ),

                                ],
                              ),
                            ),
                            Container(
                              width:300,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Image.asset("assets/images/blogImage3.png"),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    child: Text("What to do when anxiety strikes", style: TextStyle(color: AmigoColors.orange, fontSize: 40, fontFamily: robot),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text("21/8/19", style: TextStyle(color: AmigoColors.orange, fontSize: 20, fontFamily: robot),),
                                  ),
                                  Container(
                                    child: Text(Strings.blogContent, style: TextStyle(fontSize: 20, fontFamily: robot),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text("Read More>", style: TextStyle(fontFamily: robot, fontWeight: FontWeight.bold, fontSize: 20),),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/1.4,
                        height: 700,
                        margin: EdgeInsets.only(top: 80),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width:300,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Image.asset("assets/images/blogImage1.png"),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    child: Text("What to do when anxiety strikes", style: TextStyle(color: AmigoColors.orange, fontSize: 40, fontFamily: robot),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text("21/8/19", style: TextStyle(color: AmigoColors.orange, fontSize: 20, fontFamily: robot),),
                                  ),
                                  Container(
                                    child: Text(Strings.blogContent, style: TextStyle(fontSize: 20, fontFamily: robot),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text("Read More>", style: TextStyle(fontFamily: robot, fontWeight: FontWeight.bold, fontSize: 20),),
                                  ),

                                ],
                              ),
                            ),
                            Container(
                              width:300,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Image.asset("assets/images/blogImage2.png"),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    child: Text("What to do when anxiety strikes", style: TextStyle(color: AmigoColors.orange, fontSize: 40, fontFamily: robot),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text("21/8/19", style: TextStyle(color: AmigoColors.orange, fontSize: 20, fontFamily: robot),),
                                  ),
                                  Container(
                                    child: Text(Strings.blogContent, style: TextStyle(fontSize: 20, fontFamily: robot),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text("Read More>", style: TextStyle(fontFamily: robot, fontWeight: FontWeight.bold, fontSize: 20),),
                                  ),

                                ],
                              ),
                            ),
                            Container(
                              width:300,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Image.asset("assets/images/blogImage3.png"),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    child: Text("What to do when anxiety strikes", style: TextStyle(color: AmigoColors.orange, fontSize: 40, fontFamily: robot),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text("21/8/19", style: TextStyle(color: AmigoColors.orange, fontSize: 20, fontFamily: robot),),
                                  ),
                                  Container(
                                    child: Text(Strings.blogContent, style: TextStyle(fontSize: 20, fontFamily: robot),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text("Read More>", style: TextStyle(fontFamily: robot, fontWeight: FontWeight.bold, fontSize: 20),),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 80),

                        width: 300,
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("More recent posts", style: TextStyle(fontSize: 30, fontFamily: robot, fontWeight: FontWeight.bold),),
                            InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, BlogArticleRoute);
                                },
                                child: Image.asset("assets/images/dropDown.png",height: 50, width: 50,)
                            ),
                          ],
                        ),
                      )


                    ],
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


              MobileBottomNav(),

            ],
          ),
        ),
      ),
    );
  }
}
