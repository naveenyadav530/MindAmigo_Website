import 'package:flutter/material.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/utils/responsiveLayout.dart';
import 'package:mindamigo/utils/size_config.dart';



class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      webBody: WebBottom(),
      tabletBody: TabBottom(),
      mobileBody: MobileBottom(),
    );
  }
}

class WebBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 19.53*SizeConfig.heightMultiplier,
      color: AmigoColors.lightBrown,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Positioned(
              left: 14.97*SizeConfig.heightMultiplier,
              top: 3.2*SizeConfig.heightMultiplier,
              child: Text("Download the mindamigo app", style: TextStyle(color: AmigoColors.white, fontSize: 2.4*SizeConfig.textMultiplier, fontWeight: FontWeight.bold),)
          ),
          Positioned(
              left: 14.97*SizeConfig.heightMultiplier,
              top: 6.4*SizeConfig.heightMultiplier,
              child: Image.asset(bottomAppStore, fit: BoxFit.fill, width: 9.6*SizeConfig.heightMultiplier, height: 3.2*SizeConfig.heightMultiplier,)
          ),
          Positioned(
              left: 14.3*SizeConfig.heightMultiplier,
              top: 9.69*SizeConfig.heightMultiplier,
              child: Image.asset(bottomPlayStore, fit: BoxFit.fill, width: 11.06*SizeConfig.heightMultiplier, height: 4.5*SizeConfig.heightMultiplier,)
          ),
          Positioned(
              left: 26.04*SizeConfig.heightMultiplier,
              top: 6.4*SizeConfig.heightMultiplier,
              child: Text("Contact details", style: TextStyle(color: AmigoColors.lightRed2, fontSize: 1.10*SizeConfig.textMultiplier, fontWeight: FontWeight.bold),)
          ),
          Positioned(
              left: 26.04*SizeConfig.heightMultiplier,
              top: 7.9*SizeConfig.heightMultiplier,
              child: Text("support@mindamigo.com", style: TextStyle(color: AmigoColors.white, fontSize: 1.10*SizeConfig.textMultiplier, fontWeight: FontWeight.bold),)
          ),
          Positioned(
              left: 26.04*SizeConfig.heightMultiplier,
              top: 10.93*SizeConfig.heightMultiplier,
              child: Image.asset(bottomInstagram, fit: BoxFit.fill, width: 2.27*SizeConfig.heightMultiplier, height: 2.27*SizeConfig.heightMultiplier)
          ),
          Positioned(
              left: 29.29*SizeConfig.heightMultiplier,
              top: 10.93*SizeConfig.heightMultiplier,
              child: Image.asset(bottomFacebook, fit: BoxFit.fill, width: 2.27*SizeConfig.heightMultiplier, height: 2.27*SizeConfig.heightMultiplier,)
          ),
          Positioned(
              left: 32.55*SizeConfig.heightMultiplier,
              top: 10.93*SizeConfig.heightMultiplier,
              child: Image.asset(bottomYoutube, fit: BoxFit.fill, width: 2.27*SizeConfig.heightMultiplier, height: 2.27*SizeConfig.heightMultiplier,)
          ),
          Positioned(
              left: 14.97*SizeConfig.heightMultiplier,
              bottom: 3.2*SizeConfig.heightMultiplier,
              child: Text("\u00a9 2020 Mindamigo", style: TextStyle(fontSize: 1.10*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, color: AmigoColors.white),)
          ),
          Positioned(
              left: 26.04*SizeConfig.heightMultiplier,
              bottom: 3.2*SizeConfig.heightMultiplier,
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, PrivacyPolicyRoute);
                  },
                  child: Text("Privacy Policy",style: TextStyle(fontSize: 1.10*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, color: AmigoColors.lightRed2)))
          ),
          Positioned(
              left: 35.80*SizeConfig.heightMultiplier,
              bottom: 3.2*SizeConfig.heightMultiplier,
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, TermsConditionRoute);
                  },
                  child: Text("Terms & Conditions",style: TextStyle(fontSize: 1.10*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, color: AmigoColors.lightRed2)))
          ),
          Positioned(
              right: 19.53*SizeConfig.heightMultiplier,
              bottom: 0,
              child: Image.asset(bottomNavImage, fit: BoxFit.fill, width: 18.22*SizeConfig.heightMultiplier, height:18.22*SizeConfig.heightMultiplier ,)
          ),

        ],
      ),
    );
  }
}

class TabBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 19.53*SizeConfig.heightMultiplier,
      color: AmigoColors.lightBrown,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Positioned(
              left: 14.97*SizeConfig.heightMultiplier,
              top: 3.2*SizeConfig.heightMultiplier,
              child: Text("Download the mindamigo app", style: TextStyle(color: AmigoColors.white, fontSize: 2.4*SizeConfig.textMultiplier, fontWeight: FontWeight.bold),)
          ),
          Positioned(
              left: 14.97*SizeConfig.heightMultiplier,
              top: 6.4*SizeConfig.heightMultiplier,
              child: Image.asset(bottomAppStore, fit: BoxFit.fill, width: 9.6*SizeConfig.heightMultiplier, height: 3.2*SizeConfig.heightMultiplier,)
          ),
          Positioned(
              left: 14.3*SizeConfig.heightMultiplier,
              top: 9.69*SizeConfig.heightMultiplier,
              child: Image.asset(bottomPlayStore, fit: BoxFit.fill, width: 11.06*SizeConfig.heightMultiplier, height: 4.5*SizeConfig.heightMultiplier,)
          ),
          Positioned(
              left: 26.04*SizeConfig.heightMultiplier,
              top: 6.4*SizeConfig.heightMultiplier,
              child: Text("Contact details", style: TextStyle(color: AmigoColors.lightRed2, fontSize: 1.10*SizeConfig.textMultiplier, fontWeight: FontWeight.bold),)
          ),
          Positioned(
              left: 26.04*SizeConfig.heightMultiplier,
              top: 7.9*SizeConfig.heightMultiplier,
              child: Text("support@mindamigo.com", style: TextStyle(color: AmigoColors.white, fontSize: 1.10*SizeConfig.textMultiplier, fontWeight: FontWeight.bold),)
          ),
          Positioned(
              left: 26.04*SizeConfig.heightMultiplier,
              top: 10.93*SizeConfig.heightMultiplier,
              child: Image.asset(bottomInstagram, fit: BoxFit.fill, width: 2.27*SizeConfig.heightMultiplier, height: 2.27*SizeConfig.heightMultiplier)
          ),
          Positioned(
              left: 29.29*SizeConfig.heightMultiplier,
              top: 10.93*SizeConfig.heightMultiplier,
              child: Image.asset(bottomFacebook, fit: BoxFit.fill, width: 2.27*SizeConfig.heightMultiplier, height: 2.27*SizeConfig.heightMultiplier,)
          ),
          Positioned(
              left: 32.55*SizeConfig.heightMultiplier,
              top: 10.93*SizeConfig.heightMultiplier,
              child: Image.asset(bottomYoutube, fit: BoxFit.fill, width: 2.27*SizeConfig.heightMultiplier, height: 2.27*SizeConfig.heightMultiplier,)
          ),
          Positioned(
              left: 14.97*SizeConfig.heightMultiplier,
              bottom: 3.2*SizeConfig.heightMultiplier,
              child: Text("\u00a9 2020 Mindamigo", style: TextStyle(fontSize: 1.10*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, color: AmigoColors.white),)
          ),
          Positioned(
              left: 26.04*SizeConfig.heightMultiplier,
              bottom: 3.2*SizeConfig.heightMultiplier,
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, PrivacyPolicyRoute);
                  },
                  child: Text("Privacy Policy",style: TextStyle(fontSize: 1.10*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, color: AmigoColors.lightRed2)))
          ),
          Positioned(
              left: 35.80*SizeConfig.heightMultiplier,
              bottom: 3.2*SizeConfig.heightMultiplier,
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, TermsConditionRoute);
                  },
                  child: Text("Terms & Conditions",style: TextStyle(fontSize: 1.10*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, color: AmigoColors.lightRed2)))
          ),
          Positioned(
              right: 1.53*SizeConfig.heightMultiplier,
              bottom: 0,
              child: Image.asset(bottomNavImage, fit: BoxFit.fill, width: 18.22*SizeConfig.heightMultiplier, height:18.22*SizeConfig.heightMultiplier ,)
          ),

        ],
      ),
    );
  }
}
class MobileBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 19.53*SizeConfig.heightMultiplier,
      color: AmigoColors.lightBrown,
      child: Stack(

        children: [
          Positioned(
              left: 10.97*SizeConfig.heightMultiplier,
              top: 3.2*SizeConfig.heightMultiplier,
              child: Text("Download the mindamigo app", style: TextStyle(color: AmigoColors.white, fontSize: 2.4*SizeConfig.textMultiplier, fontWeight: FontWeight.bold),)
          ),
          Positioned(
              left: 10.97*SizeConfig.heightMultiplier,
              top: 6.4*SizeConfig.heightMultiplier,
              child: Image.asset(bottomAppStore, fit: BoxFit.fill, width: 9.6*SizeConfig.heightMultiplier, height: 3.2*SizeConfig.heightMultiplier,)
          ),
          Positioned(
              left: 10.3*SizeConfig.heightMultiplier,
              top: 9.69*SizeConfig.heightMultiplier,
              child: Image.asset(bottomPlayStore, fit: BoxFit.fill, width: 11.06*SizeConfig.heightMultiplier, height: 4.5*SizeConfig.heightMultiplier,)
          ),
          Positioned(
              left: 22.04*SizeConfig.heightMultiplier,
              top: 6.4*SizeConfig.heightMultiplier,
              child: Text("Contact details", style: TextStyle(color: AmigoColors.lightRed2, fontSize: 1.10*SizeConfig.textMultiplier, fontWeight: FontWeight.bold),)
          ),
          Positioned(
              left: 22.04*SizeConfig.heightMultiplier,
              top: 7.9*SizeConfig.heightMultiplier,
              child: Text("support@mindamigo.com", style: TextStyle(color: AmigoColors.white, fontSize: 1.10*SizeConfig.textMultiplier, fontWeight: FontWeight.bold),)
          ),
          Positioned(
              left: 22.04*SizeConfig.heightMultiplier,
              top: 10.93*SizeConfig.heightMultiplier,
              child: Image.asset(bottomInstagram, fit: BoxFit.fill, width: 2.27*SizeConfig.heightMultiplier, height: 2.27*SizeConfig.heightMultiplier)
          ),
          Positioned(
              left: 25.29*SizeConfig.heightMultiplier,
              top: 10.93*SizeConfig.heightMultiplier,
              child: Image.asset(bottomFacebook, fit: BoxFit.fill, width: 2.27*SizeConfig.heightMultiplier, height: 2.27*SizeConfig.heightMultiplier,)
          ),
          Positioned(
              left: 28.55*SizeConfig.heightMultiplier,
              top: 10.93*SizeConfig.heightMultiplier,
              child: Image.asset(bottomYoutube, fit: BoxFit.fill, width: 2.27*SizeConfig.heightMultiplier, height: 2.27*SizeConfig.heightMultiplier,)
          ),
          Positioned(
              left: 10.97*SizeConfig.heightMultiplier,
              bottom: 3.2*SizeConfig.heightMultiplier,
              child: Text("\u00a9 2020 Mindamigo", style: TextStyle(fontSize: 1.10*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, color: AmigoColors.white),)
          ),
          Positioned(
              left: 22.04*SizeConfig.heightMultiplier,
              bottom: 3.2*SizeConfig.heightMultiplier,
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, PrivacyPolicyRoute);
                  },
                  child: Text("Privacy Policy",style: TextStyle(fontSize: 1.10*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, color: AmigoColors.lightRed2)))
          ),
          Positioned(
              left: 30.80*SizeConfig.heightMultiplier,
              bottom: 3.2*SizeConfig.heightMultiplier,
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, TermsConditionRoute);
                  },
                  child: Text("Terms & Conditions",style: TextStyle(fontSize: 1.10*SizeConfig.textMultiplier, fontWeight: FontWeight.bold, color: AmigoColors.lightRed2)))
          ),


        ],
      ),
    );
  }
}




