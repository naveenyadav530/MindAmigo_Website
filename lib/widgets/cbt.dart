import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:website/styles/size_config.dart';
import 'package:website/styles/strings.dart';
import 'package:website/utils/responsive_widget.dart';


class CBT extends StatefulWidget {
  @override
  _CBTState createState() => _CBTState();
}

class _CBTState extends State<CBT> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isDesktop(context)?Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [Color(0xffff7796),Color(0xfffc9e5d), Color(0xfff2a53c),Color(0xffea9e28)])
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 78),
                  child: Container(
                      width: 32.50*SizeConfig.heightMultiplier,
                    child: Text("CBT",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 72,
                          decoration: TextDecoration.none,
                          fontFamily: "Fredoka"
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 32.55*SizeConfig.heightMultiplier,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 70, 15),
                        child: Text(Strings.cbt1,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 1.15*SizeConfig.textMultiplier,
                              height: 1.5,
                              decoration: TextDecoration.none,
                              fontFamily: "Robot"
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 70, 15),
                        child: Text(Strings.cbt2,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 1.15*SizeConfig.textMultiplier,
                              height: 1.5,
                              decoration: TextDecoration.none,
                              fontFamily: "Robot"
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 70, 15),
                        child: Text(Strings.cbt3,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 1.15*SizeConfig.textMultiplier,
                              height: 1.5,
                              decoration: TextDecoration.none,
                              fontFamily: "Robot"
                          ),
                        ),
                      )
                    ],
                  ),
                )


        ],
      )
          ),
          Expanded(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 65, 30, 0),
              child: Image.asset("assets/images/cbt.png",
                height:37.74*SizeConfig.heightMultiplier,
              ),
            ),
          ],
          )
          )

        ],
      ),
    ):

    Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [Color(0xffff7796),Color(0xfffc9e5d), Color(0xfff2a53c),Color(0xffea9e28)])
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text("CBT",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: "Fredoka",
                    decoration: TextDecoration.none,
                    fontSize: 7*SizeConfig.textMultiplier,
                    color: Colors.white,
                  ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(Strings.cbt1,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 2.5*SizeConfig.textMultiplier,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Robot",
                ),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(Strings.cbt2,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 2.5*SizeConfig.textMultiplier,
                  fontFamily: "Robot",
                  fontWeight: FontWeight.bold,
                  color: Colors.white,

                ),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 30),
              child: Text(Strings.cbt3,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 2.5*SizeConfig.textMultiplier,
                  fontFamily: "Robot",
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
            ),

          ],
        )
    );
  }
}
