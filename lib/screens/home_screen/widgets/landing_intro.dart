import 'package:flutter/material.dart';
import 'package:profile_website/screens/home_screen/widgets/flashing_text_cursor.dart';

class LandingIntro extends StatelessWidget {
  const LandingIntro({super.key});

  final String introMessage =
      "Hi, I’m Jae Hyeok Kim , and I’m a full-time computer science year 2 student in National University of Singapore with 4+ years of programming. I’m passionate in creating values by engineering services that help people, and personally I’ve programmed projects that solved real-world problems around me. \n\nI’ve been actively exploring various domains of web services as a student developer, and my latest interest is building and operating large-scale system that handles high traffic and data. You can find out more about my programming journey at project and resume tab on the left!  \n\n Hope you enjoy my place :)";

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 1500,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Kim ",
                      style: TextStyle(
                        color: Color(0xffa682db),
                        fontFamily: "Jetbrains Mono",
                        fontSize: 100,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      "Jae Hyeok",
                      style: TextStyle(
                        color: Color(0xffdde3e9),
                        fontFamily: "Jetbrains Mono",
                        fontSize: 100,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    FlashingTextCursor(),
                  ],
                ),
                Text(
                  introMessage,
                  style: const TextStyle(
                    color: Color(0xff9ca4ca),
                    fontSize: 23,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
