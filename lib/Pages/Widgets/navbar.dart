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
            padding: const EdgeInsets.fromLTRB(68, 25, 0, 45),
            child: RichText(
              text: TextSpan(children: <TextSpan>[
                TextSpan( text: Strings.mindLogo, style: TextStyle(color: Color(0xff41b0e1),fontFamily: "Fredoka", fontSize: 3.2*SizeConfig.textMultiplier),),
                TextSpan(text: Strings.amigoLogo ,style: TextStyle(fontFamily: "Fredoka",color: Color(0xffe75e5e),fontSize: 3.2*SizeConfig.textMultiplier))
              ],
              ),
            ),
          ),
        Expanded(

            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 2, 90,0 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(Strings.meetAdam,
                    style: TextStyle(fontSize:2.27*SizeConfig.textMultiplier,color: Color(0xff41b0e1),
                        fontFamily: "Robot",decoration: TextDecoration.none),) ,
                  SizedBox(width: 110,),
                  Text(Strings.podcast, style: TextStyle(fontSize:2.27*SizeConfig.textMultiplier,color: Color(0xff41b0e1), fontFamily: "Robot",decoration: TextDecoration.none),),
                  SizedBox(width: 110,),
                  Text(Strings.blog,style: TextStyle(color: Color(0xff41b0e1),fontFamily: "Robot", fontSize: 2.27*SizeConfig.textMultiplier,decoration: TextDecoration.none),),
                ],
              ),
            )
        ),
      ],
    );

  }
}
