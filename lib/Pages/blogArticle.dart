import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
import 'package:mindamigo/widgets/newsletter.dart';

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
                              title1: "What to do when anxiety strikes",
                              title2: "What to do when anxiety strikes",
                              title3: "What to do when anxiety strikes",
                              image1: Image.asset("assets/images/blogImage1.png"),
                              image2: Image.asset("assets/images/blogImage2.png"),
                              image3: Image.asset("assets/images/blogImage3.png"),
                              content1: Strings.blogContent,
                              content2: Strings.blogContent,
                              content3: Strings.blogContent,
                              date1: "21/8/19",
                              date2: "21/8/19",
                              date3: "21/8/19",
                            ),


                          ],
                        ),

                      ),
                      //left
                      CircleAmigo(
                        topCircleAmigoPosition: -5.20*SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition: -10.16*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 15.02*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 15.02*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],

                      ),
                      CircleAmigo(
                        topCircleAmigoPosition: -8.46*SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition: -13.41*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 21.53*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 21.53*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],

                      ),
                      CircleAmigo(
                        topCircleAmigoPosition: -11.71*SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition: -16.67*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 28.04*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 28.04*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],

                      ),

                      //left
                      CircleAmigo(
                        topCircleAmigoPosition: -4.2*SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition: -10.16*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],

                      ),
                      CircleAmigo(
                        topCircleAmigoPosition: -8*SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition: -13.41*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
                        circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                        circleAmigoOpacity: [0.1,0.1],

                      ),
                      CircleAmigo(
                        topCircleAmigoPosition: -12.71*SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition: -16.67*SizeConfig.heightMultiplier,
                        circleAmigoHeight: 26.04*SizeConfig.heightMultiplier,
                        circleAmigoWidth: 26.04*SizeConfig.heightMultiplier,
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

class TabArticle extends StatefulWidget {
  @override
  _TabArticleState createState() => _TabArticleState();
}

class _TabArticleState extends State<TabArticle> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class MobileArticle extends StatefulWidget {
  @override
  _MobileArticleState createState() => _MobileArticleState();
}

class _MobileArticleState extends State<MobileArticle> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


