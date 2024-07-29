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
    projectData = await APIService.getProjectData();
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
          const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 50,
                    right: 90,
                  ),
                child: SizedBox(
                  width: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Projects",
                          style: TextStyle(
                            fontSize: 98,
                            color: Colors.white,
                          )),
                      Text(
                          "Here are the lists of projects I've coded as an endeavor to solve problems around me, all of which helped me to step up as a better programmer every time.",
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 18,
                          ))
                    ],
                  ),
                ),
                )
            ],
          ),
          isProjectDataLoaded
              ? SingleChildScrollView(
                  child: SizedBox(
                    width: 1200,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 50, bottom: 50
                      ),
                      child: Column(
                        children: [
                          for (Project project in projectData)
                            ProjectCard(project: project),
                        ],
                      ),
                    ),
                  ),
                )
              : const CircularProgressIndicator(),
        ],
      ),
    );
  }
}
