import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:website/Config/responsive_widget.dart';
import 'package:website/Config/size_config.dart';
import 'package:website/Config/strings.dart';

class ACT extends StatefulWidget {
  @override
  _ACTState createState() => _ACTState();
}

class _ACTState extends State<ACT> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isDesktop(context)? Container(
      decoration:   BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [Color(0xff5bbed9),Color(0xff62c1b1), Color(0xff72c77e),Color(0xff72c77e)])
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child:
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 85, 20, 0),
                child: Image.asset("assets/images/act.png",
                  height: 37.74*SizeConfig.heightMultiplier,
                ),
              ),
            ),

          ),
          Expanded(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 80, 0,0),
                    child: Text("ACT",

                      style: TextStyle(
                        fontFamily: "Fredoka",
                        decoration: TextDecoration.none,
                        fontSize: 4.68*SizeConfig.textMultiplier,
                        color: Colors.white,
                      ),),
                  ),
                  Container(

                    width: 30.92*SizeConfig.heightMultiplier,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 30, 20),
                          child: Text(Strings.act1,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 1.15*SizeConfig.textMultiplier,
                              color: Colors.white,
                              height: 1.5,
                              fontFamily: "Robot",
                            ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 30, 20),
                          child: Text(Strings.act2,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 1.15*SizeConfig.textMultiplier,
                              fontFamily: "Robot",
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                              color: Colors.white,

                            ),),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 30, 25),
                          child: Text(Strings.act3,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 1.15*SizeConfig.textMultiplier,
                              fontFamily: "Robot",
                              height: 1.5,
                              color: Colors.white,

                            ),),
                        ),

                      ],
                    ),
                  )
                ],
              )
          )


        ],
      ),
    ) : Container(
        decoration:   BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomLeft,
        colors: [Color(0xff5bbed9),Color(0xff62c1b1), Color(0xff72c77e),Color(0xff72c77e)])
    ),
    width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text("ACT",
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
            child: Text(Strings.act1,
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
            child: Text(Strings.act2,
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
            child: Text(Strings.act3,
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
