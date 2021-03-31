import 'package:flutter/material.dart';


class GradientLine extends StatefulWidget {
  @override
  _GradientLineState createState() => _GradientLineState();
}

class _GradientLineState extends State<GradientLine> {
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
