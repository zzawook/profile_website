import 'package:flutter/material.dart';
import 'dart:async';

class FlashingTextCursor extends StatefulWidget {
  const FlashingTextCursor({super.key});

  @override
  State<FlashingTextCursor> createState() => _FlashingTextCursorState();
}

class _FlashingTextCursorState extends State<FlashingTextCursor> {
  bool isCursorVisible = true;
  late Timer timer;

  @override
  initState() {
    super.initState();
    timer =
        Timer.periodic(const Duration(milliseconds: 500), reverseCursorVisible);
  }

  void reverseCursorVisible(Timer timer) {
    setState(() {
      isCursorVisible = !isCursorVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffdde3e9),
      ),
      width: isCursorVisible ? 5 : 0,
      height: 100,
    );
  }
}
