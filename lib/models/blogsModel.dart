import 'package:json_annotation/json_annotation.dart';
part 'blogsModel.g.dart';

@JsonSerializable(nullable: true,
    disallowUnrecognizedKeys:true,
    includeIfNull:true)

class BlogModel {
  String id;
  String image;
  String title;
  Map body;
  int status;
  String createdAt;
  String updatedAt;


  BlogModel({
    this.id,
    this.image,
    this.title,
    this.body,
    this.status,
    this.createdAt,
    this.updatedAt
  });

  factory BlogModel.fromJson(Map<String, dynamic> json) =>
      _$BlogModelFromJson(json);

  Map<String, dynamic> toJson() => _$BlogModelToJson(this);
}
