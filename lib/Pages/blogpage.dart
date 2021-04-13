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


class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      webBody: WebBlogPage(),
      tabletBody: TabBlogPage(),
      mobileBody: MobileBlogPage(),
    );

  }
}



class WebBlogPage extends StatefulWidget {
  @override
  _WebBlogPageState createState() => _WebBlogPageState();
}
class _WebBlogPageState extends State<WebBlogPage> {
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
                color: AmigoColors.lightWhite,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      children: [
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

                        //more posts
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 1.30*SizeConfig.heightMultiplier, 0, 5.20*SizeConfig.heightMultiplier),

                          width: 19.53*SizeConfig.heightMultiplier,
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("More recent posts",
                                style: TextStyle(
                                    fontSize: 1.95*SizeConfig.textMultiplier,
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context, BlogArticleRoute);
                                  },
                                  child: Image.asset(
                                    "assets/images/dropDown.png",
                                    height: 3.25*SizeConfig.heightMultiplier,
                                    width: 3.25*SizeConfig.heightMultiplier,
                                  )
                              ),
                            ],
                          ),
                        )


                      ],
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
                      topCircleAmigoPosition: 42.2*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -10.16*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      topCircleAmigoPosition: 38*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -13.41*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),
                    CircleAmigo(
                      topCircleAmigoPosition: 34.71*SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition: -16.67*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.1,0.1],

                    ),

                    //right
                    CircleAmigo(
                      bottomCircleAmigoPosition: -2.20*SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition: -7.16*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 13.02*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.4,0.1],

                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition: -5.46*SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition: -10.41*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 19.53*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 19.53*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.4,0.1],

                    ),
                    CircleAmigo(
                      bottomCircleAmigoPosition: -8.71*SizeConfig.heightMultiplier,
                      rightCircleAmigoPosition: -13.67*SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04*SizeConfig.heightMultiplier,
                      circleAmigoGradient: [AmigoColors.orange, AmigoColors.lightRed2],
                      circleAmigoOpacity: [0.4,0.1],

                    ),
                  ],
                )
              ),


              NewsLetter(),
              BottomNav(),

            ],
          ),
        ),
      ),
    );
  }
}

class TabBlogPage extends StatefulWidget {
  @override
  _TabBlogPageState createState() => _TabBlogPageState();
}
class _TabBlogPageState extends State<TabBlogPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class MobileBlogPage extends StatefulWidget {
  @override
  _MobileBlogPageState createState() => _MobileBlogPageState();
}

class _MobileBlogPageState extends State<MobileBlogPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
