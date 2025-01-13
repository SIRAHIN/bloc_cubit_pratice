import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_details_model.freezed.dart'; // For Freezed-generated code
part 'post_details_model.g.dart'; // For JSON serialization

@freezed
class PostDetailsModel with _$PostDetailsModel {
  const factory PostDetailsModel({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) = _PostDetailsModel;

  factory PostDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$PostDetailsModelFromJson(json);
}
