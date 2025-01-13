import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_details_model.freezed.dart'; // For Freezed-generated code
part 'user_details_model.g.dart'; 

@freezed
class UserDetails with _$UserDetails {
  const factory UserDetails({
    required int id,
    required String name,
    required String email,
    /*
    The issue arises because the JsonSerializable generator uses the Dart-style naming convention (camelCase) 
    for the field names by default. In your JSON response, the key is written in snake_case (e.g., profile_picture). 
    To map this correctly, you need to explicitly specify the JSON key using the @JsonKey annotation.
    */
    @JsonKey(name: 'profile_picture') required String profilePicture, // Map snake_case to camelCase
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
