// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complex_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComplexApiResponseImpl _$$ComplexApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ComplexApiResponseImpl(
      status: json['status'] as String,
      data: UserModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ComplexApiResponseImplToJson(
        _$ComplexApiResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
