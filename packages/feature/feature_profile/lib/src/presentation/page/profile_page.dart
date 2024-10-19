import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Feature Profile"),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
                Text('Full Name')
              ],
            ),
          ],
        ),
      ),
    );
  }

}