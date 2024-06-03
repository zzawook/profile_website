import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  void onHomeScreenPress() {}

  void onProjectScreenPress() {}

  void onResumeScreenPress() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff23283d),
        border: Border(
          right: BorderSide(
            width: 0.5,
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
          IconButton(
            onPressed: onHomeScreenPress,
            tooltip: "Home",
            icon: const Icon(
              Icons.home,
              color: Color(0xff9ca4ca),
              size: 40,
            ),
          ),
          IconButton(
            onPressed: onProjectScreenPress,
            tooltip: "Resume",
            icon: const Icon(
              Icons.article_outlined,
              color: Color(0xff9ca4ca),
              size: 40,
            ),
          ),
          IconButton(
            onPressed: onResumeScreenPress,
            tooltip: "Projects",
            icon: const Icon(
              Icons.code_rounded,
              color: Color(0xff9ca4ca),
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
