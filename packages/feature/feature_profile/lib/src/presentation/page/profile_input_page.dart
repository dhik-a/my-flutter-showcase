import 'package:auto_route/annotations.dart';
import 'package:feature_profile/src/presentation/bloc/profile_input_bloc.dart';
import 'package:feature_profile/src/presentation/widget/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class ProfileInputPage extends StatefulWidget {
  const ProfileInputPage({super.key});

  @override
  State<ProfileInputPage> createState() => _ProfileInputPageState();
}

class _ProfileInputPageState extends State<ProfileInputPage> {
  final _bloc = GetIt.I.get<ProfileInputBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _bloc,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            "Input your profile data",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Stack(
                    children: [
                      const CircleAvatar(
                        radius: 48,
                        backgroundColor: Colors.grey,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 48,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.add_circle_outlined,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                _formInput(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _formInput(BuildContext context) {
    return BlocBuilder<ProfileInputBloc, ProfileInputState>(
      bloc: _bloc,
      builder: (context, state) {
        final bool isError = state.pageState is PageErrorState;
        return Column(
          children: [
            TextInput(
              label: 'Name',
              hint: 'Insert your full name',
              error: isError && state.fullName.isEmpty
                  ? 'Please fill this field correctly.'
                  : '',
            ),
            TextInput(
              label: 'Title',
              hint: 'Insert your current title or position',
              error: isError && state.title.isEmpty
                  ? 'Please fill this field correctly.'
                  : '',
            ),
            TextInput(
              label: 'Description',
              hint: 'Describe yourself here',
              maxLines: 4,
              error: isError && state.description.isEmpty
                  ? 'Please fill this field correctly.'
                  : '',
            ),
            _buildBirthDateInput(context),
            TextInput(
              label: 'Country',
              hint: 'Insert your current country',
              error: isError && state.country.isEmpty
                  ? 'Please fill this field correctly.'
                  : '',
            ),
            TextInput(
              label: 'City',
              hint: 'Insert your current city',
              error: isError && state.city.isEmpty
                  ? 'Please fill this field correctly.'
                  : '',
            ),
            TextInput(
              label: 'Email',
              hint: 'Insert your email',
              error: isError && state.email.isEmpty
                  ? 'Please fill this field correctly.'
                  : '',
            ),
            TextInput(
              label: 'Phone',
              hint: 'Insert your phone number',
              error: isError && state.phone.isEmpty
                  ? 'Please fill this field correctly.'
                  : '',
            ),
          ],
        );
      },
    );
  }

  Widget _buildBirthDateInput(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final result = await showDatePicker(
          context: context,
          firstDate: DateTime(1960),
          lastDate: DateTime.now(),
        );
        if (result is DateTime) {
          _bloc.add(ProfileInputEvent.setBirthDate(value: result));
        }
      },
      child: BlocSelector<ProfileInputBloc, ProfileInputState, String>(
        selector: (state) => state.birthDate,
        builder: (context, state) {
          return TextInput(
            label: 'Birth Date',
            hint: 'Insert your current title or position',
            isEnabled: false,
            value: state,
          );
        },
      ),
    );
  }
}
