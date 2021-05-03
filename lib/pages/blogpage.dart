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
  ScrollController _controller;
  double visiblity = 1;

  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: SafeArea(
            child: RawScrollbar(
              radius: Radius.circular(15),
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
                      Container(
                          color: AmigoColors.lightWhite,
                          width: MediaQuery.of(context).size.width,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
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
                                          date: [
                                            Strings.blogDate,
                                            Strings.blogDate,
                                            Strings.blogDate,
                                          ],
                                          content: [
                                            Strings.blogContent,
                                            Strings.blogContent,
                                            Strings.blogContent,
                                          ],
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
                                          date: [
                                            Strings.blogDate,
                                            Strings.blogDate,
                                            Strings.blogDate,
                                          ],
                                          content: [
                                            Strings.blogContent,
                                            Strings.blogContent,
                                            Strings.blogContent,
                                          ],
                                        ),

                                        //more posts
                                      ],
                                    ),
                                  ),
                                  Opacity(
                                    opacity: visiblity,
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0,
                                          1.30 * SizeConfig.heightMultiplier,
                                          0,
                                          5.20 * SizeConfig.heightMultiplier),
                                      width:
                                          19.53 * SizeConfig.heightMultiplier,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "More recent posts",
                                            style: TextStyle(
                                                fontSize: 1.95 *
                                                    SizeConfig.textMultiplier,
                                                fontFamily: robot,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: Image.asset(
                                              blogDropDown,
                                              height: 3.25 *
                                                  SizeConfig.heightMultiplier,
                                              width: 3.25 *
                                                  SizeConfig.heightMultiplier,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              //left
                              CircleAmigo(
                                topCircleAmigoPosition:
                                    -12.20 * SizeConfig.heightMultiplier,
                                rightCircleAmigoPosition:
                                    -9.16 * SizeConfig.heightMultiplier,
                                circleAmigoHeight:
                                    15.02 * SizeConfig.heightMultiplier,
                                circleAmigoWidth:
                                    15.02 * SizeConfig.heightMultiplier,
                                circleAmigoGradient: [
                                  AmigoColors.orange,
                                  AmigoColors.lightRed2
                                ],
                                circleAmigoOpacity: [0.1, 0.1],
                              ),
                              CircleAmigo(
                                topCircleAmigoPosition:
                                    -15.46 * SizeConfig.heightMultiplier,
                                rightCircleAmigoPosition:
                                    -12.41 * SizeConfig.heightMultiplier,
                                circleAmigoHeight:
                                    21.53 * SizeConfig.heightMultiplier,
                                circleAmigoWidth:
                                    21.53 * SizeConfig.heightMultiplier,
                                circleAmigoGradient: [
                                  AmigoColors.orange,
                                  AmigoColors.lightRed2
                                ],
                                circleAmigoOpacity: [0.1, 0.1],
                              ),
                              CircleAmigo(
                                topCircleAmigoPosition:
                                    -18.71 * SizeConfig.heightMultiplier,
                                rightCircleAmigoPosition:
                                    -15.67 * SizeConfig.heightMultiplier,
                                circleAmigoHeight:
                                    28.04 * SizeConfig.heightMultiplier,
                                circleAmigoWidth:
                                    28.04 * SizeConfig.heightMultiplier,
                                circleAmigoGradient: [
                                  AmigoColors.orange,
                                  AmigoColors.lightRed2
                                ],
                                circleAmigoOpacity: [0.1, 0.1],
                              ),

                              //left
                              CircleAmigo(
                                topCircleAmigoPosition:
                                    42.2 * SizeConfig.heightMultiplier,
                                leftCircleAmigoPosition:
                                    -10.16 * SizeConfig.heightMultiplier,
                                circleAmigoHeight:
                                    13.02 * SizeConfig.heightMultiplier,
                                circleAmigoWidth:
                                    13.02 * SizeConfig.heightMultiplier,
                                circleAmigoGradient: [
                                  AmigoColors.orange,
                                  AmigoColors.lightRed2
                                ],
                                circleAmigoOpacity: [0.1, 0.1],
                              ),
                              CircleAmigo(
                                topCircleAmigoPosition:
                                    38 * SizeConfig.heightMultiplier,
                                leftCircleAmigoPosition:
                                    -13.41 * SizeConfig.heightMultiplier,
                                circleAmigoHeight:
                                    19.53 * SizeConfig.heightMultiplier,
                                circleAmigoWidth:
                                    19.53 * SizeConfig.heightMultiplier,
                                circleAmigoGradient: [
                                  AmigoColors.orange,
                                  AmigoColors.lightRed2
                                ],
                                circleAmigoOpacity: [0.1, 0.1],
                              ),
                              CircleAmigo(
                                topCircleAmigoPosition:
                                    34.71 * SizeConfig.heightMultiplier,
                                leftCircleAmigoPosition:
                                    -16.67 * SizeConfig.heightMultiplier,
                                circleAmigoHeight:
                                    26.04 * SizeConfig.heightMultiplier,
                                circleAmigoWidth:
                                    26.04 * SizeConfig.heightMultiplier,
                                circleAmigoGradient: [
                                  AmigoColors.orange,
                                  AmigoColors.lightRed2
                                ],
                                circleAmigoOpacity: [0.1, 0.1],
                              ),

                              //right
                              CircleAmigo(
                                bottomCircleAmigoPosition:
                                    -2.20 * SizeConfig.heightMultiplier,
                                rightCircleAmigoPosition:
                                    -7.16 * SizeConfig.heightMultiplier,
                                circleAmigoHeight:
                                    13.02 * SizeConfig.heightMultiplier,
                                circleAmigoWidth:
                                    13.02 * SizeConfig.heightMultiplier,
                                circleAmigoGradient: [
                                  AmigoColors.orange,
                                  AmigoColors.lightRed2
                                ],
                                circleAmigoOpacity: [0.4, 0.1],
                              ),
                              CircleAmigo(
                                bottomCircleAmigoPosition:
                                    -5.46 * SizeConfig.heightMultiplier,
                                rightCircleAmigoPosition:
                                    -10.41 * SizeConfig.heightMultiplier,
                                circleAmigoHeight:
                                    19.53 * SizeConfig.heightMultiplier,
                                circleAmigoWidth:
                                    19.53 * SizeConfig.heightMultiplier,
                                circleAmigoGradient: [
                                  AmigoColors.orange,
                                  AmigoColors.lightRed2
                                ],
                                circleAmigoOpacity: [0.4, 0.1],
                              ),
                              CircleAmigo(
                                bottomCircleAmigoPosition:
                                    -8.71 * SizeConfig.heightMultiplier,
                                rightCircleAmigoPosition:
                                    -13.67 * SizeConfig.heightMultiplier,
                                circleAmigoHeight:
                                    26.04 * SizeConfig.heightMultiplier,
                                circleAmigoWidth:
                                    26.04 * SizeConfig.heightMultiplier,
                                circleAmigoGradient: [
                                  AmigoColors.orange,
                                  AmigoColors.lightRed2
                                ],
                                circleAmigoOpacity: [0.4, 0.1],
                              ),
                            ],
                          )),

                      //for loop with more recent opacity
                      NewsLetter(),
                      BottomNav(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
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
                            date: [
                              Strings.blogDate,
                              Strings.blogDate,
                              Strings.blogDate,
                            ],
                            content: [
                              Strings.blogContent,
                              Strings.blogContent,
                              Strings.blogContent,
                            ],
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
                            date: [
                              Strings.blogDate,
                              Strings.blogDate,
                              Strings.blogDate,
                            ],
                            content: [
                              Strings.blogContent,
                              Strings.blogContent,
                              Strings.blogContent,
                            ],
                          ),

                          //more posts
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0,
                                1.30 * SizeConfig.heightMultiplier,
                                0,
                                5.20 * SizeConfig.heightMultiplier),
                            width: 19.53 * SizeConfig.heightMultiplier,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "More recent posts",
                                  style: TextStyle(
                                      fontSize:
                                          1.95 * SizeConfig.textMultiplier,
                                      fontFamily: robot,
                                      fontWeight: FontWeight.bold),
                                ),
                                Image.asset(
                                  blogDropDown,
                                  height: 3.25 * SizeConfig.heightMultiplier,
                                  width: 3.25 * SizeConfig.heightMultiplier,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      //left
                      CircleAmigo(
                        topCircleAmigoPosition:
                            -5.20 * SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition:
                            -10.16 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 15.02 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 15.02 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        topCircleAmigoPosition:
                            -8.46 * SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition:
                            -13.41 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 21.53 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 21.53 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        topCircleAmigoPosition:
                            -11.71 * SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition:
                            -16.67 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 28.04 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 28.04 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),

                      //left
                      CircleAmigo(
                        topCircleAmigoPosition:
                            42.2 * SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition:
                            -10.16 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        topCircleAmigoPosition:
                            38 * SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition:
                            -13.41 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        topCircleAmigoPosition:
                            34.71 * SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition:
                            -16.67 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),

                      //right
                      CircleAmigo(
                        bottomCircleAmigoPosition:
                            -2.20 * SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition:
                            -7.16 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 13.02 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 13.02 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.4, 0.1],
                      ),
                      CircleAmigo(
                        bottomCircleAmigoPosition:
                            -5.46 * SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition:
                            -10.41 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 19.53 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 19.53 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.4, 0.1],
                      ),
                      CircleAmigo(
                        bottomCircleAmigoPosition:
                            -8.71 * SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition:
                            -13.67 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.4, 0.1],
                      ),
                    ],
                  )),
              NewsLetter(),
              BottomNav(),
            ],
          ),
        ),
      ),
    );
  }
}

class MobileBlogPage extends StatefulWidget {
  @override
  _MobileBlogPageState createState() => _MobileBlogPageState();
}

class _MobileBlogPageState extends State<MobileBlogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AmigoColors.lightBlue),
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/images/logo.png",
          height: 3.18 * SizeConfig.heightMultiplier,
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      )),
                      context: context,
                      builder: (context) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            //meet adam
                            ListTile(
                              title: Text(
                                'Meet Adam',
                                style: TextStyle(
                                    fontSize: 3.27 * SizeConfig.textMultiplier,
                                    color: AmigoColors.lightBlack,
                                    fontFamily: robot,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold),
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, MeetAdamRoute);
                              },
                            ),
                            //about us
                            ListTile(
                              title: Text(
                                'About Us',
                                style: TextStyle(
                                    fontSize: 3.27 * SizeConfig.textMultiplier,
                                    color: AmigoColors.lightBlack,
                                    fontFamily: robot,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold),
                              ),
                              onTap: () {
                                // Update the state of the app
                                // ...
                                // Then close the drawer
                                Navigator.pushNamed(context, AboutUsRoute);
                              },
                            ),
                            ListTile(
                              title: Text(
                                'PodCast',
                                style: TextStyle(
                                    fontSize: 3.27 * SizeConfig.textMultiplier,
                                    color: AmigoColors.lightBlack,
                                    fontFamily: robot,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold),
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, PodcastRoute);
                              },
                            ),
                            //podcast
                            ListTile(
                              title: Text(
                                'Blog',
                                style: TextStyle(
                                    fontSize: 3.27 * SizeConfig.textMultiplier,
                                    color: AmigoColors.lightBlack,
                                    fontFamily: robot,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold),
                              ),
                              onTap: () {
                                // Update the state of the app
                                // ...
                                // Then close the drawer
                                Navigator.pushNamed(context, BlogPageRoute);
                              },
                            ),
                          ],
                        );
                      });
                },
                child: Icon(
                  Icons.menu,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              GradientLine(),
              Container(
                  color: AmigoColors.lightWhite,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Column(
                        children: [
                          MobileBlogContent(
                            title: [
                              Strings.blogTitle,
                              Strings.blogTitle,
                            ],
                            image: [
                              Image.asset(blogImage1),
                              Image.asset(blogImage2),
                            ],
                            date: [
                              Strings.blogDate,
                              Strings.blogDate,
                            ],
                            content: [
                              Strings.blogContent,
                              Strings.blogContent,
                            ],
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
                            date: [
                              Strings.blogDate,
                              Strings.blogDate,
                            ],
                            content: [
                              Strings.blogContent,
                              Strings.blogContent,
                            ],
                          ),

                          //more posts
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0,
                                1.30 * SizeConfig.heightMultiplier,
                                0,
                                5.20 * SizeConfig.heightMultiplier),
                            width: 19.53 * SizeConfig.heightMultiplier,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "More recent posts",
                                  style: TextStyle(
                                      fontSize:
                                          1.95 * SizeConfig.textMultiplier,
                                      fontFamily: robot,
                                      fontWeight: FontWeight.bold),
                                ),
                                Image.asset(
                                  blogDropDown,
                                  height: 3.25 * SizeConfig.heightMultiplier,
                                  width: 3.25 * SizeConfig.heightMultiplier,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      //left
                      CircleAmigo(
                        topCircleAmigoPosition:
                            -5.20 * SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition:
                            -10.16 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 10.02 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 10.02 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        topCircleAmigoPosition:
                            -8.46 * SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition:
                            -13.41 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 16.53 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 16.53 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        topCircleAmigoPosition:
                            -11.71 * SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition:
                            -16.67 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 23.04 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 23.04 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),

                      //left
                      CircleAmigo(
                        topCircleAmigoPosition:
                            42.2 * SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition:
                            -10.16 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 8.02 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 8.02 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        topCircleAmigoPosition:
                            38 * SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition:
                            -13.41 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 14.53 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 14.53 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        topCircleAmigoPosition:
                            34.71 * SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition:
                            -16.67 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 21.04 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 21.04 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),

                      //right
                      CircleAmigo(
                        bottomCircleAmigoPosition:
                            -2.20 * SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition:
                            -7.16 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 8.02 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 8.02 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.4, 0.1],
                      ),
                      CircleAmigo(
                        bottomCircleAmigoPosition:
                            -5.46 * SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition:
                            -10.41 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 14.53 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 14.53 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.4, 0.1],
                      ),
                      CircleAmigo(
                        bottomCircleAmigoPosition:
                            -8.71 * SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition:
                            -13.67 * SizeConfig.heightMultiplier,
                        circleAmigoHeight: 21.04 * SizeConfig.heightMultiplier,
                        circleAmigoWidth: 21.04 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.4, 0.1],
                      ),
                    ],
                  )),
              NewsLetter(),
              BottomNav(),
            ],
          ),
        ),
      ),
    );
  }
}
