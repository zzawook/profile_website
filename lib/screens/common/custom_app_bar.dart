import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:profile_website/screens/common/route_button.dart';

class CustomAppBar extends StatelessWidget {
  final String currentLocation;

  const CustomAppBar({
    super.key,
    required this.currentLocation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff23283d),
        border: Border(
          right: BorderSide(
            width: 1,
            color: Color(0xff1b1e2f),
          ),
        ),
      ),
      width: 80,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              RouteButton(
                routeName: 'home',
                routeLocation: "/",
                currentLocation: currentLocation,
                tooltip: "Home",
                icon: Icons.home,
              ),
              RouteButton(
                routeName: 'resume',
                routeLocation: "/resume",
                currentLocation: currentLocation,
                tooltip: "Resume",
                icon: Icons.article_outlined,
              ),
              RouteButton(
                routeName: 'project',
                routeLocation: "/project",
                currentLocation: currentLocation,
                tooltip: "Projects",
                icon: Icons.code_outlined,
              ),
              RouteButton(
                routeName: 'blog',
                routeLocation: "/blog",
                currentLocation: currentLocation,
                tooltip: "Blog",
                icon: Icons.chat_outlined,
              ),
            ],
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {
                    context.goNamed("admin");
                  },
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xff23283d)),
                    foregroundColor: WidgetStatePropertyAll(Color(0xff23283d)),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide.none,
                      ),
                    ),
                  ),
                  child: const SizedBox(
                    width: 80,
                    height: 80,
                  ))
            ],
          ))
        ],
      ),
    );
  }
}

