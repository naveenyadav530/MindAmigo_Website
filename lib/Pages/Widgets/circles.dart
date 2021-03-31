import 'package:flutter/material.dart';
class CircleAmigo extends StatelessWidget {
  final double topCircleAmigoPosition;
  final double bottomCircleAmigoPosition;
  final double leftCircleAmigoPosition;
  final double rightCircleAmigoPosition;
  final double circleAmigoWidth;
  final double circleAmigoHeight;
  final List<Color> circleAmigoGradient;
  final List<double> circleAmigoOpacity;
  CircleAmigo({
    this.topCircleAmigoPosition,
    this.bottomCircleAmigoPosition,
    this.leftCircleAmigoPosition,
    this.rightCircleAmigoPosition,
    this.circleAmigoWidth,
    this.circleAmigoHeight,
    this.circleAmigoOpacity,
    this.circleAmigoGradient
  });
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top:topCircleAmigoPosition,
      bottom: bottomCircleAmigoPosition,
      left: leftCircleAmigoPosition,
      right: rightCircleAmigoPosition,
      child: Container(
        width:circleAmigoWidth,
        height:circleAmigoHeight,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: [
                  circleAmigoGradient[0].withOpacity(circleAmigoOpacity[0]),
                  circleAmigoGradient[1].withOpacity(circleAmigoOpacity[1])
                ]
            )
        ),
      ),
    );
  }
}
