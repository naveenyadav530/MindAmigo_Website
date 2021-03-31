import 'package:flutter/material.dart';
import 'package:website/Config/size_config.dart';
import 'package:website/Config/strings.dart';




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
            padding: const EdgeInsets.fromLTRB(60, 25, 0, 25),
            child: Image.asset("assets/images/logo.png", height: 3.25*SizeConfig.heightMultiplier,),
          ),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 2, 60,0 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(Strings.meetAdam,
                    style: TextStyle(fontSize:2.27*SizeConfig.textMultiplier,color: Color(0xff17B8D9),
                        fontFamily: "Robot",decoration: TextDecoration.none),) ,
                  SizedBox(width: 7.16*SizeConfig.heightMultiplier,),
                  Text("About",
                    style: TextStyle(fontSize:2.27*SizeConfig.textMultiplier,color: Color(0xff17B8D9),
                        fontFamily: "Robot",decoration: TextDecoration.none),) ,
                  SizedBox(width: 7.16*SizeConfig.heightMultiplier,),
                  FittedBox(child: Text(Strings.podcast, style: TextStyle(fontSize: 2.27*SizeConfig.textMultiplier,color: Color(0xff17B8D9), fontFamily: "Robot",decoration: TextDecoration.none),)),
                  SizedBox(width: 7.16*SizeConfig.heightMultiplier,),
                  Text(Strings.blog,style: TextStyle(color: Color(0xff17B8D9),fontFamily: "Robot", fontSize: 2.27*SizeConfig.textMultiplier,decoration: TextDecoration.none),),

                ],
              ),
            )
        ),
      ],
    );

  }
}
