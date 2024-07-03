import 'package:flutter/material.dart';
import 'package:profile_website/models/blog_article.dart';

class BlogArticleInfo extends StatelessWidget {
  const BlogArticleInfo({
    super.key,
    required this.blogArticle,
  });

  final BlogArticle blogArticle;

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
              blogArticle.title,
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
              blogArticle.description,
              style: const TextStyle(
                color: Color(0xff9ca4ca),
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
