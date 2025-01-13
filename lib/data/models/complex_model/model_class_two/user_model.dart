import 'package:bloc_practice/data/models/complex_model/model_class_three/user_details_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart'; // For Freezed-generated code
part 'user_model.g.dart'; 


@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required UserDetails user,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

