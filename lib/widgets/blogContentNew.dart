import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindamigo/models/blogsModel.dart';
import 'package:mindamigo/pages/blogArticle.dart';
import 'package:mindamigo/styles/colors.dart';
import 'package:mindamigo/styles/constants.dart';
import 'package:mindamigo/utils/size_config.dart';
import 'package:transparent_image/transparent_image.dart';

class WideBlogContent extends StatefulWidget {
  final List<BlogModel> blogsModel;
  const WideBlogContent({Key key, this.blogsModel}) : super(key: key);
  @override
  _WideBlogContentState createState() => _WideBlogContentState();
}

class _WideBlogContentState extends State<WideBlogContent> {
  ScrollController _gridViewScroll = new ScrollController();
  @override
  void dispose() {
    _gridViewScroll.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1920 / 1.5),
      child: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width * 0.75,
              height: 1230,
              margin: EdgeInsets.only(top: 79.87),
              child: GridView.count(
                controller: _gridViewScroll,
                crossAxisCount: 3,
                physics: BouncingScrollPhysics(),
                shrinkWrap: false,
                mainAxisSpacing: 46.08,
                crossAxisSpacing: 46.08,
                childAspectRatio: 80 / 120,
                children: List.generate(widget.blogsModel.length, (index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, BlogArticleRoute,
                                arguments: {
                                  'image': widget.blogsModel[index].image,
                                  'title': widget.blogsModel[index].title,
                                  'data': widget.blogsModel[index].body["text"]
                                });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: FadeInImage.memoryNetwork(
                              placeholder: kTransparentImage,
                              image: widget.blogsModel[index].image,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          child: Text(
                            widget.blogsModel[index].title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: AmigoColors.orange,
                                fontSize: 21.50,
                                fontFamily: robot,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          child: Text(
                            widget.blogsModel[index].createdAt,
                            style: TextStyle(
                                color: AmigoColors.orange,
                                fontSize: 20,
                                fontFamily: robot,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            widget.blogsModel[index].body["text"]
                                .toString()
                                .trimLeft(),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 8,
                            style: TextStyle(fontSize: 20, fontFamily: robot),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, BlogArticleRoute,
                                  arguments: {
                                    'image': widget.blogsModel[index].image,
                                    'title': widget.blogsModel[index].title,
                                    'data':
                                        widget.blogsModel[index].body["text"]
                                  });
                            },
                            child: Row(
                              children: [
                                Text(
                                  "Read More ",
                                  style: TextStyle(
                                      fontFamily: robot,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
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
              )),
          InkWell(
            onTap: () {
              _gridViewScroll.animateTo(
                  _gridViewScroll.position.maxScrollExtent,
                  duration: Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn);
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 80),
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "More recent posts",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: robot,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    blogDropDown,
                    height: 50,
                    width: 50,
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

class BlogContent extends StatefulWidget {
  final List<BlogModel> blogsModel;
  const BlogContent({Key key, this.blogsModel}) : super(key: key);

  @override
  _BlogContentState createState() => _BlogContentState();
}

class _BlogContentState extends State<BlogContent> {
  ScrollController _gridViewScroll = new ScrollController();
  @override
  void dispose() {
    _gridViewScroll.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width * 0.75,
              height: 80 * SizeConfig.heightMultiplier,
              margin: EdgeInsets.only(top: 5.20 * SizeConfig.heightMultiplier),
              child: GridView.count(
                controller: _gridViewScroll,
                crossAxisCount: 3,
                physics: BouncingScrollPhysics(),
                shrinkWrap: false,
                mainAxisSpacing: 3 * SizeConfig.heightMultiplier,
                crossAxisSpacing: 3 * SizeConfig.heightMultiplier,
                childAspectRatio: 80 / 120,
                children: List.generate(widget.blogsModel.length, (index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, BlogArticleRoute,
                                arguments: {
                                  'image': widget.blogsModel[index].image,
                                  'title': widget.blogsModel[index].title,
                                  'data': widget.blogsModel[index].body["text"]
                                });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: FadeInImage.memoryNetwork(
                              placeholder: kTransparentImage,
                              image: widget.blogsModel[index].image,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          child: Text(
                            widget.blogsModel[index].title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: AmigoColors.orange,
                                fontSize: 1.4 * SizeConfig.textMultiplier,
                                fontFamily: robot,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          child: Text(
                            widget.blogsModel[index].createdAt,
                            style: TextStyle(
                                color: AmigoColors.orange,
                                fontSize: 1.30 * SizeConfig.textMultiplier,
                                fontFamily: robot,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            widget.blogsModel[index].body["text"]
                                .toString()
                                .trimLeft(),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 8,
                            style: TextStyle(
                                fontSize: 1.30 * SizeConfig.textMultiplier,
                                fontFamily: robot),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, BlogArticleRoute,
                                  arguments: {
                                    'image': widget.blogsModel[index].image,
                                    'title': widget.blogsModel[index].title,
                                    'data':
                                        widget.blogsModel[index].body["text"]
                                  });
                            },
                            child: Row(
                              children: [
                                Text(
                                  "Read More ",
                                  style: TextStyle(
                                      fontFamily: robot,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          1.30 * SizeConfig.textMultiplier),
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
              )),
          InkWell(
            onTap: () {
              _gridViewScroll.animateTo(
                  _gridViewScroll.position.maxScrollExtent,
                  duration: Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn);
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 1.30 * SizeConfig.heightMultiplier,
                  0, 5.20 * SizeConfig.heightMultiplier),
              width: 19.53 * SizeConfig.heightMultiplier,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "More recent posts",
                    style: TextStyle(
                        fontSize: 1.95 * SizeConfig.textMultiplier,
                        fontFamily: robot,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    blogDropDown,
                    height: 3.25 * SizeConfig.heightMultiplier,
                    width: 3.25 * SizeConfig.heightMultiplier,
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

  const TabBlogContent({Key key, this.blogsModel}) : super(key: key);

  @override
  _TabBlogContentState createState() => _TabBlogContentState();
}

class _TabBlogContentState extends State<TabBlogContent> {
  ScrollController _gridViewScroll = new ScrollController();
  @override
  void dispose() {
    _gridViewScroll.removeListener(() {});
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
                physics: BouncingScrollPhysics(),
                shrinkWrap: false,
                mainAxisSpacing: 3 * SizeConfig.heightMultiplier,
                crossAxisSpacing: 3 * SizeConfig.heightMultiplier,
                childAspectRatio: 80 / 120,
                children: List.generate(widget.blogsModel.length, (index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, BlogArticleRoute,
                                arguments: {
                                  'image': widget.blogsModel[index].image,
                                  'title': widget.blogsModel[index].title,
                                  'data': widget.blogsModel[index].body["text"]
                                });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: FadeInImage.memoryNetwork(
                              placeholder: kTransparentImage,
                              image: widget.blogsModel[index].image,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          child: Text(
                            widget.blogsModel[index].title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: AmigoColors.orange,
                                fontSize: 1.4 * SizeConfig.textMultiplier,
                                fontFamily: robot,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          child: Text(
                            widget.blogsModel[index].createdAt,
                            style: TextStyle(
                                color: AmigoColors.orange,
                                fontSize: 1.30 * SizeConfig.textMultiplier,
                                fontFamily: robot,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            widget.blogsModel[index].body["text"]
                                .toString()
                                .trimLeft(),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 8,
                            style: TextStyle(
                                fontSize: 1.30 * SizeConfig.textMultiplier,
                                fontFamily: robot),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, BlogArticleRoute,
                                  arguments: {
                                    'image': widget.blogsModel[index].image,
                                    'title': widget.blogsModel[index].title,
                                    'data':
                                        widget.blogsModel[index].body["text"]
                                  });
                            },
                            child: Row(
                              children: [
                                Text(
                                  "Read More ",
                                  style: TextStyle(
                                      fontFamily: robot,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          1.30 * SizeConfig.textMultiplier),
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
              )),
          InkWell(
            onTap: () {
              _gridViewScroll.animateTo(
                  _gridViewScroll.position.maxScrollExtent,
                  duration: Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn);
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 1.30 * SizeConfig.heightMultiplier,
                  0, 5.20 * SizeConfig.heightMultiplier),
              width: 19.53 * SizeConfig.heightMultiplier,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "More recent posts",
                    style: TextStyle(
                        fontSize: 1.95 * SizeConfig.textMultiplier,
                        fontFamily: robot,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    blogDropDown,
                    height: 3.25 * SizeConfig.heightMultiplier,
                    width: 3.25 * SizeConfig.heightMultiplier,
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

  const MobileBlogContent({Key key, this.blogsModel}) : super(key: key);

  @override
  _MobileBlogContentState createState() => _MobileBlogContentState();
}

class _MobileBlogContentState extends State<MobileBlogContent> {
  ScrollController _gridViewScroll = new ScrollController();
  @override
  void dispose() {
    _gridViewScroll.removeListener(() {});
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
                crossAxisCount: 2,
                physics: BouncingScrollPhysics(),
                shrinkWrap: false,
                mainAxisSpacing: 3 * SizeConfig.heightMultiplier,
                crossAxisSpacing: 3 * SizeConfig.heightMultiplier,
                childAspectRatio: 80 / 120,
                children: List.generate(widget.blogsModel.length, (index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, BlogArticleRoute,
                                arguments: {
                                  'image': widget.blogsModel[index].image,
                                  'title': widget.blogsModel[index].title,
                                  'data': widget.blogsModel[index].body["text"]
                                });
                          },
                          child: Container(
                            child: FadeInImage.memoryNetwork(
                              placeholder: kTransparentImage,
                              image: widget.blogsModel[index].image,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          child: Text(
                            widget.blogsModel[index].title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: AmigoColors.orange,
                                fontSize: 1.4 * SizeConfig.textMultiplier,
                                fontFamily: robot,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          child: Text(
                            widget.blogsModel[index].createdAt,
                            style: TextStyle(
                                color: AmigoColors.orange,
                                fontSize: 1.30 * SizeConfig.textMultiplier,
                                fontFamily: robot,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            widget.blogsModel[index].body["text"]
                                .toString()
                                .trimLeft(),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 8,
                            style: TextStyle(
                                fontSize: 1.30 * SizeConfig.textMultiplier,
                                fontFamily: robot),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, BlogArticleRoute,
                                  arguments: {
                                    'image': widget.blogsModel[index].image,
                                    'title': widget.blogsModel[index].title,
                                    'data':
                                        widget.blogsModel[index].body["text"]
                                  });
                            },
                            child: Row(
                              children: [
                                Text(
                                  "Read More ",
                                  style: TextStyle(
                                      fontFamily: robot,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          1.30 * SizeConfig.textMultiplier),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              )),
          InkWell(
            onTap: () {
              _gridViewScroll.animateTo(
                  _gridViewScroll.position.maxScrollExtent,
                  duration: Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn);
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 1.30 * SizeConfig.heightMultiplier,
                  0, 5.20 * SizeConfig.heightMultiplier),
              width: 19.53 * SizeConfig.heightMultiplier,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "More recent posts",
                    style: TextStyle(
                        fontSize: 1.95 * SizeConfig.textMultiplier,
                        fontFamily: robot,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    blogDropDown,
                    height: 3.25 * SizeConfig.heightMultiplier,
                    width: 3.25 * SizeConfig.heightMultiplier,
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
