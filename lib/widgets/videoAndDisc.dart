
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:website/styles/size_config.dart';
import 'package:website/styles/strings.dart';
import 'package:website/utils/responsive_widget.dart';

class VideoDisc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isDesktop(context)?Container(
      color: Color(0xffF6EAEC),
      height: 32.55*SizeConfig.heightMultiplier,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              left: 70,
              top: 70,
              bottom: 70,
              child: Container(
                alignment: Alignment.center,
                height: 26.04*SizeConfig.heightMultiplier,
                width: 39.06*SizeConfig.heightMultiplier,
                decoration: BoxDecoration(color: Color(0xffE6E6E6),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Image.asset("assets/images/youtube.png", fit: BoxFit.fill, height: 6.51*SizeConfig.heightMultiplier, width: 6.51*SizeConfig.heightMultiplier,),

              )),

          Positioned(
              right: 70,
              top: 70,
              bottom: 70,
              //main container
              child: Container(

                height: 26.04*SizeConfig.heightMultiplier,
                width: 39.06*SizeConfig.heightMultiplier,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        color: Colors.black,
                        height: 6.5*SizeConfig.heightMultiplier,
                        width: 3.25*SizeConfig.heightMultiplier,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        color: Colors.pink,
                        height: 6.5*SizeConfig.heightMultiplier,
                        width: 3.25*SizeConfig.heightMultiplier,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(

                        child: Text(Strings.videDesc,style:TextStyle(fontFamily: "Helvetica", fontSize: 2.0*SizeConfig.heightMultiplier, color: Color(0xff5D535C)) , ),
                      ),
                    ),
                  ],
                ),
              )
          )

        ],
      ),
    ):
    Container(
      color: Color(0xffF6EAEC),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            child: Container(
              alignment: Alignment.center,
              height: 26.04*SizeConfig.heightMultiplier,
              width: 39.06*SizeConfig.heightMultiplier,
              decoration: BoxDecoration(color: Color(0xffE6E6E6),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Image.asset("assets/images/youtube.png", fit: BoxFit.fill, height: 6.51*SizeConfig.heightMultiplier, width: 6.51*SizeConfig.heightMultiplier,),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                color: Color(0xffF6EAEC),
                width: MediaQuery.of(context).size.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 26.04*SizeConfig.heightMultiplier,
                    width: 39.06*SizeConfig.heightMultiplier,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            color: Colors.black,
                            height: 6.5*SizeConfig.heightMultiplier,
                            width: 3.25*SizeConfig.heightMultiplier,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            color: Colors.pink,
                            height: 6.5*SizeConfig.heightMultiplier,
                            width: 3.25*SizeConfig.heightMultiplier,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(

                            child: Text(Strings.videDesc,style:TextStyle(fontFamily: "Helvetica", fontSize: 2.0*SizeConfig.heightMultiplier, color: Color(0xff5D535C)) , ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],

              ),
            ),
          )


        ],
      ),
    );
  }
}
