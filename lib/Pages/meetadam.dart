import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/responsiveLayout.dart';
import 'package:mindamigo/utils/size_config.dart';
import 'package:mindamigo/widgets/adamAdvisory.dart';
import 'package:mindamigo/widgets/adamWidget.dart';
import 'package:mindamigo/widgets/bottombar.dart';
import 'package:mindamigo/widgets/gradientLine.dart';
import 'package:mindamigo/widgets/navbar.dart';






class MeetAdam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      webBody: WebMeetAdam(),
      mobileBody: MobileMeetAdam(),

    );
  }
}


//web MeetAdam
class WebMeetAdam extends StatefulWidget {
  @override
  _WebMeetAdamState createState() => _WebMeetAdamState();
}

class _WebMeetAdamState extends State<WebMeetAdam> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              NavBar(),
              GradientLine(),
              AdamBlog(),
              AdamAdvisory(),
              BottomNav(),
            ],
          ),
        ),
      ),
    );
  }
}

//MobileMeetAdam
class MobileMeetAdam extends StatefulWidget {
  @override
  _MobileMeetAdamState createState() => _MobileMeetAdamState();
}

class _MobileMeetAdamState extends State<MobileMeetAdam> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

