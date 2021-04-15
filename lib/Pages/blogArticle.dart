import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_scrollbar/flutter_web_scrollbar.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/responsiveLayout.dart';
import 'package:mindamigo/utils/size_config.dart';
import 'package:mindamigo/widgets/blogContent.dart';
import 'package:mindamigo/widgets/bottombar.dart';
import 'package:mindamigo/widgets/circles.dart';
import 'package:mindamigo/widgets/gradientLine.dart';
import 'package:mindamigo/widgets/navbar.dart';

class BlogArticle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      webBody: WebArticle(),
      tabletBody: TabArticle(),
      mobileBody: MobileArticle(),
    );
  }
}

class WebArticle extends StatefulWidget {
  @override
  _WebArticleState createState() => _WebArticleState();
}

class _WebArticleState extends State<WebArticle> {
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
    return Stack(
      children: [
        Container(
          child: SingleChildScrollView(
            controller: _controller,
            child: Container(
              child: Column(
                children: [
                  NavBar(),
                  GradientLine(),
                  Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,

                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          color:Colors.white,
                          width: MediaQuery.of(context).size.width/1.5,
                          child: Column(
                            children: [
                              //title
                              Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: Text(Strings.blogTitle, style: TextStyle(color: AmigoColors.orange, fontSize: 56, fontFamily: robot),),
                              ),
                              //image
                              Padding(
                                padding: const EdgeInsets.only(top:20),
                                child: Image.asset(blogImage4),
                              ),
                              //heading
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Container(
                                  padding: EdgeInsets.only(bottom: 100),
                                  child:Text(Strings.blogContent,
                                    textAlign:TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontFamily: robot
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
                                      Image.asset(facebookShare,height: 37, width: 37,),
                                      Image.asset(twitterShare,height: 37, width: 37,),
                                      Image.asset(mailShare,height: 37, width: 37,)
                                    ],
                                  ),
                                ),
                              )

                            ],
                          ),
                        ),
                        CircleAmigo(
                          topCircleAmigoPosition: -7.20*SizeConfig.heightMultiplier,
                          leftCircleAmigoPosition: -4.16*SizeConfig.heightMultiplier,
                          circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
                          circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
                          circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                          circleAmigoOpacity: [0.1,0.1],

                        ),
                        CircleAmigo(
                          topCircleAmigoPosition: -9.46*SizeConfig.heightMultiplier,
                          leftCircleAmigoPosition: -7.41*SizeConfig.heightMultiplier,
                          circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
                          circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
                          circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                          circleAmigoOpacity: [0.1,0.1],

                        ),
                        CircleAmigo(
                          topCircleAmigoPosition: -12.71*SizeConfig.heightMultiplier,
                          leftCircleAmigoPosition: -10.67*SizeConfig.heightMultiplier,
                          circleAmigoHeight: 26.04*SizeConfig.heightMultiplier,
                          circleAmigoWidth: 26.04*SizeConfig.heightMultiplier,
                          circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                          circleAmigoOpacity: [0.1,0.1],

                        ),
                      ],
                    ),
                  ),
                  Container(
                      color: AmigoColors.lightWhite,
                      width: MediaQuery.of(context).size.width,

                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 9.76*SizeConfig.heightMultiplier),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 6.51*SizeConfig.heightMultiplier),
                                  child: Text("Related Article",style: TextStyle(fontSize: 3.25*SizeConfig.textMultiplier, fontFamily: robot, color: AmigoColors.lightBlack),),
                                ),
                                BlogContent(
                                  title: [
                                    Strings.blogTitle,
                                    Strings.blogTitle,
                                    Strings.blogTitle,
                                  ],
                                  image: [
                                    Image.asset(blogImage1),
                                    Image.asset(blogImage2),
                                    Image.asset(blogImage3),
                                  ],
                                  content: [
                                    Strings.blogContent,
                                    Strings.blogContent,
                                    Strings.blogContent
                                  ],
                                  date: [
                                    Strings.blogDate,
                                    Strings.blogDate,
                                    Strings.blogDate,
                                  ],
                                ),


                              ],
                            ),

                          ),
                          //right
                          CircleAmigo(
                            topCircleAmigoPosition: -1.20*SizeConfig.heightMultiplier,
                            rightCircleAmigoPosition: -15.16*SizeConfig.heightMultiplier,
                            circleAmigoHeight: 20.02*SizeConfig.heightMultiplier,
                            circleAmigoWidth: 20.02*SizeConfig.heightMultiplier,
                            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                            circleAmigoOpacity: [0.1,0.1],

                          ),
                          CircleAmigo(
                            topCircleAmigoPosition: -4.46*SizeConfig.heightMultiplier,
                            rightCircleAmigoPosition: -18.41*SizeConfig.heightMultiplier,
                            circleAmigoHeight: 26.53*SizeConfig.heightMultiplier,
                            circleAmigoWidth: 26.53*SizeConfig.heightMultiplier,
                            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                            circleAmigoOpacity: [0.1,0.1],

                          ),
                          CircleAmigo(
                            topCircleAmigoPosition: -7.71*SizeConfig.heightMultiplier,
                            rightCircleAmigoPosition: -21.67*SizeConfig.heightMultiplier,
                            circleAmigoHeight: 34.04*SizeConfig.heightMultiplier,
                            circleAmigoWidth: 34.04*SizeConfig.heightMultiplier,
                            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                            circleAmigoOpacity: [0.1,0.1],

                          ),
                          //left
                          CircleAmigo(
                            topCircleAmigoPosition: -1.20*SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition: -15.16*SizeConfig.heightMultiplier,
                            circleAmigoHeight: 20.02*SizeConfig.heightMultiplier,
                            circleAmigoWidth: 20.02*SizeConfig.heightMultiplier,
                            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                            circleAmigoOpacity: [0.1,0.1],

                          ),
                          CircleAmigo(
                            topCircleAmigoPosition: -4.46*SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition: -18.41*SizeConfig.heightMultiplier,
                            circleAmigoHeight: 26.53*SizeConfig.heightMultiplier,
                            circleAmigoWidth: 26.53*SizeConfig.heightMultiplier,
                            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                            circleAmigoOpacity: [0.1,0.1],

                          ),
                          CircleAmigo(
                            topCircleAmigoPosition: -7.71*SizeConfig.heightMultiplier,
                            leftCircleAmigoPosition: -21.67*SizeConfig.heightMultiplier,
                            circleAmigoHeight: 34.04*SizeConfig.heightMultiplier,
                            circleAmigoWidth: 34.04*SizeConfig.heightMultiplier,
                            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                            circleAmigoOpacity: [0.1,0.1],

                          ),

                          //bottom
                          CircleAmigo(
                            rightCircleAmigoPosition: -1.20*SizeConfig.heightMultiplier,
                            bottomCircleAmigoPosition: -15.16*SizeConfig.heightMultiplier,
                            circleAmigoHeight: 20.02*SizeConfig.heightMultiplier,
                            circleAmigoWidth: 20.02*SizeConfig.heightMultiplier,
                            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                            circleAmigoOpacity: [0.1,0.1],

                          ),
                          CircleAmigo(
                            rightCircleAmigoPosition: -4.46*SizeConfig.heightMultiplier,
                            bottomCircleAmigoPosition: -18.41*SizeConfig.heightMultiplier,
                            circleAmigoHeight: 26.53*SizeConfig.heightMultiplier,
                            circleAmigoWidth: 26.53*SizeConfig.heightMultiplier,
                            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                            circleAmigoOpacity: [0.1,0.1],

                          ),
                          CircleAmigo(
                            rightCircleAmigoPosition: -7.71*SizeConfig.heightMultiplier,
                            bottomCircleAmigoPosition: -21.67*SizeConfig.heightMultiplier,
                            circleAmigoHeight: 34.04*SizeConfig.heightMultiplier,
                            circleAmigoWidth: 34.04*SizeConfig.heightMultiplier,
                            circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                            circleAmigoOpacity: [0.1,0.1],

                          ),



                        ],
                      )
                  ),
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
    );
  }
}

class TabArticle extends StatefulWidget {
  @override
  _TabArticleState createState() => _TabArticleState();
}

class _TabArticleState extends State<TabArticle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              NavBar(),
              GradientLine(),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      color:Colors.white,
                      width: MediaQuery.of(context).size.width/1.5,
                      child: Column(
                        children: [
                          //title
                          Padding(
                            padding:EdgeInsets.only(top: 3.25*SizeConfig.heightMultiplier),
                            child: Text(Strings.blogTitle, style: TextStyle(color: AmigoColors.orange, fontSize: 3.25*SizeConfig.textMultiplier, fontFamily: robot),),
                          ),
                          //image
                          Padding(
                            padding:EdgeInsets.only(top:1.30*SizeConfig.heightMultiplier),
                            child: Image.asset(blogImage4),
                          ),
                          //heading
                          Padding(
                            padding: EdgeInsets.only(top: 1.95*SizeConfig.heightMultiplier),
                            child: Container(
                              padding: EdgeInsets.only(bottom: 6.51*SizeConfig.heightMultiplier),
                              child:Text(Strings.blogContent,
                                textAlign:TextAlign.center,
                                style: TextStyle(
                                    fontSize: 1.62*SizeConfig.textMultiplier,
                                    fontFamily: robot
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:EdgeInsets.symmetric(vertical: 1.95*SizeConfig.heightMultiplier),
                            child: Container(
                              alignment: Alignment.center,
                              width: 16.27*SizeConfig.heightMultiplier,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Share", style: TextStyle(color: AmigoColors.lightblue1, fontSize: 1.62*SizeConfig.textMultiplier, fontFamily: robot ),),
                                  Image.asset(facebookShare,height: 2.40*SizeConfig.heightMultiplier, width: 2.40*SizeConfig.heightMultiplier,),
                                  Image.asset(twitterShare,height: 2.40*SizeConfig.heightMultiplier, width: 2.40*SizeConfig.heightMultiplier,),
                                  Image.asset(mailShare,height: 2.40*SizeConfig.heightMultiplier, width: 2.40*SizeConfig.heightMultiplier,)
                                ],
                              ),
                            ),
                          )

                        ],
                      ),
                    ),
                    CircleAmigo(
                      topCircleAmigoPosition: -7.20*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -4.16*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      topCircleAmigoPosition: -9.46*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -7.41*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      topCircleAmigoPosition: -12.71*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -10.67*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                  ],
                ),
              ),

              Container(
                  color: AmigoColors.lightWhite,
                  width: MediaQuery.of(context).size.width,

                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 9.76*SizeConfig.heightMultiplier),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 6.51*SizeConfig.heightMultiplier),
                              child: Text("Related Article",style: TextStyle(fontSize: 3.25*SizeConfig.textMultiplier, fontFamily: robot, color: AmigoColors.lightBlack),),
                            ),
                            TabBlogContent(
                              title: [
                                Strings.blogTitle,
                                Strings.blogTitle,
                                Strings.blogTitle,
                              ],
                              image: [
                                Image.asset(blogImage1),
                                Image.asset(blogImage2),
                                Image.asset(blogImage3),
                              ],
                              content: [
                                Strings.blogContent,
                                Strings.blogContent,
                                Strings.blogContent
                              ],
                              date: [
                                Strings.blogDate,
                                Strings.blogDate,
                                Strings.blogDate,
                              ],
                            ),


                          ],
                        ),

                      ),
                      //right
                      CircleAmigo(
                        topCircleAmigoPosition: -1.20*SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition: -15.16*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 20.02*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 20.02*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],

                      ),
                      CircleAmigo(
                        topCircleAmigoPosition: -4.46*SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition: -18.41*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 26.53*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 26.53*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],

                      ),
                      CircleAmigo(
                        topCircleAmigoPosition: -7.71*SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition: -21.67*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 34.04*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 34.04*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],

                      ),
                      //left
                      CircleAmigo(
                        topCircleAmigoPosition: -1.20*SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition: -15.16*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 20.02*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 20.02*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],

                      ),
                      CircleAmigo(
                        topCircleAmigoPosition: -4.46*SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition: -18.41*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 26.53*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 26.53*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],

                      ),
                      CircleAmigo(
                        topCircleAmigoPosition: -7.71*SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition: -21.67*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 34.04*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 34.04*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],

                      ),

                      //bottom
                      CircleAmigo(
                        rightCircleAmigoPosition: -1.20*SizeConfig.heightMultiplier,
                        bottomCircleAmigoPosition: -15.16*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 20.02*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 20.02*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],

                      ),
                      CircleAmigo(
                        rightCircleAmigoPosition: -4.46*SizeConfig.heightMultiplier,
                        bottomCircleAmigoPosition: -18.41*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 26.53*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 26.53*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],

                      ),
                      CircleAmigo(
                        rightCircleAmigoPosition: -7.71*SizeConfig.heightMultiplier,
                        bottomCircleAmigoPosition: -21.67*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 34.04*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 34.04*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],

                      ),



                    ],
                  )
              ),


              BottomNav(),

            ],
          ),
        ),
      ),
    );
  }
}


class MobileArticle extends StatefulWidget {
  @override
  _MobileArticleState createState() => _MobileArticleState();
}

class _MobileArticleState extends State<MobileArticle> {
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
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      color:Colors.white,
                      width: MediaQuery.of(context).size.width/1.5,
                      child: Column(
                        children: [
                          //title
                          Padding(
                            padding:EdgeInsets.only(top: 3*SizeConfig.heightMultiplier),
                            child: Text(Strings.blogTitle, textAlign: TextAlign.center, style: TextStyle(color: AmigoColors.orange, fontSize: 2.8*SizeConfig.textMultiplier, fontFamily: robot),),
                          ),
                          //image
                          Padding(
                            padding:EdgeInsets.only(top:1*SizeConfig.heightMultiplier),
                            child: Image.asset(blogImage4),
                          ),
                          //heading
                          Padding(
                            padding: EdgeInsets.only(top: 1*SizeConfig.heightMultiplier),
                            child: Container(
                              padding: EdgeInsets.only(bottom: 6*SizeConfig.heightMultiplier),
                              child:Text(Strings.blogContent,
                                textAlign:TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 1.62*SizeConfig.textMultiplier,
                                    fontFamily: robot
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:EdgeInsets.symmetric(vertical: 1*SizeConfig.heightMultiplier),
                            child: Container(
                              alignment: Alignment.center,
                              width: 16.27*SizeConfig.heightMultiplier,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Share", style: TextStyle(color: AmigoColors.lightblue1, fontSize: 1.62*SizeConfig.textMultiplier, fontFamily: robot ),),
                                  Image.asset(facebookShare,height: 2.40*SizeConfig.heightMultiplier, width: 2.40*SizeConfig.heightMultiplier,),
                                  Image.asset(twitterShare,height: 2.40*SizeConfig.heightMultiplier, width: 2.40*SizeConfig.heightMultiplier,),
                                  Image.asset(mailShare,height: 2.40*SizeConfig.heightMultiplier, width: 2.40*SizeConfig.heightMultiplier,)
                                ],
                              ),
                            ),
                          )

                        ],
                      ),
                    ),
                    CircleAmigo(
                      topCircleAmigoPosition: -7.20*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -4.16*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 10.02*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 10.02*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      topCircleAmigoPosition: -9.46*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -7.41*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 16.53*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 16.53*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      topCircleAmigoPosition: -12.71*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -10.67*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 23.04*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 23.04*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                  ],
                ),
              ),

              Container(
                  color: AmigoColors.lightWhite,
                  width: MediaQuery.of(context).size.width,

                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 9.76*SizeConfig.heightMultiplier),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 6.51*SizeConfig.heightMultiplier),
                              child: Text("Related Article",style: TextStyle(fontSize: 3.25*SizeConfig.textMultiplier, fontFamily: robot, color: AmigoColors.lightBlack),),
                            ),
                            MobileBlogContent(
                              title: [
                                Strings.blogTitle,
                                Strings.blogTitle,
                              ],
                              image: [
                                Image.asset(blogImage1),
                                Image.asset(blogImage2),
                              ],
                              content: [
                                Strings.blogContent,
                                Strings.blogContent,
                              ],
                              date: [
                                Strings.blogDate,
                                Strings.blogDate,
                              ],
                            ),
                          ],
                        ),

                      ),
                      //right
                      CircleAmigo(
                        topCircleAmigoPosition: -1.20*SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition: -15.16*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 15.02*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 15.02*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],

                      ),
                      CircleAmigo(
                        topCircleAmigoPosition: -4.46*SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition: -18.41*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 21.53*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 21.53*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],

                      ),
                      CircleAmigo(
                        topCircleAmigoPosition: -7.71*SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition: -21.67*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 29.04*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 29.04*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],
                      ),
                      //left
                      CircleAmigo(
                        topCircleAmigoPosition: -1.20*SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition: -15.16*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 15.02*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 15.02*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],

                      ),
                      CircleAmigo(
                        topCircleAmigoPosition: -4.46*SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition: -18.41*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 21.53*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 21.53*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],
                      ),
                      CircleAmigo(
                        topCircleAmigoPosition: -7.71*SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition: -21.67*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 29.04*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 29.04*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],

                      ),

                      //bottom
                      CircleAmigo(
                        rightCircleAmigoPosition: -1.20*SizeConfig.heightMultiplier,
                        bottomCircleAmigoPosition: -15.16*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 15.02*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 15.02*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],

                      ),
                      CircleAmigo(
                        rightCircleAmigoPosition: -4.46*SizeConfig.heightMultiplier,
                        bottomCircleAmigoPosition: -18.41*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 21.53*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 21.53*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],

                      ),
                      CircleAmigo(
                        rightCircleAmigoPosition: -7.71*SizeConfig.heightMultiplier,
                        bottomCircleAmigoPosition: -21.67*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 29.04*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 29.04*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],
                      ),
                    ],
                  )
              ),
              BottomNav(),

            ],
          ),
        ),
      ),
    );
  }
}


