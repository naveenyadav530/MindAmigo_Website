import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindamigo/models/blogsModel.dart';
import 'package:mindamigo/pages/blogArticle.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/utils/size_config.dart';
import 'package:transparent_image/transparent_image.dart';

class BlogContent extends StatelessWidget {
  final List<BlogModel> blogsModel;
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
          // childAspectRatio: 150/200,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(blogsModel.length, (index) {
            return Container(
              //color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: blogsModel[index].image,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 1.93 * SizeConfig.heightMultiplier),
                    child: Text(
                      blogsModel[index].title,
                      style: TextStyle(
                          color: AmigoColors.orange,
                          fontSize: 1.5 * SizeConfig.textMultiplier,
                          fontFamily: robot),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 0.65 * SizeConfig.heightMultiplier),
                    child: Text(
                      blogsModel[index].createdAt,
                      style: TextStyle(
                          color: AmigoColors.orange,
                          fontSize: 1.30 * SizeConfig.textMultiplier,
                          fontFamily: robot),
                    ),
                  ),
                  Container(
                    child: Text(
                      blogsModel[index].body["text"].toString().trimLeft(),
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      maxLines: 8,
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
                        Navigator.pushNamed(context, BlogArticleRoute,
                            arguments: {
                              'image': blogsModel[index].image,
                              'title': blogsModel[index].title,
                              'data': blogsModel[index].body["text"]
                            });
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
  final List<BlogModel> blogsModel;

  const TabBlogContent({Key key, this.blogsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 1.2,
        height: 45.57 * SizeConfig.heightMultiplier,
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: blogsModel[index].image,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 1.93 * SizeConfig.heightMultiplier),
                    child: Text(
                      blogsModel[index].title,
                      style: TextStyle(
                          color: AmigoColors.orange,
                          fontSize: 1.5 * SizeConfig.textMultiplier,
                          fontFamily: robot),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 0.65 * SizeConfig.heightMultiplier),
                    child: Text(
                      blogsModel[index].createdAt,
                      style: TextStyle(
                          color: AmigoColors.orange,
                          fontSize: 1.30 * SizeConfig.textMultiplier,
                          fontFamily: robot),
                    ),
                  ),
                  Container(
                    child: Text(
                      blogsModel[index].body["text"].toString().trimLeft(),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 10,
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
                        Navigator.pushNamed(context, BlogArticleRoute,
                            arguments: {
                              'image': blogsModel[index].image,
                              'title': blogsModel[index].title,
                              'data': blogsModel[index].body["text"]
                            });
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

class MobileBlogContent extends StatelessWidget {
  final List<BlogModel> blogsModel;

  const MobileBlogContent({Key key, this.blogsModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print("MAIN CODE EXCUTRE");
    return Container(
        width: MediaQuery.of(context).size.width / 1.2,
        height: 45.57 * SizeConfig.heightMultiplier,
        margin: EdgeInsets.only(top: 5.20 * SizeConfig.heightMultiplier),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 50,
          crossAxisSpacing: 3 * SizeConfig.heightMultiplier,
          childAspectRatio: 620 / 1370,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(blogsModel.length, (index) {
            return Container(
              //color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: blogsModel[index].image,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 1.93 * SizeConfig.heightMultiplier),
                    child: Text(
                      blogsModel[index].title,
                      style: TextStyle(
                          color: AmigoColors.orange,
                          fontSize: 1.5 * SizeConfig.textMultiplier,
                          fontFamily: robot),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 0.65 * SizeConfig.heightMultiplier),
                    child: Text(
                      blogsModel[index].createdAt,
                      style: TextStyle(
                          color: AmigoColors.orange,
                          fontSize: 1.30 * SizeConfig.textMultiplier,
                          fontFamily: robot),
                    ),
                  ),
                  Container(
                    child: Text(
                      blogsModel[index].body["text"],
                      overflow: TextOverflow.ellipsis,
                      maxLines: 10,
                      style: TextStyle(
                          fontSize: 1.30 * SizeConfig.textMultiplier,
                          fontFamily: robot),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 0.65 * SizeConfig.heightMultiplier),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, BlogArticleRoute,
                            arguments: {
                              'image': blogsModel[index].image,
                              'title': blogsModel[index].title,
                              'data': blogsModel[index].body["text"]
                            });
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
