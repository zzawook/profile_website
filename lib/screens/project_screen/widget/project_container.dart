import 'package:flutter/material.dart';
import 'package:profile_website/models/project.dart';
import 'package:profile_website/screens/project_screen/widget/project_card.dart';
import 'package:profile_website/services/api_services.dart';

class ProjectContainer extends StatefulWidget {
  const ProjectContainer({super.key});

  @override
  State<ProjectContainer> createState() => _ProjectContainerState();
}

class _ProjectContainerState extends State<ProjectContainer> {
  bool isProjectDataLoaded = false;
  late List<Project> projectData;

  @override
  void initState() {
    super.initState();
    getProjectData();
  }

  void getProjectData() async {
    projectData = await APIService.getDummyProjectData();
    setState(() {
      isProjectDataLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isProjectDataLoaded
              ? SizedBox(
                  width: 1200,
                  child: Column(
                    children: [
                      for (Project project in projectData)
                        ProjectCard(project: project),
                    ],
                  ),
                )
              : const CircularProgressIndicator()
        ],
      ),
    );
  }
}
