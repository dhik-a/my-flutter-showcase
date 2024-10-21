part of 'profile_input_bloc.dart';

@freezed
class ProfileInputState with _$ProfileInputState {
  const factory ProfileInputState({
    @Default('') String fullName,
    @Default('') String title,
    @Default('') String description,
    @Default('') String country,
    @Default('') String city,
    @Default('') String email,
    @Default('') String phone,
    @Default(ProfileInputPageState.idle()) ProfileInputPageState pageState,
  }) = _ProfileInputState;
}

@freezed
abstract class ProfileInputPageState with _$ProfileInputPageState {
  const factory ProfileInputPageState.idle() = ProfileInputIdlePageState;

  const factory ProfileInputPageState.loading() = ProfileInputLoadingPageState;
}
