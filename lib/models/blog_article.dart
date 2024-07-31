class BlogArticle {
  String title, subtitle, url;
  DateTime lastUpdated;
  DateTime published;

  BlogArticle({
    required this.title,
    required this.subtitle,
    required this.url,
    required this.lastUpdated,
    required this.published,
  });

  factory BlogArticle.fromJson(Map<String, dynamic> json) {
    return BlogArticle(
      title: json['title'],
      subtitle: json['subtitle'],
      url: json['url'],
      lastUpdated: DateTime.parse(json['updatedAt']),
      published: DateTime.parse(json['createdAt']),
    );
  }
}
