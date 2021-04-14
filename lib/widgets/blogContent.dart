import 'package:flutter/cupertino.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/styles/strings.dart';
import 'package:mindamigo/utils/size_config.dart';

class BlogContent extends StatelessWidget {
  final List<Image> image;
  final List<String>  title;
  final List<String> date;
  final List<String> content;

  const BlogContent({
    Key key,
    this.image,
    this.title,
    this.date,
    this.content,

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
                  child: image[0], width: 19.53*SizeConfig.heightMultiplier,
                ),
                Container(
                  margin: EdgeInsets.only(top: 1.93*SizeConfig.heightMultiplier),
                  child: Text(title[0], style: TextStyle(color: AmigoColors.orange, fontSize: 2.60*SizeConfig.textMultiplier, fontFamily: robot),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                  child: Text(date[0], style: TextStyle(color: AmigoColors.orange, fontSize: 1.30*SizeConfig.textMultiplier, fontFamily: robot),),
                ),
                Container(
                  child: Text(content[0],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 12,
                    style: TextStyle(fontSize: 1.30*SizeConfig.textMultiplier, fontFamily: robot),),
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
                  child: image[1],
                ),
                Container(
                  margin: EdgeInsets.only(top: 1.93*SizeConfig.heightMultiplier),
                  child: Text(title[1], style: TextStyle(color: AmigoColors.orange, fontSize: 2.60*SizeConfig.textMultiplier, fontFamily: robot),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                  child: Text(date[1], style: TextStyle(color: AmigoColors.orange, fontSize: 1.30*SizeConfig.textMultiplier, fontFamily: robot),),
                ),
                Container(
                  child: Text(
                    content[1],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 12,
                    style: TextStyle(fontSize: 1.30*SizeConfig.textMultiplier, fontFamily: robot),),
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
                  child: image[2],
                ),
                Container(
                  margin: EdgeInsets.only(top: 1.93*SizeConfig.heightMultiplier),
                  child: Text(title[2], style: TextStyle(color: AmigoColors.orange, fontSize: 2.60*SizeConfig.textMultiplier, fontFamily: robot),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0.65*SizeConfig.heightMultiplier),
                  child: Text(date[2], style: TextStyle(color: AmigoColors.orange, fontSize: 1.30*SizeConfig.textMultiplier, fontFamily: robot),),
                ),
                Container(
                  child: Text(content[2],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 12,
                    style: TextStyle(fontSize: 1.30*SizeConfig.textMultiplier, fontFamily: robot),),
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
