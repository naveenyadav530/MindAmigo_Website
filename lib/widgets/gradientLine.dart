import 'package:flutter/cupertino.dart';
import 'package:mindamigo/styles/colors.dart';

class GradientLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [AmigoColors.lightRed2, AmigoColors.lightBlue])),
    );
  }
}
