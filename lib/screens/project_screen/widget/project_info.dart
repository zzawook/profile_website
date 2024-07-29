import 'package:flutter/material.dart';
import 'package:profile_website/models/project.dart';
import 'package:profile_website/screens/project_screen/widget/language_card.dart';

class ProjectInfo extends StatelessWidget {
  const ProjectInfo({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.name,
              style: const TextStyle(
                color: Color(0xff9ca4ca),
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              project.description,
              style: const TextStyle(
                color: Color(0xff9ca4ca),
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LanguageCard(language: project.language),
                const SizedBox(width: 10),
                Text(
                  "Last updated on ${project.lastUpdated.month}/${project.lastUpdated.day}/${project.lastUpdated.year}",
                  style: const TextStyle(
                    color: Color(0xff9ca4ca),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 7,
            ),
          ],
        ),
      ),
    );
  }
}
