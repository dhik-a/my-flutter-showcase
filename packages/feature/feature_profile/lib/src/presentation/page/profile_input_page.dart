import 'package:auto_route/annotations.dart';
import 'package:feature_profile/src/presentation/widget/text_input.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfileInputPage extends StatefulWidget {
  const ProfileInputPage({super.key});

  @override
  State<ProfileInputPage> createState() => _ProfileInputPageState();
}

class _ProfileInputPageState extends State<ProfileInputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const TextInput(
                label: 'Name',
                hint: 'Insert your full name',
              ),
              const TextInput(
                label: 'Title',
                hint: 'Insert your current title or position',
              ),
              const TextInput(
                label: 'Description',
                hint: 'Describe yourself here',
                maxLines: 4,
              ),
              const TextInput(
                label: 'Country',
                hint: 'Insert your current country',
              ),
              const TextInput(
                label: 'City',
                hint: 'Insert your current city',
              ),
              const TextInput(
                label: 'Email',
                hint: 'Insert your email',
              ),
              const TextInput(
                label: 'Phone',
                hint: 'Insert your phone number',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
