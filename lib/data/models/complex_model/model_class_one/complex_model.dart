import 'package:bloc_practice/data/models/complex_model/model_class_two/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'complex_model.freezed.dart'; // For Freezed-generated code
part 'complex_model.g.dart'; // For JSON serialization

@freezed
class ComplexApiResponse with _$ComplexApiResponse {
  const factory ComplexApiResponse({
    required String status,
    required UserModel data,
  }) = _ComplexApiResponse;

  factory ComplexApiResponse.fromJson(Map<String, dynamic> json) => _$ComplexApiResponseFromJson(json);
}


