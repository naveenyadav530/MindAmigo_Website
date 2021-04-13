import 'package:flutter/cupertino.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/size_config.dart';

class BlogContent extends StatelessWidget {
  final Image image1;
  final String title1;
  final String date1;
  final String content1;
  final Image image2;
  final String title2;
  final String date2;
  final String content2;
  final Image image3;
  final String title3;
  final String date3;
  final String content3;

  const BlogContent({
    Key key,
    this.image1,
    this.title1,
    this.date1,
    this.content1,
    this.image2,
    this.title2,
    this.date2,
    this.content2,
    this.image3,
    this.title3,
    this.date3,
    this.content3,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.4,
      height: 45.57*SizeConfig.heightMultiplier,
      margin: EdgeInsets.only(top: 5.20*SizeConfig.heightMultiplier),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width:19.53*SizeConfig.heightMultiplier,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: image1, width: 19.53*SizeConfig.heightMultiplier,
                ),
                Container(
                  margin: EdgeInsets.only(top: 1.93*SizeConfig.heightMultiplier),
                  child: Text(title1, style: TextStyle(color: AmigoColors.orange, fontSize: 2.60*SizeConfig.textMultiplier, fontFamily: robot),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                  child: Text(date1, style: TextStyle(color: AmigoColors.orange, fontSize: 1.30*SizeConfig.textMultiplier, fontFamily: robot),),
                ),
                Container(
                  child: Text(content1, style: TextStyle(fontSize: 1.30*SizeConfig.textMultiplier, fontFamily: robot),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                  child: Text("Read More>", style: TextStyle(fontFamily: robot, fontWeight: FontWeight.bold, fontSize: 1.30*SizeConfig.textMultiplier),),
                ),

              ],
            ),
          ),
          Container(
            width:19.53*SizeConfig.heightMultiplier,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: image2,
                ),
                Container(
                  margin: EdgeInsets.only(top: 1.93*SizeConfig.heightMultiplier),
                  child: Text(title2, style: TextStyle(color: AmigoColors.orange, fontSize: 2.60*SizeConfig.textMultiplier, fontFamily: robot),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                  child: Text(date2, style: TextStyle(color: AmigoColors.orange, fontSize: 1.30*SizeConfig.textMultiplier, fontFamily: robot),),
                ),
                Container(
                  child: Text(content2, style: TextStyle(fontSize: 1.30*SizeConfig.textMultiplier, fontFamily: robot),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                  child: Text("Read More>", style: TextStyle(fontFamily: robot, fontWeight: FontWeight.bold, fontSize: 1.30*SizeConfig.textMultiplier),),
                ),

              ],
            ),
          ),
          Container(
            width:19.53*SizeConfig.heightMultiplier,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: image3,
                ),
                Container(
                  margin: EdgeInsets.only(top: 1.93*SizeConfig.heightMultiplier),
                  child: Text(title3, style: TextStyle(color: AmigoColors.orange, fontSize: 2.60*SizeConfig.textMultiplier, fontFamily: robot),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                  child: Text(date3, style: TextStyle(color: AmigoColors.orange, fontSize: 1.30*SizeConfig.textMultiplier, fontFamily: robot),),
                ),
                Container(
                  child: Text(content3, style: TextStyle(fontSize: 1.30*SizeConfig.textMultiplier, fontFamily: robot),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                  child: Text("Read More>", style: TextStyle(fontFamily: robot, fontWeight: FontWeight.bold, fontSize: 1.30*SizeConfig.textMultiplier),),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
