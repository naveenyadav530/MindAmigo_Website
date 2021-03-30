import 'package:flutter/material.dart';
import 'package:website/Config/responsive_widget.dart';
import 'package:website/Config/size_config.dart';
import 'package:website/Config/strings.dart';
class TitleSection extends StatefulWidget {
  @override
  _TitleSectionState createState() => _TitleSectionState();
}

class _TitleSectionState extends State<TitleSection> {

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isDesktop(context)?Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(

              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 72, 0, 0),
                    child: Text(Strings.mindhelp,

                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,
                        fontSize: 3.27*SizeConfig.textMultiplier,
                        color: Color(0xffe75e5e),
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32,),
                    child: Text(Strings.therapist,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,

                        fontSize: 3.25*SizeConfig.textMultiplier,
                        color: Colors.black45,
                      ),),
                  ),

                  //text
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 30, 40, 30),
                    child: Text(Strings.title1,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 1.6*SizeConfig.textMultiplier,
                        fontFamily: "Robot",
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan,

                      ),),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 30, 40, 105),
                    child: Text(Strings.title2,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 1.6*SizeConfig.textMultiplier,
                        fontFamily: "Robot",
                        color: Colors.cyan,

                      ),),
                  ),



                ],
              )
        ),

        ),
        Expanded(
          child:
          Image.asset("assets/images/frame.png",
            height: 35.15*SizeConfig.heightMultiplier,

          ),

        )

      ],
    ) : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Padding(
             padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
             child: Text(Strings.mindhelp,
               textAlign: TextAlign.justify,
               style: TextStyle(
                 decoration: TextDecoration.none,
                 fontWeight: FontWeight.bold,
                 fontSize: 3.5*SizeConfig.textMultiplier,
                 color: Color(0xffe75e5e),
               ),
             ),
           ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                child: Text(Strings.therapist,

                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontSize: 3.5*SizeConfig.textMultiplier,
                    color: Colors.black45,
                  ),),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Text(Strings.title1,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 2.5*SizeConfig.textMultiplier,
                  fontFamily: "Robot",
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,

                ),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 30),
              child: Text(Strings.title2,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 2.5*SizeConfig.textMultiplier,
                  fontFamily: "Robot",
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,
                ),),
            ),
          ],
        );

  }
}
