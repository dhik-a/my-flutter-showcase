import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Feature Showcase"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Wrap(
          spacing: 8,
          children: [
            FilledButton(
              onPressed: () => context.router.pushNamed(profileRouteName),
              child: const Text("Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
