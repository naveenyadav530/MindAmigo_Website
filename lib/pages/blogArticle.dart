import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindamigo/core/blog/blog.dart';
import 'package:mindamigo/models/blogsModel.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/responsiveLayout.dart';
import 'package:mindamigo/utils/size_config.dart';
import 'package:mindamigo/widgets/blogContentNew.dart';
import 'package:mindamigo/widgets/bottombar.dart';
import 'package:mindamigo/widgets/circles.dart';
import 'package:mindamigo/widgets/gradientLine.dart';
import 'package:mindamigo/widgets/navbar.dart';
import 'package:transparent_image/transparent_image.dart';

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
  final String blogBody;
  WebArticle({this.blogBody});

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


  @override
  Widget build(BuildContext context) {
    final Map blogData = ModalRoute.of(context).settings.arguments;
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
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAmigo(
                              topCircleAmigoPosition:
                                  -7.20 * SizeConfig.heightMultiplier,
                              leftCircleAmigoPosition:
                                  -4.16 * SizeConfig.heightMultiplier,
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
                                  -9.46 * SizeConfig.heightMultiplier,
                              leftCircleAmigoPosition:
                                  -7.41 * SizeConfig.heightMultiplier,
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
                                  -12.71 * SizeConfig.heightMultiplier,
                              leftCircleAmigoPosition:
                                  -10.67 * SizeConfig.heightMultiplier,
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

                            Container(
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width / 2,
                              child: Column(
                                children: [
                                  //title
                                  Padding(
                                    padding: const EdgeInsets.only(top: 50),
                                    child: Text(
                                      blogData["title"],
                                      style: TextStyle(
                                          color: AmigoColors.orange,
                                          fontSize: 56,
                                          fontFamily: robot),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  //image
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Image.network(blogData["image"]),
                                  ),
                                  //heading
                                  Padding(
                                    padding: EdgeInsets.only(top: 30),
                                    child: Container(
                                      padding: EdgeInsets.only(bottom: 100),
                                      child: Text(
                                        // Strings.blogContent,
                                        blogData["data"],
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontSize: 25, fontFamily: robot),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 30),
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 250,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "Share",
                                            style: TextStyle(
                                                color: AmigoColors.lightblue1,
                                                fontSize: 24,
                                                fontFamily: robot),
                                          ),
                                          Image.asset(
                                            facebookShare,
                                            height: 37,
                                            width: 37,
                                          ),
                                          Image.asset(
                                            twitterShare,
                                            height: 37,
                                            width: 37,
                                          ),
                                          Image.asset(
                                            mailShare,
                                            height: 37,
                                            width: 37,
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
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
                              //right
                              CircleAmigo(
                                topCircleAmigoPosition:
                                -1.20 * SizeConfig.heightMultiplier,
                                rightCircleAmigoPosition:
                                -15.16 * SizeConfig.heightMultiplier,
                                circleAmigoHeight:
                                20.02 * SizeConfig.heightMultiplier,
                                circleAmigoWidth:
                                20.02 * SizeConfig.heightMultiplier,
                                circleAmigoGradient: [
                                  AmigoColors.orange,
                                  AmigoColors.lightRed2
                                ],
                                circleAmigoOpacity: [0.1, 0.1],
                              ),
                              CircleAmigo(
                                topCircleAmigoPosition:
                                -4.46 * SizeConfig.heightMultiplier,
                                rightCircleAmigoPosition:
                                -18.41 * SizeConfig.heightMultiplier,
                                circleAmigoHeight:
                                26.53 * SizeConfig.heightMultiplier,
                                circleAmigoWidth:
                                26.53 * SizeConfig.heightMultiplier,
                                circleAmigoGradient: [
                                  AmigoColors.orange,
                                  AmigoColors.lightRed2
                                ],
                                circleAmigoOpacity: [0.1, 0.1],
                              ),
                              CircleAmigo(
                                topCircleAmigoPosition:
                                -7.71 * SizeConfig.heightMultiplier,
                                rightCircleAmigoPosition:
                                -21.67 * SizeConfig.heightMultiplier,
                                circleAmigoHeight:
                                34.04 * SizeConfig.heightMultiplier,
                                circleAmigoWidth:
                                34.04 * SizeConfig.heightMultiplier,
                                circleAmigoGradient: [
                                  AmigoColors.orange,
                                  AmigoColors.lightRed2
                                ],
                                circleAmigoOpacity: [0.1, 0.1],
                              ),
                              //left
                              CircleAmigo(
                                topCircleAmigoPosition:
                                -1.20 * SizeConfig.heightMultiplier,
                                leftCircleAmigoPosition:
                                -15.16 * SizeConfig.heightMultiplier,
                                circleAmigoHeight:
                                20.02 * SizeConfig.heightMultiplier,
                                circleAmigoWidth:
                                20.02 * SizeConfig.heightMultiplier,
                                circleAmigoGradient: [
                                  AmigoColors.orange,
                                  AmigoColors.lightRed2
                                ],
                                circleAmigoOpacity: [0.1, 0.1],
                              ),
                              CircleAmigo(
                                topCircleAmigoPosition:
                                -4.46 * SizeConfig.heightMultiplier,
                                leftCircleAmigoPosition:
                                -18.41 * SizeConfig.heightMultiplier,
                                circleAmigoHeight:
                                26.53 * SizeConfig.heightMultiplier,
                                circleAmigoWidth:
                                26.53 * SizeConfig.heightMultiplier,
                                circleAmigoGradient: [
                                  AmigoColors.orange,
                                  AmigoColors.lightRed2
                                ],
                                circleAmigoOpacity: [0.1, 0.1],
                              ),
                              CircleAmigo(
                                topCircleAmigoPosition:
                                -7.71 * SizeConfig.heightMultiplier,
                                leftCircleAmigoPosition:
                                -21.67 * SizeConfig.heightMultiplier,
                                circleAmigoHeight:
                                34.04 * SizeConfig.heightMultiplier,
                                circleAmigoWidth:
                                34.04 * SizeConfig.heightMultiplier,
                                circleAmigoGradient: [
                                  AmigoColors.orange,
                                  AmigoColors.lightRed2
                                ],
                                circleAmigoOpacity: [0.1, 0.1],
                              ),

                              //bottom
                              CircleAmigo(
                                rightCircleAmigoPosition:
                                -1.20 * SizeConfig.heightMultiplier,
                                bottomCircleAmigoPosition:
                                -15.16 * SizeConfig.heightMultiplier,
                                circleAmigoHeight:
                                20.02 * SizeConfig.heightMultiplier,
                                circleAmigoWidth:
                                20.02 * SizeConfig.heightMultiplier,
                                circleAmigoGradient: [
                                  AmigoColors.orange,
                                  AmigoColors.lightRed2
                                ],
                                circleAmigoOpacity: [0.1, 0.1],
                              ),
                              CircleAmigo(
                                rightCircleAmigoPosition:
                                -4.46 * SizeConfig.heightMultiplier,
                                bottomCircleAmigoPosition:
                                -18.41 * SizeConfig.heightMultiplier,
                                circleAmigoHeight:
                                26.53 * SizeConfig.heightMultiplier,
                                circleAmigoWidth:
                                26.53 * SizeConfig.heightMultiplier,
                                circleAmigoGradient: [
                                  AmigoColors.orange,
                                  AmigoColors.lightRed2
                                ],
                                circleAmigoOpacity: [0.1, 0.1],
                              ),
                              CircleAmigo(
                                rightCircleAmigoPosition:
                                -7.71 * SizeConfig.heightMultiplier,
                                bottomCircleAmigoPosition:
                                -21.67 * SizeConfig.heightMultiplier,
                                circleAmigoHeight:
                                34.04 * SizeConfig.heightMultiplier,
                                circleAmigoWidth:
                                34.04 * SizeConfig.heightMultiplier,
                                circleAmigoGradient: [
                                  AmigoColors.orange,
                                  AmigoColors.lightRed2
                                ],
                                circleAmigoOpacity: [0.1, 0.1],
                              ),

                              Center(
                                child: Container(
                                  width:MediaQuery.of(context).size.width*0.6,
                                  margin: EdgeInsets.only(bottom: 9.76 * SizeConfig.heightMultiplier),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.only(top: 6.51 * SizeConfig.heightMultiplier),
                                        child: Text(
                                          "Related Article",
                                          style: TextStyle(
                                              fontSize:3.25 * SizeConfig.textMultiplier,
                                              fontFamily: robot,
                                              color: AmigoColors.lightBlack
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 800,
                                        child: FutureBuilder(
                                          future: Blog().getBlogData(),
                                          builder: (context,snapshot){
                                            if(snapshot.connectionState==ConnectionState.done){
                                              if (snapshot.hasData){
                                                return ListView.builder(
                                                    scrollDirection: Axis.horizontal,
                                                    itemCount: 3,
                                                    itemBuilder: (context,index) {
                                                      BlogModel blog=snapshot.data[index];
                                                      return Container(
                                                        alignment: Alignment.center,
                                                        width:MediaQuery.of(context).size.width*0.18,
                                                        margin: EdgeInsets.only(left: 10),
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            InkWell(
                                                              onTap: (){
                                                                Navigator.pushNamed(
                                                                    context, BlogArticleRoute,
                                                                    arguments: {
                                                                      'image':blog.image,
                                                                      'title':blog.title,
                                                                      'data':blog.body["text"]
                                                                    }
                                                                );
                                                              },
                                                              child: Container(
                                                                child: FadeInImage.memoryNetwork(
                                                                  width: MediaQuery.of(context).size.width/5,
                                                                  placeholder: kTransparentImage,
                                                                  image: blog.image,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets.only(top: 1.93 * SizeConfig.heightMultiplier),
                                                              child: Text(
                                                                blog.title,
                                                                maxLines: 2,
                                                                overflow: TextOverflow.ellipsis,
                                                                style: TextStyle(
                                                                    color: AmigoColors.orange,
                                                                    fontSize: 1.4 * SizeConfig.textMultiplier,
                                                                    fontFamily: robot,
                                                                    fontWeight: FontWeight.bold
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              alignment:Alignment.topLeft,
                                                              margin: EdgeInsets.only(
                                                                  top: 0.65 * SizeConfig.heightMultiplier),
                                                              child: Text(
                                                                blog.createdAt,
                                                                style: TextStyle(
                                                                    color: AmigoColors.orange,
                                                                    fontSize: 1.30 * SizeConfig.textMultiplier,
                                                                    fontFamily: robot),
                                                              ),
                                                            ),
                                                            Container(
                                                              child: Text(
                                                               blog.body["text"].toString().trimLeft(),
                                                                overflow: TextOverflow.ellipsis,
                                                                softWrap:true,
                                                                maxLines: 8,
                                                                style: TextStyle(
                                                                    fontSize: 1.30 * SizeConfig.textMultiplier,
                                                                    fontFamily: robot
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets.only(
                                                                  top: 0.65 * SizeConfig.heightMultiplier),
                                                                child: InkWell(
                                                                  onTap: () {
                                                                    Navigator.pushNamed(
                                                                    context, BlogArticleRoute,
                                                                      arguments: {
                                                                        'image':blog.image,
                                                                        'title':blog.title,
                                                                        'data': blog.body["text"]
                                                                      }
                                                                  );
                                                                },

                                                                child: Row(
                                                                  children: [
                                                                    Text(
                                                                      "Read More ",
                                                                      style: TextStyle(
                                                                          fontFamily: robot,
                                                                          fontWeight: FontWeight.bold,
                                                                          fontSize: 1.30 * SizeConfig.textMultiplier
                                                                      ),
                                                                    ),
                                                                    Icon(Icons.arrow_forward_ios_rounded)
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    }
                                                );
                                              }
                                            }
                                            return Center(
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                                    Colors.blue),
                                              ),
                                            );
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                ),
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
          ),
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
    final Map blogData=ModalRoute.of(context).settings.arguments;
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
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width / 2,
                      child: Column(
                        children: [
                          //title
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Text(
                              blogData["title"],
                              style: TextStyle(
                                  color: AmigoColors.orange,
                                  fontSize: 56,
                                  fontFamily: robot),
                            ),
                          ),
                          //image
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Image.network(blogData["image"]),
                          ),
                          //heading
                          Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: Container(
                              padding: EdgeInsets.only(bottom: 100),
                              child: Text(
                                // Strings.blogContent,
                                blogData["data"],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 25, fontFamily: robot),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 30),
                            child: Container(
                              alignment: Alignment.center,
                              width: 250,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Share",
                                    style: TextStyle(
                                        color: AmigoColors.lightblue1,
                                        fontSize: 24,
                                        fontFamily: robot),
                                  ),
                                  Image.asset(
                                    facebookShare,
                                    height: 37,
                                    width: 37,
                                  ),
                                  Image.asset(
                                    twitterShare,
                                    height: 37,
                                    width: 37,
                                  ),
                                  Image.asset(
                                    mailShare,
                                    height: 37,
                                    width: 37,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -7.20 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -4.16 * SizeConfig.heightMultiplier,
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
                          -9.46 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -7.41 * SizeConfig.heightMultiplier,
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
                          -12.71 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -10.67 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 26.04 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
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
                      //right
                      CircleAmigo(
                        topCircleAmigoPosition:
                        -1.20 * SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition:
                        -15.16 * SizeConfig.heightMultiplier,
                        circleAmigoHeight:
                        20.02 * SizeConfig.heightMultiplier,
                        circleAmigoWidth:
                        20.02 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        topCircleAmigoPosition:
                        -4.46 * SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition:
                        -18.41 * SizeConfig.heightMultiplier,
                        circleAmigoHeight:
                        26.53 * SizeConfig.heightMultiplier,
                        circleAmigoWidth:
                        26.53 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        topCircleAmigoPosition:
                        -7.71 * SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition:
                        -21.67 * SizeConfig.heightMultiplier,
                        circleAmigoHeight:
                        34.04 * SizeConfig.heightMultiplier,
                        circleAmigoWidth:
                        34.04 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      //left
                      CircleAmigo(
                        topCircleAmigoPosition:
                        -1.20 * SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition:
                        -15.16 * SizeConfig.heightMultiplier,
                        circleAmigoHeight:
                        20.02 * SizeConfig.heightMultiplier,
                        circleAmigoWidth:
                        20.02 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        topCircleAmigoPosition:
                        -4.46 * SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition:
                        -18.41 * SizeConfig.heightMultiplier,
                        circleAmigoHeight:
                        26.53 * SizeConfig.heightMultiplier,
                        circleAmigoWidth:
                        26.53 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        topCircleAmigoPosition:
                        -7.71 * SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition:
                        -21.67 * SizeConfig.heightMultiplier,
                        circleAmigoHeight:
                        34.04 * SizeConfig.heightMultiplier,
                        circleAmigoWidth:
                        34.04 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),

                      //bottom
                      CircleAmigo(
                        rightCircleAmigoPosition:
                        -1.20 * SizeConfig.heightMultiplier,
                        bottomCircleAmigoPosition:
                        -15.16 * SizeConfig.heightMultiplier,
                        circleAmigoHeight:
                        20.02 * SizeConfig.heightMultiplier,
                        circleAmigoWidth:
                        20.02 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        rightCircleAmigoPosition:
                        -4.46 * SizeConfig.heightMultiplier,
                        bottomCircleAmigoPosition:
                        -18.41 * SizeConfig.heightMultiplier,
                        circleAmigoHeight:
                        26.53 * SizeConfig.heightMultiplier,
                        circleAmigoWidth:
                        26.53 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        rightCircleAmigoPosition:
                        -7.71 * SizeConfig.heightMultiplier,
                        bottomCircleAmigoPosition:
                        -21.67 * SizeConfig.heightMultiplier,
                        circleAmigoHeight:
                        34.04 * SizeConfig.heightMultiplier,
                        circleAmigoWidth:
                        34.04 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),

                      Center(
                        child: Container(
                          width:MediaQuery.of(context).size.width*0.6,
                          // margin: EdgeInsets.only(bottom: 9.76 * SizeConfig.heightMultiplier),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: 6.51 * SizeConfig.heightMultiplier),
                                child: Text(
                                  "Related Article",
                                  style: TextStyle(
                                      fontSize:3.25 * SizeConfig.textMultiplier,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 500,
                                child: FutureBuilder(
                                  future: Blog().getBlogData(),
                                  builder: (context,snapshot){
                                    if(snapshot.connectionState==ConnectionState.done){
                                      if (snapshot.hasData){
                                        return ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 3,
                                            itemBuilder: (context,index) {
                                              BlogModel blog=snapshot.data[index];
                                              return Container(
                                                alignment: Alignment.center,
                                                width:MediaQuery.of(context).size.width*0.18,
                                                margin: EdgeInsets.only(left: 10),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    InkWell(
                                                      onTap: (){
                                                        Navigator.pushNamed(
                                                            context, BlogArticleRoute,
                                                            arguments: {
                                                              'image':blog.image,
                                                              'title':blog.title,
                                                              'data':blog.body["text"]
                                                            }
                                                        );
                                                      },
                                                      child: Container(
                                                        child: FadeInImage.memoryNetwork(
                                                          width: MediaQuery.of(context).size.width/5,
                                                          placeholder: kTransparentImage,
                                                          image: blog.image,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(top: 1.93 * SizeConfig.heightMultiplier),
                                                      child: Text(
                                                        blog.title,
                                                        maxLines: 2,
                                                        overflow: TextOverflow.ellipsis,
                                                        style: TextStyle(
                                                            color: AmigoColors.orange,
                                                            fontSize: 1.4 * SizeConfig.textMultiplier,
                                                            fontFamily: robot,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      alignment:Alignment.topLeft,
                                                      margin: EdgeInsets.only(
                                                          top: 0.65 * SizeConfig.heightMultiplier),
                                                      child: Text(
                                                        blog.createdAt,
                                                        style: TextStyle(
                                                            color: AmigoColors.orange,
                                                            fontSize: 1.30 * SizeConfig.textMultiplier,
                                                            fontFamily: robot),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        blog.body["text"].toString().trimLeft(),
                                                        overflow: TextOverflow.ellipsis,
                                                        softWrap:true,
                                                        maxLines: 8,
                                                        style: TextStyle(
                                                            fontSize: 1.30 * SizeConfig.textMultiplier,
                                                            fontFamily: robot
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          top: 0.65 * SizeConfig.heightMultiplier),
                                                      child: InkWell(
                                                        onTap: () {
                                                          Navigator.pushNamed(
                                                              context, BlogArticleRoute,
                                                              arguments: {
                                                                'image':blog.image,
                                                                'title':blog.title,
                                                                'data': blog.body["text"]
                                                              }
                                                          );
                                                        },

                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              "Read More ",
                                                              style: TextStyle(
                                                                  fontFamily: robot,
                                                                  fontWeight: FontWeight.bold,
                                                                  fontSize: 1.30 * SizeConfig.textMultiplier
                                                              ),
                                                            ),
                                                            Icon(Icons.arrow_forward_ios_rounded,size: 15,)
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            }
                                        );
                                      }
                                    }
                                    return Center(
                                      child: CircularProgressIndicator(
                                        valueColor:
                                        AlwaysStoppedAnimation<Color>(
                                            Colors.blue),
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
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
    final Map blogData=ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AmigoColors.lightBlue),
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/images/logo.png",
          height: 3.18 * SizeConfig.heightMultiplier,
        ),
      ),
      endDrawer: Container(
        width: MediaQuery.of(context).size.width,
        child: Drawer(
            child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          ListTile(
            trailing: FlatButton(
              child: Icon(
                Icons.close,
                color: AmigoColors.gray,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            title: Text(
              'Mindamigo',
              style: TextStyle(
                  fontSize: 4.27 * SizeConfig.textMultiplier,
                  color: AmigoColors.gray,
                  fontFamily: robot,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushNamed(context, HomeRoute);
            },
          ),

          //meet adam
          ListTile(
            title: Text(
              'Meet Adam',
              style: TextStyle(
                  fontSize: 4.27 * SizeConfig.textMultiplier,
                  color: AmigoColors.gray,
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
                  fontSize: 4.27 * SizeConfig.textMultiplier,
                  color: AmigoColors.gray,
                  fontFamily: robot,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushNamed(context, AboutUsRoute);
            },
          ),
          ListTile(
            title: Text(
              'PodCast',
              style: TextStyle(
                  fontSize: 4.27 * SizeConfig.textMultiplier,
                  color: AmigoColors.gray,
                  fontFamily: robot,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushNamed(context, PodcastRoute);
            },
          ),
          ListTile(
            title: Text(
              'Blog',
              style: TextStyle(
                  fontSize: 4.27 * SizeConfig.textMultiplier,
                  color: AmigoColors.gray,
                  fontFamily: robot,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushNamed(context, BlogPageRoute);
            },
          ),
        ])),
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
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width / 2,
                      child: Column(
                        children: [
                          //title
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Text(
                              blogData["title"],
                              style: TextStyle(
                                  color: AmigoColors.orange,
                                  fontSize: 56,
                                  fontFamily: robot),
                            ),
                          ),
                          //image
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Image.network(blogData["image"]),
                          ),
                          //heading
                          Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: Container(
                              padding: EdgeInsets.only(bottom: 100),
                              child: Text(
                                // Strings.blogContent,
                                blogData["data"],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 25, fontFamily: robot),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 30),
                            child: Container(
                              alignment: Alignment.center,
                              width: 250,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Share",
                                    style: TextStyle(
                                        color: AmigoColors.lightblue1,
                                        fontSize: 24,
                                        fontFamily: robot),
                                  ),
                                  Image.asset(
                                    facebookShare,
                                    height: 37,
                                    width: 37,
                                  ),
                                  Image.asset(
                                    twitterShare,
                                    height: 37,
                                    width: 37,
                                  ),
                                  Image.asset(
                                    mailShare,
                                    height: 37,
                                    width: 37,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    CircleAmigo(
                      topCircleAmigoPosition:
                          -7.20 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -4.16 * SizeConfig.heightMultiplier,
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
                          -9.46 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -7.41 * SizeConfig.heightMultiplier,
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
                          -12.71 * SizeConfig.heightMultiplier,
                      leftCircleAmigoPosition:
                          -10.67 * SizeConfig.heightMultiplier,
                      circleAmigoHeight: 23.04 * SizeConfig.heightMultiplier,
                      circleAmigoWidth: 23.04 * SizeConfig.heightMultiplier,
                      circleAmigoGradient: [
                        AmigoColors.orange,
                        AmigoColors.lightRed2
                      ],
                      circleAmigoOpacity: [0.1, 0.1],
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
                      //right
                      CircleAmigo(
                        topCircleAmigoPosition:
                        -1.20 * SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition:
                        -15.16 * SizeConfig.heightMultiplier,
                        circleAmigoHeight:
                        20.02 * SizeConfig.heightMultiplier,
                        circleAmigoWidth:
                        20.02 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        topCircleAmigoPosition:
                        -4.46 * SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition:
                        -18.41 * SizeConfig.heightMultiplier,
                        circleAmigoHeight:
                        26.53 * SizeConfig.heightMultiplier,
                        circleAmigoWidth:
                        26.53 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        topCircleAmigoPosition:
                        -7.71 * SizeConfig.heightMultiplier,
                        rightCircleAmigoPosition:
                        -21.67 * SizeConfig.heightMultiplier,
                        circleAmigoHeight:
                        34.04 * SizeConfig.heightMultiplier,
                        circleAmigoWidth:
                        34.04 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      //left
                      CircleAmigo(
                        topCircleAmigoPosition:
                        -1.20 * SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition:
                        -15.16 * SizeConfig.heightMultiplier,
                        circleAmigoHeight:
                        20.02 * SizeConfig.heightMultiplier,
                        circleAmigoWidth:
                        20.02 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        topCircleAmigoPosition:
                        -4.46 * SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition:
                        -18.41 * SizeConfig.heightMultiplier,
                        circleAmigoHeight:
                        26.53 * SizeConfig.heightMultiplier,
                        circleAmigoWidth:
                        26.53 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        topCircleAmigoPosition:
                        -7.71 * SizeConfig.heightMultiplier,
                        leftCircleAmigoPosition:
                        -21.67 * SizeConfig.heightMultiplier,
                        circleAmigoHeight:
                        34.04 * SizeConfig.heightMultiplier,
                        circleAmigoWidth:
                        34.04 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),

                      //bottom
                      CircleAmigo(
                        rightCircleAmigoPosition:
                        -1.20 * SizeConfig.heightMultiplier,
                        bottomCircleAmigoPosition:
                        -15.16 * SizeConfig.heightMultiplier,
                        circleAmigoHeight:
                        20.02 * SizeConfig.heightMultiplier,
                        circleAmigoWidth:
                        20.02 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        rightCircleAmigoPosition:
                        -4.46 * SizeConfig.heightMultiplier,
                        bottomCircleAmigoPosition:
                        -18.41 * SizeConfig.heightMultiplier,
                        circleAmigoHeight:
                        26.53 * SizeConfig.heightMultiplier,
                        circleAmigoWidth:
                        26.53 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),
                      CircleAmigo(
                        rightCircleAmigoPosition:
                        -7.71 * SizeConfig.heightMultiplier,
                        bottomCircleAmigoPosition:
                        -21.67 * SizeConfig.heightMultiplier,
                        circleAmigoHeight:
                        34.04 * SizeConfig.heightMultiplier,
                        circleAmigoWidth:
                        34.04 * SizeConfig.heightMultiplier,
                        circleAmigoGradient: [
                          AmigoColors.orange,
                          AmigoColors.lightRed2
                        ],
                        circleAmigoOpacity: [0.1, 0.1],
                      ),

                      Center(
                        child: Container(
                          width:MediaQuery.of(context).size.width*0.9,
                          margin: EdgeInsets.only(bottom: 9.76 * SizeConfig.heightMultiplier),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: 6.51 * SizeConfig.heightMultiplier),
                                child: Text(
                                  "Related Article",
                                  style: TextStyle(
                                      fontSize:3.25 * SizeConfig.textMultiplier,
                                      fontFamily: robot,
                                      color: AmigoColors.lightBlack
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 300,
                                child: FutureBuilder(
                                  future: Blog().getBlogData(),
                                  builder: (context,snapshot){
                                    if(snapshot.connectionState==ConnectionState.done){
                                      if (snapshot.hasData){
                                        return ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 3,
                                            itemBuilder: (context,index) {
                                              BlogModel blog=snapshot.data[index];
                                              return Container(
                                                alignment: Alignment.center,
                                                width:MediaQuery.of(context).size.width*0.25,
                                                margin: EdgeInsets.only(left: 10),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    InkWell(
                                                      onTap: (){
                                                        Navigator.pushNamed(
                                                            context, BlogArticleRoute,
                                                            arguments: {
                                                              'image':blog.image,
                                                              'title':blog.title,
                                                              'data':blog.body["text"]
                                                            }
                                                        );
                                                      },
                                                      child: Container(
                                                        child: FadeInImage.memoryNetwork(
                                                          width: MediaQuery.of(context).size.width/4,
                                                          placeholder: kTransparentImage,
                                                          image: blog.image,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(top: 1.93 * SizeConfig.heightMultiplier),
                                                      child: Text(
                                                        blog.title,
                                                        maxLines: 2,
                                                        overflow: TextOverflow.ellipsis,
                                                        style: TextStyle(
                                                            color: AmigoColors.orange,
                                                            fontSize: 1.4 * SizeConfig.textMultiplier,
                                                            fontFamily: robot,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      alignment:Alignment.topLeft,
                                                      margin: EdgeInsets.only(
                                                          top: 0.65 * SizeConfig.heightMultiplier),
                                                      child: Text(
                                                        blog.createdAt,
                                                        style: TextStyle(
                                                            color: AmigoColors.orange,
                                                            fontSize: 1.30 * SizeConfig.textMultiplier,
                                                            fontFamily: robot),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        blog.body["text"].toString().trimLeft(),
                                                        overflow: TextOverflow.ellipsis,
                                                        softWrap:true,
                                                        maxLines: 8,
                                                        style: TextStyle(
                                                            fontSize: 1.30 * SizeConfig.textMultiplier,
                                                            fontFamily: robot
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          top: 0.65 * SizeConfig.heightMultiplier),
                                                      child: InkWell(
                                                        onTap: () {
                                                          Navigator.pushNamed(
                                                              context, BlogArticleRoute,
                                                              arguments: {
                                                                'image':blog.image,
                                                                'title':blog.title,
                                                                'data': blog.body["text"]
                                                              }
                                                          );
                                                        },

                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              "Read More ",
                                                              style: TextStyle(
                                                                  fontFamily: robot,
                                                                  fontWeight: FontWeight.bold,
                                                                  fontSize: 1.30 * SizeConfig.textMultiplier
                                                              ),
                                                            ),
                                                            Icon(Icons.arrow_forward_ios_rounded,size: 10,)
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            }
                                        );
                                      }
                                    }
                                    return Center(
                                      child: CircularProgressIndicator(
                                        valueColor:
                                        AlwaysStoppedAnimation<Color>(
                                            Colors.blue),
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
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
