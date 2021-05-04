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
    return Stack(children: [
      SafeArea(
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
                  AdamBlog(),
                  AdamAdvisory(),
                  BottomNav(),
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
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
                      backgroundColor: Colors.transparent,
                      context: context,
                      elevation: 10,
                      isScrollControlled: true,
                      isDismissible: true,
                      builder: (BuildContext context) {
                        return DraggableScrollableSheet(
                            initialChildSize: 0.75, //set this as you want
                            maxChildSize: 0.75, //set this as you want
                            minChildSize: 0.75, //set this as you want
                            expand: true,
                            builder: (context, scrollController) {
                              return Container(
                                color: Colors.white,
                                height: MediaQuery.of(context).size.height,
                                child: Stack(
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: InkWell(
                                            child: Text(
                                              'Meet Adam',
                                              style: TextStyle(
                                                  fontSize: 4.27 *
                                                      SizeConfig.textMultiplier,
                                                  color: AmigoColors.lightBlack,
                                                  fontFamily: robot,
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, MeetAdamRoute);
                                            },
                                          ),
                                        ),
                                        //meet adam
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: InkWell(
                                            child: Text(
                                              'About Us',
                                              style: TextStyle(
                                                  fontSize: 4.27 *
                                                      SizeConfig.textMultiplier,
                                                  color: AmigoColors.lightBlack,
                                                  fontFamily: robot,
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, AboutUsRoute);
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: InkWell(
                                            child: Text(
                                              'Podcast',
                                              style: TextStyle(
                                                  fontSize: 4.27 *
                                                      SizeConfig.textMultiplier,
                                                  color: AmigoColors.lightBlack,
                                                  fontFamily: robot,
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, PodcastRoute);
                                            },
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: InkWell(
                                            child: Text(
                                              'Blog',
                                              style: TextStyle(
                                                  fontSize: 4.27 *
                                                      SizeConfig.textMultiplier,
                                                  color: AmigoColors.lightBlack,
                                                  fontFamily: robot,
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, BlogPageRoute);
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      right: 0,
                                      child: FlatButton(
                                        child: Icon(Icons.close),
                                        onPressed: () => Navigator.pop(context),
                                      ),
                                    ),
                                  ],
                                ),
                              ); //whatever you're returning, does not have to be a Container
                            });
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
