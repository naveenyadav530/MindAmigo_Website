import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindamigo/models/blogsModel.dart';
import 'package:mindamigo/pages/blogArticle.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/utils/size_config.dart';
import 'package:transparent_image/transparent_image.dart';

class BlogContent extends StatefulWidget {

  final List<BlogModel> blogsModel;
  const BlogContent({Key key, this.blogsModel}) : super(key: key);

  @override
  _BlogContentState createState() => _BlogContentState();
}

class _BlogContentState extends State<BlogContent> {
  ScrollController _gridViewScroll=new ScrollController();
  @override
  void dispose() {

    _gridViewScroll.removeListener(() { });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width *0.75,
              height: 80 * SizeConfig.heightMultiplier,
              margin: EdgeInsets.only(top: 5.20 * SizeConfig.heightMultiplier),
              child: GridView.count(
                controller: _gridViewScroll,
                physics:BouncingScrollPhysics(),
                shrinkWrap:false ,
                crossAxisCount: 3,
                mainAxisSpacing: 3*SizeConfig.heightMultiplier,
                crossAxisSpacing: 3 * SizeConfig.heightMultiplier,
                childAspectRatio: 700 / 1200,
                // Generate 100 widgets that display their index in the List.
                children: List.generate(widget.blogsModel.length, (index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(
                                context, BlogArticleRoute,
                                arguments: {
                                  'image':widget.blogsModel[index].image,
                                  'title':widget.blogsModel[index].title,
                                  'data': widget.blogsModel[index].body["text"]
                                }
                            );
                          },
                          child: Container(
                            child: FadeInImage.memoryNetwork(
                              placeholder: kTransparentImage,
                              image: widget.blogsModel[index].image,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 1.93 * SizeConfig.heightMultiplier),
                          child: Text(
                           widget.blogsModel[index].title,
                           maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: AmigoColors.orange,
                                fontSize: 1.4 * SizeConfig.textMultiplier,
                                fontFamily: robot,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: 0.65 * SizeConfig.heightMultiplier),
                          child: Text(
                            widget.blogsModel[index].createdAt,
                            style: TextStyle(
                                color: AmigoColors.orange,
                                fontSize: 1.30 * SizeConfig.textMultiplier,
                                fontFamily: robot),
                          ),
                        ),
                        Container(
                          child: Text(
                            widget.blogsModel[index].body["text"].toString().trimLeft(),
                            overflow: TextOverflow.ellipsis,
                            softWrap:true,
                            maxLines: 8,
                            style: TextStyle(
                                fontSize: 1.30 * SizeConfig.textMultiplier,
                                fontFamily: robot
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: 0.65 * SizeConfig.heightMultiplier),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, BlogArticleRoute,
                                arguments: {
                                    'image':widget.blogsModel[index].image,
                                    'title':widget.blogsModel[index].title,
                                    'data': widget.blogsModel[index].body["text"]
                                }
                              );
                            },
                            child: Row(
                              children: [
                                Text(
                                  "Read More ",
                                  style: TextStyle(
                                      fontFamily: robot,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 1.30 * SizeConfig.textMultiplier
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios_rounded)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              )
          ),
          InkWell(
            onTap: () {
              _gridViewScroll.animateTo(
                  _gridViewScroll.position.maxScrollExtent,
                  duration: Duration(seconds:1),
                  curve: Curves.fastOutSlowIn
              );
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(
                  0,
                  1.30 * SizeConfig.heightMultiplier,
                  0,
                  5.20 * SizeConfig.heightMultiplier),
              width:
              19.53 * SizeConfig.heightMultiplier,
              child: Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "More recent posts",
                    style: TextStyle(
                        fontSize: 1.95 *
                            SizeConfig.textMultiplier,
                        fontFamily: robot,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    blogDropDown,
                    height: 3.25 *
                        SizeConfig.heightMultiplier,
                    width: 3.25 *
                        SizeConfig.heightMultiplier,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TabBlogContent extends StatefulWidget {
  final List<BlogModel> blogsModel;

  const TabBlogContent({
    Key key,
    this.blogsModel
  }) : super(key: key);

  @override
  _TabBlogContentState createState() => _TabBlogContentState();
}

class _TabBlogContentState extends State<TabBlogContent> {

  ScrollController _gridViewScroll=new ScrollController();
  @override
  void dispose() {

    _gridViewScroll.removeListener(() { });
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            height: 45.57 * SizeConfig.heightMultiplier,
            margin: EdgeInsets.only(top: 5.20 * SizeConfig.heightMultiplier),
            child: GridView.count(
              controller: _gridViewScroll,
              crossAxisCount: 3,
              physics:BouncingScrollPhysics(),
              shrinkWrap:false ,
              mainAxisSpacing: 100,
              crossAxisSpacing: 3 * SizeConfig.heightMultiplier,
              childAspectRatio: 700 / 1370,
              // Generate 100 widgets that display their index in the List.
              children: List.generate(widget.blogsModel.length, (index) {

                return Container(
                  //color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(
                              context, BlogArticleRoute,
                              arguments: {
                                'image':widget.blogsModel[index].image,
                                'title':widget.blogsModel[index].title,
                                'data': widget.blogsModel[index].body["text"]
                              }
                          );
                        },
                        child: Container(
                          child: FadeInImage.memoryNetwork(
                            placeholder: kTransparentImage,
                            image: widget.blogsModel[index].image,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 1.93 * SizeConfig.heightMultiplier),
                        child: Text(

                          widget.blogsModel[index].title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: AmigoColors.orange,
                              fontSize: 1.5 * SizeConfig.textMultiplier,
                              fontFamily: robot
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 0.65 * SizeConfig.heightMultiplier),
                        child: Text(
                          widget.blogsModel[index].createdAt,
                          style: TextStyle(
                              color: AmigoColors.orange,
                              fontSize: 1.30 * SizeConfig.textMultiplier,
                              fontFamily: robot),
                        ),
                      ),
                      Container(
                        child: Text(
                          widget.blogsModel[index].body["text"].toString().trimLeft(),
                          overflow: TextOverflow.ellipsis,

                          maxLines: 10,
                          style: TextStyle(
                              fontSize: 1.30 * SizeConfig.textMultiplier,
                              fontFamily: robot
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 0.65 * SizeConfig.heightMultiplier),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, BlogArticleRoute,
                                arguments: {
                                  'image':widget.blogsModel[index].image,
                                  'title':widget.blogsModel[index].title,
                                  'data': widget.blogsModel[index].body["text"]
                                }
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                "Read More ",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.30 * SizeConfig.textMultiplier
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios_rounded,size: 15,)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            )
          ),
          InkWell(
            onTap: () {
              _gridViewScroll.animateTo(
                  _gridViewScroll.position.maxScrollExtent,
                  duration: Duration(seconds:1),
                  curve: Curves.fastOutSlowIn
              );
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(
                  0,
                  1.30 * SizeConfig.heightMultiplier,
                  0,
                  5.20 * SizeConfig.heightMultiplier),
              width:
              19.53 * SizeConfig.heightMultiplier,
              child: Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "More recent posts",
                    style: TextStyle(
                        fontSize: 1.95 *
                            SizeConfig.textMultiplier,
                        fontFamily: robot,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    blogDropDown,
                    height: 3.25 *
                        SizeConfig.heightMultiplier,
                    width: 3.25 *
                        SizeConfig.heightMultiplier,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MobileBlogContent extends StatefulWidget {
  final List<BlogModel> blogsModel;

  const MobileBlogContent({
    Key key,
    this.blogsModel
  }) : super(key: key);

  @override
  _MobileBlogContentState createState() => _MobileBlogContentState();
}

class _MobileBlogContentState extends State<MobileBlogContent> {

  ScrollController _gridViewScroll=new ScrollController();
  @override
  void dispose() {

    _gridViewScroll.removeListener(() { });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            height: 45.57 * SizeConfig.heightMultiplier,
            margin: EdgeInsets.only(top: 5.20 * SizeConfig.heightMultiplier),
            child: GridView.count(
              controller: _gridViewScroll,
              physics:BouncingScrollPhysics(),
              shrinkWrap:false ,
              crossAxisCount: 2,
              mainAxisSpacing: 100,
              crossAxisSpacing: 3 * SizeConfig.heightMultiplier,
              childAspectRatio: 700 / 1370,
              // Generate 100 widgets that display their index in the List.
              children: List.generate(widget.blogsModel.length, (index) {

                return Container(
                  //color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(
                              context, BlogArticleRoute,
                              arguments: {
                                'image':widget.blogsModel[index].image,
                                'title':widget.blogsModel[index].title,
                                'data': widget.blogsModel[index].body["text"]
                              }
                          );
                        },
                        child: Container(
                          child: FadeInImage.memoryNetwork(
                            placeholder: kTransparentImage,
                            image: widget.blogsModel[index].image,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 1.93 * SizeConfig.heightMultiplier),
                        child: Text(
                          widget.blogsModel[index].title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: AmigoColors.orange,
                              fontSize: 1.5 * SizeConfig.textMultiplier,
                              fontFamily: robot
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 0.65 * SizeConfig.heightMultiplier),
                        child: Text(
                          widget.blogsModel[index].createdAt,
                          style: TextStyle(
                              color: AmigoColors.orange,
                              fontSize: 1.30 * SizeConfig.textMultiplier,
                              fontFamily: robot),
                        ),
                      ),
                      Container(
                        child: Text(
                          widget.blogsModel[index].body["text"],
                          overflow: TextOverflow.ellipsis,

                          maxLines: 10,
                          style: TextStyle(
                              fontSize: 1.30 * SizeConfig.textMultiplier,
                              fontFamily: robot
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 0.65 * SizeConfig.heightMultiplier),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, BlogArticleRoute,
                                arguments: {
                                  'image':widget.blogsModel[index].image,
                                  'title':widget.blogsModel[index].title,
                                  'data': widget.blogsModel[index].body["text"]
                                }
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                "Read More ",
                                style: TextStyle(
                                    fontFamily: robot,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.30 * SizeConfig.textMultiplier
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios_rounded,size: 15,)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            )
          ),
          InkWell(
            onTap: () {
              _gridViewScroll.animateTo(
                  _gridViewScroll.position.maxScrollExtent,
                  duration: Duration(seconds:1),
                  curve: Curves.fastOutSlowIn
              );
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(
                  0,
                  1.30 * SizeConfig.heightMultiplier,
                  0,
                  5.20 * SizeConfig.heightMultiplier),
              width:
              19.53 * SizeConfig.heightMultiplier,
              child: Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "More recent posts",
                    style: TextStyle(
                        fontSize: 1.95 *
                            SizeConfig.textMultiplier,
                        fontFamily: robot,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    blogDropDown,
                    height: 3.25 *
                        SizeConfig.heightMultiplier,
                    width: 3.25 *
                        SizeConfig.heightMultiplier,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
