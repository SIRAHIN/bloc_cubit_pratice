import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_details_model.freezed.dart'; // For Freezed-generated code
part 'user_details_model.g.dart'; 

@freezed
class UserDetails with _$UserDetails {
  const factory UserDetails({
    required int id,
    required String name,
    required String email,
    @JsonKey(name: 'profile_picture') required String profilePicture,
    required String bio,
    required bool isVerified,
    required String createdAt,
    required String updatedAt,
  }) = _UserDetails;

  factory UserDetails.fromJson(Map<String, dynamic> json) => _$UserDetailsFromJson(json);
}

// -- After That Run This command -- //
// flutter pub run build_runner build
// dart run build_runner build --delete-conflicting-outputs
