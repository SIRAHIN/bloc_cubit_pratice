// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostDetailsModelImpl _$$PostDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostDetailsModelImpl(
      userId: (json['userId'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$PostDetailsModelImplToJson(
        _$PostDetailsModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
