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



class BlogArticle extends StatefulWidget {
  @override
  _BlogArticleState createState() => _BlogArticleState();
}

class _BlogArticleState extends State<BlogArticle> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isDesktop(context)?SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            NavBar(),
            GradientLine(),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Container(
                    color:Colors.white,
                    width: MediaQuery.of(context).size.width/2,
                    child: Column(
                      children: [
                        //title
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Text("What to do when anxiety strikes", style: TextStyle(color: AmigoColors.orange, fontSize: 56, fontFamily: robot),),
                        ),
                        //image
                        Padding(
                          padding: const EdgeInsets.only(top:20),
                          child: Image.asset("assets/images/blogImage4.png"),
                        ),
                        //heading
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            child: RichText(
                              text: TextSpan(
                                text: "There is no miracle cure for dealing with mental health. ",
                                style: TextStyle(fontFamily: robot, fontSize: 37),
                                children: <TextSpan>[
                                  TextSpan(text: 'No one size fits all approach. ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 37, fontFamily: robot)),
                                  TextSpan(text: 'No one technique or idea that will work for everyone.'),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Container(
                            padding: EdgeInsets.only(bottom: 100),
                            child:  RichText(
                              text: TextSpan(

                                style: TextStyle(fontFamily: robot, fontSize: 25),
                                children: <TextSpan>[
                                  TextSpan(text: 'Mindamigo', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, fontFamily: robot)),
                                  TextSpan(text: Strings.blogContentMain),

                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: Container(
                            alignment: Alignment.center,
                            
                            width: 250,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Share", style: TextStyle(color: AmigoColors.lightblue1, fontSize: 24, fontFamily: robot ),),
                                Image.asset("assets/images/facebook.png",height: 37, width: 37,),
                                Image.asset("assets/images/twitter.png",height: 37, width: 37,),
                                Image.asset("assets/images/mail.png",height: 37, width: 37,)
                              ],
                            ),
                          ),
                        )

                      ],
                    ),
                  )
                ],
              ),
            ),
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
