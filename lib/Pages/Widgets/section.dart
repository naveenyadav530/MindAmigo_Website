import 'package:flutter/material.dart';
import 'package:website/Config/size_config.dart';
import 'package:website/Pages/Widgets/circles.dart';



class Section3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 26.15*SizeConfig.heightMultiplier,
      color: Color(0xffFDF2E4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.only(left: 120),
            child: Text("Be empowered to take back control\nof your mental health by learning\nwhat the therapists know.",
              style: TextStyle(color: Color(0xff707070), fontSize: 37),),
          )),
          Expanded(child: Container(),)


        ],
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26.15*SizeConfig.heightMultiplier,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Expanded(child: Container(),),
          Expanded(child: Padding(
            padding: const EdgeInsets.only(left: 120),
            child: Text("Be empowered to take back control\nof your mental health by learning\nwhat the therapists know.",
              style: TextStyle(color: Color(0xff707070), fontSize: 37),),
          )),


        ],
      ),
    );
  }
}

class Section1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26.15*SizeConfig.heightMultiplier,
      color: Color(0xffFDF2E4),
      child: Row(

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.only(left: 120),
            child: Text("Be empowered to take back control\nof your mental health by learning\nwhat the therapists know.",
            style: TextStyle(color: Color(0xff707070), fontSize: 37),),
          )),
          Expanded(child: Container(),)


        ],
      ),
    );
  }
}



class Section extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26.15*SizeConfig.heightMultiplier,
    );
  }
}

