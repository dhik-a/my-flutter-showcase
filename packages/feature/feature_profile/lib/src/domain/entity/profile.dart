import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    @Default('') String fullName,
    @Default('') String title,
    @Default('') String description,
    @Default(0) int birthDate,
    @Default('') String country,
    @Default('') String city,
    @Default('') String email,
    @Default('') String phone,
    @Default([]) List<String> skills,
  }) = _Profile;
}
