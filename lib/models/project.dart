class Project {
  String name, description, githubURL, demoURL;
  DateTime lastUpdated;
  String language;

  Project({
    required this.name,
    required this.description,
    required this.githubURL,
    required this.demoURL,
    required this.lastUpdated,
    required this.language,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      name: json['repoName'],
      description: json['description'] ?? "",
      githubURL: json['repoUrl'],
      demoURL: "",
      lastUpdated: DateTime.parse(json['updatedAt']),
      language: json['language'] ?? "",
    );
  }
}
