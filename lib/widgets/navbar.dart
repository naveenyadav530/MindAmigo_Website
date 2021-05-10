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
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(3.90*SizeConfig.heightMultiplier, 1.62*SizeConfig.heightMultiplier, 0.65*SizeConfig.heightMultiplier, 1.62*SizeConfig.heightMultiplier),
          child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, HomeRoute);
              },
              child: Image.asset(websiteLogo, height: 3.25*SizeConfig.heightMultiplier,)),
        ),
        Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 2, 3.60*SizeConfig.heightMultiplier,0 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, MeetAdamRoute);
                    },
                    child: Text(
                      Strings.meetAdam,
                      style: TextStyle(
                        fontSize:2.27*SizeConfig.textMultiplier,
                        color: AmigoColors.lightBlue,
                        fontFamily: robot,

                      ),
                    ),
                  ) ,
                  SizedBox(width: 5.06*SizeConfig.heightMultiplier,),

                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AboutUsRoute);
                    },
                    child: Text(Strings.about,
                      style: TextStyle(
                          fontSize:2.27*SizeConfig.textMultiplier,
                          color: AmigoColors.lightBlue,
                          fontFamily: robot
                      ),),
                  ) ,
                  SizedBox(width: 5.06*SizeConfig.heightMultiplier,),

                  InkWell(onTap: (){
                    Navigator.pushNamed(context, PodcastRoute);
                  },child: Text(
                      Strings.podcast,
                      style: TextStyle(
                          fontSize: 2.27*SizeConfig.textMultiplier,
                          color: AmigoColors.lightBlue,
                          fontFamily: robot
                      )
                  ),
                  ),
                  SizedBox(width: 5.06*SizeConfig.heightMultiplier,),

                  InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, BlogPageRoute);
                      },
                      child: Text(
                        Strings.blog,
                        style: TextStyle(
                          color: AmigoColors.lightBlue,
                          fontFamily: robot,
                          fontSize: 2.27*SizeConfig.textMultiplier,
                        ),
                      )
                  ),

                ],
              ),
            )
        ),
      ],
    );
  }
}




