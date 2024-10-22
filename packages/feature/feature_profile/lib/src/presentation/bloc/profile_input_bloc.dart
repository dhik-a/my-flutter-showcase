import 'package:feature_profile/src/domain/entity/profile.dart';
import 'package:feature_profile/src/domain/use_case/save_profile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_input_bloc.freezed.dart';

part 'profile_input_event.dart';

part 'profile_input_state.dart';

@injectable
class ProfileInputBloc extends Bloc<ProfileInputEvent, ProfileInputState> {
  final SaveProfile saveProfile;

  ProfileInputBloc({
    required this.saveProfile,
  }) : super(const ProfileInputState()) {
    on<_InitEvent>(_onInit);
    on<_SetFullNameEvent>(_onSetFullName);
    on<_SetTitleEvent>(_onSetTitle);
    on<_SetDescriptionEvent>(_onSetDescription);
    on<_SetCountryEvent>(_onSetCountry);
    on<_SetCityEvent>(_onSetCity);
    on<_SetEmailEvent>(_onSetEmail);
    on<_SetPhoneEvent>(_onSetPhone);
    on<_SubmitEvent>(_onSubmit);
  }

  void _onInit(_InitEvent event, Emitter<ProfileInputState> emit) {
    emit(event.state); // Load the initial state provided.
  }

  void _onSetFullName(
      _SetFullNameEvent event, Emitter<ProfileInputState> emit) {
    emit(state.copyWith(fullName: event.value));
  }

  void _onSetTitle(_SetTitleEvent event, Emitter<ProfileInputState> emit) {
    emit(state.copyWith(title: event.value));
  }

  void _onSetDescription(
      _SetDescriptionEvent event, Emitter<ProfileInputState> emit) {
    emit(state.copyWith(description: event.value));
  }

  void _onSetCountry(_SetCountryEvent event, Emitter<ProfileInputState> emit) {
    emit(state.copyWith(country: event.value));
  }

  void _onSetCity(_SetCityEvent event, Emitter<ProfileInputState> emit) {
    emit(state.copyWith(city: event.value));
  }

  void _onSetEmail(_SetEmailEvent event, Emitter<ProfileInputState> emit) {
    emit(state.copyWith(email: event.value));
  }

  void _onSetPhone(_SetPhoneEvent event, Emitter<ProfileInputState> emit) {
    emit(state.copyWith(phone: event.value));
  }

  Future<void> _onSubmit(
      _SubmitEvent event, Emitter<ProfileInputState> emit) async {
    emit(state.copyWith(pageState: const ProfileInputPageState.loading()));

    if (_validateInput()) {
      final profile = Profile(
        fullName: state.fullName,
        title: state.title,
        description: state.description,
        country: state.country,
        city: state.city,
        email: state.email,
        phone: state.phone,
      );

      final result = await saveProfile.call(profile);

      if (result) {
        emit(state.copyWith(pageState: const ProfileInputPageState.done()));
        return;
      }
    }
    emit(state.copyWith(pageState: const ProfileInputPageState.error()));
  }

  bool _validateInput() {
    if (state.fullName.isEmpty) {
      return false;
    }
    if (state.title.isEmpty) {
      return false;
    }
    if (state.country.isEmpty) {
      return false;
    }
    if (state.city.isEmpty) {
      return false;
    }
    if (state.description.isEmpty) {
      return false;
    }
    if (state.email.isEmpty || !state.email.contains('@')) {
      return false;
    }
    if (state.phone.isEmpty) {
      return false;
    }
    return true;
  }
}
