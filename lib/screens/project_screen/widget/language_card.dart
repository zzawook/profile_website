import 'package:flutter/material.dart';

class LanguageCard extends StatelessWidget {
  const LanguageCard({
    super.key,
    required this.language,
  });

  final String language;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xff395293),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 2,
      ),
      margin: const EdgeInsets.only(right: 5),
      child: Text(
        language,
        style: const TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}
