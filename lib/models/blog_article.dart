class BlogArticle {
  String title, description, url;

  BlogArticle({
    required this.title,
    required this.description,
    required this.url,
  });

  factory BlogArticle.fromJson(Map<String, dynamic> json) {
    return BlogArticle(
      title: json['title'],
      description: json['description'],
      url: json['url'],
    );
  }
}
