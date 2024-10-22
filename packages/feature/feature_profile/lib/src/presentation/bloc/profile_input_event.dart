part of 'profile_input_bloc.dart';

@freezed
abstract class ProfileInputEvent with _$ProfileInputEvent {
  const factory ProfileInputEvent.init({
    required ProfileInputState state,
  }) = _InitEvent;

  const factory ProfileInputEvent.setFullName({
    @Default('') String value,
  }) = _SetFullNameEvent;

  const factory ProfileInputEvent.setTitle({
    @Default('') String value,
  }) = _SetTitleEvent;

  const factory ProfileInputEvent.setDescription({
    @Default('') String value,
  }) = _SetDescriptionEvent;

  const factory ProfileInputEvent.setCountry({
    @Default('') String value,
  }) = _SetCountryEvent;

  const factory ProfileInputEvent.setCity({
    @Default('') String value,
  }) = _SetCityEvent;

  const factory ProfileInputEvent.setEmail({
    @Default('') String value,
  }) = _SetEmailEvent;

  const factory ProfileInputEvent.setPhone({
    @Default('') String value,
  }) = _SetPhoneEvent;

  const factory ProfileInputEvent.submit() = _SubmitEvent;
}
