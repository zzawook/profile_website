import 'package:flutter/material.dart';
import 'package:profile_website/models/project.dart';
import 'package:profile_website/screens/project_screen/widget/project_info.dart';
import 'package:profile_website/screens/project_screen/widget/redirect_button.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
      child: Row(
        children: [
          ProjectInfo(project: project),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RedirectButton(
                url: project.githubURL,
                text: "View code",
              ),
              const SizedBox(
                height: 10,
              ),
              RedirectButton(
                url: project.demoURL,
                text: "Open demo",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
