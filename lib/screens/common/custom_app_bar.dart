import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  final String currentLocation;

  const CustomAppBar({
    super.key,
    required this.currentLocation,
  });

  void onHomeScreenPress(BuildContext context) {
    context.goNamed('home');
  }

  void onProjectScreenPress(BuildContext context) {
    context.goNamed('project');
  }

  void onResumeScreenPress(BuildContext context) {
    context.goNamed("resume");
  }

  void onBlogScreenPress(BuildContext context) {
    context.goNamed("blog");
  }

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
              IconButton(
                onPressed: () {
                  context.goNamed('home');
                },
                tooltip: "Home",
                icon: Icon(
                  Icons.home,
                  color: currentLocation == '/'
                      ? const Color(0xff9ca4ca)
                      : const Color(0xff3d496b),
                  size: 40,
                ),
              ),
              IconButton(
                onPressed: () {
                  context.goNamed('resume');
                },
                tooltip: "Resume",
                icon: Icon(
                  Icons.article_outlined,
                  color: currentLocation == '/resume'
                      ? const Color(0xff9ca4ca)
                      : const Color(0xff3d496b),
                  size: 40,
                ),
              ),
              IconButton(
                onPressed: () {
                  context.goNamed("project");
                },
                tooltip: "Projects",
                icon: Icon(
                  Icons.code_rounded,
                  color: currentLocation == '/project'
                      ? const Color(0xff9ca4ca)
                      : const Color(0xff3d496b),
                  size: 40,
                ),
              ),
              IconButton(
                onPressed: () {
                  context.goNamed("blog");
                },
                tooltip: "Blog",
                icon: Icon(
                  Icons.chat_outlined,
                  color: currentLocation == '/blog'
                      ? const Color(0xff9ca4ca)
                      : const Color(0xff3d496b),
                  size: 40,
                ),
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
