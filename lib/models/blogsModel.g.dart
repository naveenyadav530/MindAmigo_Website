part of 'blogsModel.dart';

BlogModel _$BlogModelFromJson(Map<String, dynamic> json) {
  try {
    return BlogModel(
      id:json['_id'] as String ?? json['id'] as String,
      image: json['image'] as String,
      title: json['title'] as String,
      body: json['body'] as Map,
      status:json['status'] as int,
      createdAt:json['createdAt'] as String,
      updatedAt:json['updatedAt'] as String
    );
  } catch (e, stacktrace) {
    print('Error at Blog Model :: ${e.toString()} ');
    print("=========================================================");
    print("STACKTRACE :: ${stacktrace.toString()}");

  }
}

Map<String, dynamic> _$BlogModelToJson(BlogModel instance) =>
    <String, dynamic>{
      'id':instance.id,
      'image': instance.image,
      'title': instance.title,
      'body': instance.body,
      'status':instance.status,
      'createdAt':instance.createdAt,
      'updatedAt':instance.updatedAt,
    };
