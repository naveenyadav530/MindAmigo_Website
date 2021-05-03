import 'package:json_annotation/json_annotation.dart';

part 'blogsModel.g.dart';

@JsonSerializable(
    nullable: true, disallowUnrecognizedKeys: true, includeIfNull: true)
class BlogsModel {
  String image;
  String title;
  String date;
  String content;

  BlogsModel({
    this.image,
    this.title,
    this.date,
    this.content,
  });

  factory BlogsModel.fromJson(Map<String, dynamic> json) =>
      _$BlogsModelFromJson(json);

  Map<String, dynamic> toJson() => _$BlogsModelToJson(this);
}
