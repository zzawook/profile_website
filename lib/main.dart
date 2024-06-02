import 'package:flutter/material.dart';
import 'package:profile_website/screens/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "kjaehyeok21's website",
      theme: ThemeData(
      ),
      home: const HomeScreen(),
    );
  }
}
