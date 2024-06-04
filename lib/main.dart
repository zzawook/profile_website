import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:profile_website/screens/admin_screen/admin_screen.dart';
import 'package:profile_website/screens/blog_screen/blog_screen.dart';
import 'package:profile_website/screens/home_screen/home_screen.dart';
import 'package:profile_website/screens/project_screen/project_screen.dart';
import 'package:profile_website/screens/resume_screen/resume_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(initialLocation: "/", routes: [
        GoRoute(
          path: "/",
          name: "home",
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: "/resume",
          name: "resume",
          builder: (context, state) => const ResumeScreen(),
        ),
        GoRoute(
          path: "/project",
          name: "project",
          builder: (context, state) => const ProjectScreen(),
        ),
        GoRoute(
          path: "/blog",
          name: "blog",
          builder: (context, state) => const BlogScreen(),
        ),
        GoRoute(
          path: "/admin",
          name: "admin",
          builder: (context, state) => const AdminScreen(),
        ),
      ]),
      title: "kjaehyeok21's website",
    );
  }
}
