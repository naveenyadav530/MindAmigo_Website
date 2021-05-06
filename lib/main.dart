import 'package:flutter/material.dart';
import 'package:mindamigo/core/cookie/cookiesAccept.dart';
import 'package:mindamigo/pages/about.dart';
import 'package:mindamigo/pages/blogArticle.dart';
import 'package:mindamigo/pages/blogPage.dart';
import 'package:mindamigo/pages/homepage.dart';
import 'package:mindamigo/pages/meetadam.dart';
import 'package:mindamigo/pages/podcast.dart';
import 'package:mindamigo/pages/privacyPolicy.dart';
import 'package:mindamigo/pages/termsCondition.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/utils/size_config.dart';
import 'package:mindamigo/pages/cookiePolicy.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CookiesSharedPreference.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Mindamigo',
          initialRoute: HomeRoute,
          routes: {
            HomeRoute: (context) => Scaffold(
                  body: HomePage(),
                ),
            PrivacyPolicyRoute: (context) => Scaffold(
                  body: PrivacyPolicy(),
                ),
            TermsConditionRoute: (context) => Scaffold(
                  body: TermsConditions(),
                ),
            AboutUsRoute: (context) => Scaffold(
                  body: AboutUs(),
                ),
            PodcastRoute: (context) => Scaffold(body: PodCast()),
            MeetAdamRoute: (context) => Scaffold(
                  body: MeetAdam(),
                ),
            BlogPageRoute: (context) => Scaffold(
                  body: BlogPage(),
                ),
            BlogArticleRoute: (context) => Scaffold(
                  body: BlogArticle(),
                ),
            CookiePolicyRoute:(context)=>Scaffold(
              body: CookiePolicy(),
            )
          },
        );
      });
    });
  }
}
