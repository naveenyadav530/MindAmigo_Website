import 'package:flutter/material.dart';



class GradientLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7,
      decoration:   BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [Color(0xffEC6C83),Color(0xff17B8D9)])
      ),
    );
  }
}
