import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_details_model.freezed.dart'; // For Freezed-generated code
part 'user_details_model.g.dart'; 

@freezed
class UserDetails with _$UserDetails {
  const factory UserDetails({
    required int id,
    required String name,
    required String email,
    required String profilePicture,
    required String bio,
    required bool isVerified,
    required String createdAt,
    required String updatedAt,
  }) = _UserDetails;

  factory UserDetails.fromJson(Map<String, dynamic> json) => _$UserDetailsFromJson(json);
}

