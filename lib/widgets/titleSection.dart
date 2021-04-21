import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/size_config.dart';

import '../styles/constants.dart';
import '../styles/constants.dart';

class TitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Text(
                  Strings.mindhelp,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontSize: 3.27 * SizeConfig.textMultiplier,
                    color: Color(0xffEC6C83),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 32,
                ),
                child: Text(
                  Strings.therapist,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontSize: 3.25 * SizeConfig.textMultiplier,
                    color: Color(0xff707070),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 20, 0, 0),
                child: Text(
                  "Coming Soon...",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontSize: 2.25 * SizeConfig.textMultiplier,
                    color: Color(0xff707070),
                  ),
                ),
              ),

              Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    children: [
                      Container(
                        width: 9.6 * SizeConfig.heightMultiplier,
                        height: 3.0 * SizeConfig.heightMultiplier,
                        decoration: BoxDecoration(
                            image: new DecorationImage(
                                image: new AssetImage(bottomAppStore),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.white12.withOpacity(0.8),
                                    BlendMode.srcOver))),

                        // child: Image.asset(
                        //   bottomAppStore,
                        //   fit: BoxFit.fill,
                        //   width: 9.6 * SizeConfig.heightMultiplier,
                        //   height: 3.2 * SizeConfig.heightMultiplier,
                        // ),
                      ),
                      Container(
                        width: 11.06 * SizeConfig.heightMultiplier,
                        height: 4.5 * SizeConfig.heightMultiplier,
                        decoration: BoxDecoration(
                            image: new DecorationImage(
                                image: new AssetImage(bottomPlayStore),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.white12.withOpacity(0.8),
                                    BlendMode.srcOver))),
                      )
                    ],
                  )),

              //text
            ],
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Image.asset(
                "assets/images/titleSection.png",
                height: 26.15 * SizeConfig.heightMultiplier,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TabTitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Text(
                  Strings.mindhelp,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontSize: 3 * SizeConfig.textMultiplier,
                    color: Color(0xffEC6C83),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 32,
                ),
                child: Text(
                  Strings.therapist,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontSize: 3 * SizeConfig.textMultiplier,
                    color: Color(0xff707070),
                  ),
                ),
              ),

              //text
            ],
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Image.asset(
                "assets/images/titleSection.png",
                height: 26.15 * SizeConfig.heightMultiplier,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class mobileTitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(bottom: 3.03 * SizeConfig.heightMultiplier),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/titleSection.png",
            height: 26.15 * SizeConfig.heightMultiplier,
          ),
          Text(
            Strings.mindhelp,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              fontSize: 3.15 * SizeConfig.textMultiplier,
              color: Color(0xffEC6C83),
            ),
          ),
          Text(
            Strings.therapist,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              fontSize: 3.13 * SizeConfig.textMultiplier,
              color: Color(0xff707070),
            ),
          ),
          //text
        ],
      ),
    );
  }
}
