import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'package:website/pages/homepage.dart';
import 'package:website/pages/privacyPolicy.dart';
import 'package:website/pages/termsConditions.dart';
import 'package:website/styles/size_config.dart';
import 'package:website/styles/strings.dart';

void main(){
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          return OrientationBuilder(
              builder: (context, orientation){
                SizeConfig().init(constraints, orientation);
                return MaterialApp(
                  title: 'Welcome to Flutter',
                  initialRoute: HomeRoute,
                  routes: {
                    HomeRoute: (context) => Scaffold(body: HomePage(),),
                    PrivacyPolicyRoute: (context) => Scaffold(body: PrivacyPolicy(),),
                    TermsConditionRoute: (context)=>Scaffold(body: TermsConditions(),),
                  },

                );
              });
        });

  }
}