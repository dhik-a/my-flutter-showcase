import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_input_bloc.freezed.dart';

part 'profile_input_event.dart';

part 'profile_input_state.dart';

@injectable
class ProfileInputBloc extends Bloc<ProfileInputEvent, ProfileInputState> {
  ProfileInputBloc() : super(const ProfileInputState()) {
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
    // Set the state to loading while submitting
    emit(state.copyWith(pageState: const ProfileInputPageState.loading()));

    // Simulate a submission success (add your own logic)
    if (state.fullName.isNotEmpty && state.email.contains('@')) {
      emit(state.copyWith(pageState: const ProfileInputPageState.idle()));
    } else {
      emit(state.copyWith(pageState: const ProfileInputPageState.idle()));
      // In a real-world scenario, you might want to emit an error state
    }
  }
}
