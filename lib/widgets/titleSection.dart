import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/size_config.dart';

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
                    child: Text(Strings.mindhelp,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,
                        fontSize: 3.27*SizeConfig.textMultiplier,
                        color: Color(0xffEC6C83),
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32,),
                    child: Text(Strings.therapist,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,

                        fontSize: 3.25*SizeConfig.textMultiplier,
                        color: Color(0xff707070),
                      ),),
                  ),

                  //text


                ],
              )
          ),

          Expanded(
            child:
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Image.asset("assets/images/titleSection.png",
                height: 26.15*SizeConfig.heightMultiplier,
              ),
            ),

          )

        ],
      ),
    );
  }
}