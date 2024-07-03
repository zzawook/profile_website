import 'package:flutter/material.dart';
import 'package:profile_website/models/blog_article.dart';
import 'package:profile_website/screens/blog_screen/widget/blog_article_card.dart';
import 'package:profile_website/services/api_services.dart';

class BlogContainer extends StatefulWidget {
  const BlogContainer({super.key});

  @override
  State<BlogContainer> createState() => _BlogContainerState();
}

class _BlogContainerState extends State<BlogContainer> {
  bool isProjectDataLoaded = false;
  late List<BlogArticle> blogArticleData;

  @override
  void initState() {
    super.initState();
    getProjectData();
  }

  void getProjectData() async {
    blogArticleData = await APIService.getDummyBlogArticleData();
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
                      Text("Blog",
                          style: TextStyle(
                            fontSize: 98,
                            color: Colors.white,
                          )),
                      Text(
                          "I write blogs to remember lessons from day to day programmings. You can steal a glance here.",
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
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          for (BlogArticle article in blogArticleData)
                            BlogArticleCard(blogArticle: article),
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
