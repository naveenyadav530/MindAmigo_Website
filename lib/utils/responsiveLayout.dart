

import 'package:flutter/material.dart';
import 'package:mindamigo/styles/constants.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    Key key,
    this.mobileBody,
    this.tabletBody,
    @required this.webBody,
  }) : super(key: key);

  final Widget mobileBody;
  final Widget tabletBody;
  final Widget webBody;


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(

      builder: (context, dimens){
        if(dimens.maxWidth >webBreakpoint){
          return webBody;
        }else if(dimens.maxWidth < webBreakpoint&& dimens.maxWidth > mobileBreakpoint){
          return tabletBody??webBody;
        }else{
          return mobileBody;
        }
      },
    );
  }
}
