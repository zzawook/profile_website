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
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 50,
                    right: 90,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Projects",
                          style: TextStyle(
                            fontSize: 98,
                            color: Colors.white,
                          )),
                      Text(
                          "Here are the lists of projects I've coded personally to solve problems around me. Sometimes it did solve the problem, and sometimes it didn't went so far. But at least each of them helped me to step up as a better programmer every time.",
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 18,
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
          isProjectDataLoaded
              ? SingleChildScrollView(
                  child: SizedBox(
                    width: 1200,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
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
          const Expanded(
            child: SizedBox(),
          )
        ],
      ),
    );
  }
}
