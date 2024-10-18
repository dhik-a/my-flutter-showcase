import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final String title;

  const MyApp({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Container(),
    );
  }
  
}