class Project {
  String name, description, githubURL, demoURL;
  DateTime lastUpdated;
  List<String> languages;

  Project({
    required this.name,
    required this.description,
    required this.githubURL,
    required this.demoURL,
    required this.lastUpdated,
    required this.languages,
  });
}
