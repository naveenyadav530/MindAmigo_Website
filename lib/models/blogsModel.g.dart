part of 'blogsModel.dart';

BlogsModel _$BlogsModelFromJson(Map<String, dynamic> json) {
  try {
    return BlogsModel(
      image: json['image'] as String,
      title: json['title'] as String,
      date: json['date'] as String,
      content: json['content'] as String,
    );
  } catch (e, stacktrace) {
    print('Error at ABCD Model to home :: ${e.toString()} ');
    print("=========================================================");
    print("STACKTRACE :: ${stacktrace.toString()}");
  }
}

Map<String, dynamic> _$BlogsModelToJson(BlogsModel instance) =>
    <String, dynamic>{
      'image': instance.image,
      'title': instance.title,
      'date': instance.date,
      'content': instance.content,
    };
