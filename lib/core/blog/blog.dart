import 'dart:convert';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:mindamigo/core/blog/blogAPI.dart';
import 'package:mindamigo/utils/errorPrinter.dart';
import 'package:mindamigo/models/blogsModel.dart';

class Blog {
  BlogRepository _blogRepository = new BlogRepository();

  Future<List<BlogModel>> getBlogData() async {
    List<BlogModel> blogs = [];
    try {
      var response = await _blogRepository.getBlogs();
      if (response["statusCode"] == HttpStatus.ok) {
        var temp = json.decode(response["responseBody"]);
        var jsonData = temp["data"];
        for (var data in jsonData) {
          BlogModel blog = BlogModel.fromJson(data);
          blogs.add(blog);
        }
        return blogs;
      } else {
        throw ("No data found");
      }
    } catch (err, stackTrace) {
      print(errorPrinter(err, stackTrace, 'BlogData'));
      return [];
    }
  }
}
