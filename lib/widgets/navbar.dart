import 'package:flutter/material.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/size_config.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    3.90 * SizeConfig.heightMultiplier,
                    1.62 * SizeConfig.heightMultiplier,
                    0.65 * SizeConfig.heightMultiplier,
                    1.62 * SizeConfig.heightMultiplier),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, HomeRoute);
                    },
                    child: Image.asset(
                      websiteLogo,
                      height: 3.25 * SizeConfig.heightMultiplier,
                    )),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(
                    0, 2, 3.60 * SizeConfig.heightMultiplier, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, MeetAdamRoute);
                      },
                      child: Text(
                        Strings.meetAdam,
                        style: TextStyle(
                          fontSize: 2.27 * SizeConfig.textMultiplier,
                          color: AmigoColors.lightBlue,
                          fontFamily: robot,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.06 * SizeConfig.heightMultiplier,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AboutUsRoute);
                      },
                      child: Text(
                        Strings.about,
                        style: TextStyle(
                            fontSize: 2.27 * SizeConfig.textMultiplier,
                            color: AmigoColors.lightBlue,
                            fontFamily: robot),
                      ),
                    ),
                    SizedBox(
                      width: 5.06 * SizeConfig.heightMultiplier,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, PodcastRoute);
                      },
                      child: Text(Strings.podcast,
                          style: TextStyle(
                              fontSize: 2.27 * SizeConfig.textMultiplier,
                              color: AmigoColors.lightBlue,
                              fontFamily: robot)),
                    ),
                    SizedBox(
                      width: 5.06 * SizeConfig.heightMultiplier,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, BlogPageRoute);
                        },
                        child: Text(
                          Strings.blog,
                          style: TextStyle(
                            color: AmigoColors.lightBlue,
                            fontFamily: robot,
                            fontSize: 2.27 * SizeConfig.textMultiplier,
                          ),
                        )),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class WideNavBar extends StatefulWidget {
  @override
  _WideNavBarState createState() => _WideNavBarState();
}

class _WideNavBarState extends State<WideNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 1920),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(59.90, 24.88, 9.98, 24.88),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, HomeRoute);
                    },
                    child: Image.asset(
                      websiteLogo,
                      height: 49.92,
                    )),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(0, 2, 55.29, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, MeetAdamRoute);
                      },
                      child: Text(
                        Strings.meetAdam,
                        style: TextStyle(
                          fontSize: 34.86,
                          color: AmigoColors.lightBlue,
                          fontFamily: robot,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 77.72,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AboutUsRoute);
                      },
                      child: Text(
                        Strings.about,
                        style: TextStyle(
                            fontSize: 34.86,
                            color: AmigoColors.lightBlue,
                            fontFamily: robot),
                      ),
                    ),
                    SizedBox(
                      width: 77.72,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, PodcastRoute);
                      },
                      child: Text(Strings.podcast,
                          style: TextStyle(
                              fontSize: 34.86,
                              color: AmigoColors.lightBlue,
                              fontFamily: robot)),
                    ),
                    SizedBox(
                      width: 77.72,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, BlogPageRoute);
                        },
                        child: Text(
                          Strings.blog,
                          style: TextStyle(
                            color: AmigoColors.lightBlue,
                            fontFamily: robot,
                            fontSize: 34.86,
                          ),
                        )),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
