import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindamigo/models/blogsModel.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/utils/size_config.dart';

class BlogContent extends StatelessWidget {
  final List<BlogsModel> blogsModel;

  const BlogContent({Key key, this.blogsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 1.4,
        height: 91.14 * SizeConfig.heightMultiplier,
        margin: EdgeInsets.only(top: 5.20 * SizeConfig.heightMultiplier),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 100,
          crossAxisSpacing: 3 * SizeConfig.heightMultiplier,
          childAspectRatio: 700 / 1370,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(blogsModel.length, (index) {
            return Container(
              //color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image.asset(blogsModel[index].image),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 1.93 * SizeConfig.heightMultiplier),
                    child: Text(
                      blogsModel[index].title,
                      style: TextStyle(
                          color: AmigoColors.orange,
                          fontSize: 2.60 * SizeConfig.textMultiplier,
                          fontFamily: robot),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 0.65 * SizeConfig.heightMultiplier),
                    child: Text(
                      blogsModel[index].date,
                      style: TextStyle(
                          color: AmigoColors.orange,
                          fontSize: 1.30 * SizeConfig.textMultiplier,
                          fontFamily: robot),
                    ),
                  ),
                  Container(
                    child: Text(
                      blogsModel[index].content,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 12,
                      style: TextStyle(
                          fontSize: 1.30 * SizeConfig.textMultiplier,
                          fontFamily: robot),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 0.65 * SizeConfig.heightMultiplier),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, BlogArticleRoute);
                      },
                      child: Text(
                        "Read More>",
                        style: TextStyle(
                            fontFamily: robot,
                            fontWeight: FontWeight.bold,
                            fontSize: 1.30 * SizeConfig.textMultiplier),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ));
  }
}

class TabBlogContent extends StatelessWidget {
  final List<Image> image;
  final List<String> title;
  final List<String> date;
  final List<String> content;

  const TabBlogContent({
    Key key,
    this.image,
    this.title,
    this.date,
    this.content,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      height: 45.57 * SizeConfig.heightMultiplier,
      margin: EdgeInsets.only(top: 5.20 * SizeConfig.heightMultiplier),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 19.2 * SizeConfig.heightMultiplier,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: image[0],
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 1.93 * SizeConfig.heightMultiplier),
                  child: Text(
                    title[0],
                    style: TextStyle(
                        color: AmigoColors.orange,
                        fontSize: 2.60 * SizeConfig.textMultiplier,
                        fontFamily: robot),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 0.65 * SizeConfig.heightMultiplier),
                  child: Text(
                    date[0],
                    style: TextStyle(
                        color: AmigoColors.orange,
                        fontSize: 1.30 * SizeConfig.textMultiplier,
                        fontFamily: robot),
                  ),
                ),
                Container(
                  child: Text(
                    content[0],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 12,
                    style: TextStyle(
                        fontSize: 1.30 * SizeConfig.textMultiplier,
                        fontFamily: robot),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 0.65 * SizeConfig.heightMultiplier),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, BlogArticleRoute);
                    },
                    child: Text(
                      "Read More>",
                      style: TextStyle(
                          fontFamily: robot,
                          fontWeight: FontWeight.bold,
                          fontSize: 1.30 * SizeConfig.textMultiplier),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 19.2 * SizeConfig.heightMultiplier,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: image[1],
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 1.93 * SizeConfig.heightMultiplier),
                  child: Text(
                    title[1],
                    style: TextStyle(
                        color: AmigoColors.orange,
                        fontSize: 2.60 * SizeConfig.textMultiplier,
                        fontFamily: robot),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 0.65 * SizeConfig.heightMultiplier),
                  child: Text(
                    date[1],
                    style: TextStyle(
                        color: AmigoColors.orange,
                        fontSize: 1.30 * SizeConfig.textMultiplier,
                        fontFamily: robot),
                  ),
                ),
                Container(
                  child: Text(
                    content[1],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 12,
                    style: TextStyle(
                        fontSize: 1.30 * SizeConfig.textMultiplier,
                        fontFamily: robot),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 0.65 * SizeConfig.heightMultiplier),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, BlogArticleRoute);
                    },
                    child: Text(
                      "Read More>",
                      style: TextStyle(
                          fontFamily: robot,
                          fontWeight: FontWeight.bold,
                          fontSize: 1.30 * SizeConfig.textMultiplier),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 19.2 * SizeConfig.heightMultiplier,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: image[2],
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 1.93 * SizeConfig.heightMultiplier),
                  child: Text(
                    title[2],
                    style: TextStyle(
                        color: AmigoColors.orange,
                        fontSize: 2.60 * SizeConfig.textMultiplier,
                        fontFamily: robot),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 0.65 * SizeConfig.heightMultiplier),
                  child: Text(
                    date[2],
                    style: TextStyle(
                        color: AmigoColors.orange,
                        fontSize: 1.30 * SizeConfig.textMultiplier,
                        fontFamily: robot),
                  ),
                ),
                Container(
                  child: Text(
                    content[2],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 12,
                    style: TextStyle(
                        fontSize: 1.30 * SizeConfig.textMultiplier,
                        fontFamily: robot),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 0.65 * SizeConfig.heightMultiplier),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, BlogArticleRoute);
                    },
                    child: Text(
                      "Read More>",
                      style: TextStyle(
                          fontFamily: robot,
                          fontWeight: FontWeight.bold,
                          fontSize: 1.30 * SizeConfig.textMultiplier),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MobileBlogContent extends StatelessWidget {
  final List<Image> image;
  final List<String> title;
  final List<String> date;
  final List<String> content;

  const MobileBlogContent({
    Key key,
    this.image,
    this.title,
    this.date,
    this.content,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      height: 45.57 * SizeConfig.heightMultiplier,
      margin: EdgeInsets.only(top: 5.20 * SizeConfig.heightMultiplier),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 19.2 * SizeConfig.heightMultiplier,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: image[0],
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 1.93 * SizeConfig.heightMultiplier),
                  child: Text(
                    title[0],
                    style: TextStyle(
                        color: AmigoColors.orange,
                        fontSize: 2.60 * SizeConfig.textMultiplier,
                        fontFamily: robot),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 0.65 * SizeConfig.heightMultiplier),
                  child: Text(
                    date[0],
                    style: TextStyle(
                        color: AmigoColors.orange,
                        fontSize: 1.30 * SizeConfig.textMultiplier,
                        fontFamily: robot),
                  ),
                ),
                Container(
                  child: Text(
                    content[0],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 12,
                    style: TextStyle(
                        fontSize: 1.30 * SizeConfig.textMultiplier,
                        fontFamily: robot),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 0.65 * SizeConfig.heightMultiplier),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, BlogArticleRoute);
                    },
                    child: Text(
                      "Read More>",
                      style: TextStyle(
                          fontFamily: robot,
                          fontWeight: FontWeight.bold,
                          fontSize: 1.30 * SizeConfig.textMultiplier),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 19.2 * SizeConfig.heightMultiplier,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: image[1],
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 1.93 * SizeConfig.heightMultiplier),
                  child: Text(
                    title[1],
                    style: TextStyle(
                        color: AmigoColors.orange,
                        fontSize: 2.60 * SizeConfig.textMultiplier,
                        fontFamily: robot),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 0.65 * SizeConfig.heightMultiplier),
                  child: Text(
                    date[1],
                    style: TextStyle(
                        color: AmigoColors.orange,
                        fontSize: 1.30 * SizeConfig.textMultiplier,
                        fontFamily: robot),
                  ),
                ),
                Container(
                  child: Text(
                    content[1],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 12,
                    style: TextStyle(
                        fontSize: 1.30 * SizeConfig.textMultiplier,
                        fontFamily: robot),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 0.65 * SizeConfig.heightMultiplier),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, BlogArticleRoute);
                    },
                    child: Text(
                      "Read More>",
                      style: TextStyle(
                          fontFamily: robot,
                          fontWeight: FontWeight.bold,
                          fontSize: 1.30 * SizeConfig.textMultiplier),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
