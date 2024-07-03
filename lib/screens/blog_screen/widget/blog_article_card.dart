import 'package:flutter/material.dart';
import 'package:profile_website/models/blog_article.dart';
import 'package:profile_website/screens/blog_screen/widget/blog_article_info.dart';
import 'package:profile_website/screens/blog_screen/widget/open_url_button.dart';

class BlogArticleCard extends StatelessWidget {
  const BlogArticleCard({
    super.key,
    required this.blogArticle,
  });

  final BlogArticle blogArticle;

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
          BlogArticleInfo(blogArticle: blogArticle),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              OpenUrlButton(
                url: blogArticle.url,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
