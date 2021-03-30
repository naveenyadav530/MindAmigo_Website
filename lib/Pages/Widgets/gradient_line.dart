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
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xffe75e5e), Color(0xff457ea5)])
      ),
    );
  }
}
