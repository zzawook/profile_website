import 'package:http/http.dart';
import 'package:profile_website/models/blog_article.dart';
import 'package:profile_website/models/project.dart';

class APIService {
  static Future<List<Project>> getProjectData() async {
    const url = "";
    Response response = await get(Uri.parse(url));

    if (response.statusCode == 200) {}
    return [];
  }

  static Future<List<Project>> getDummyProjectData() async {
    Project dummy1 = Project(
      demoURL: 'https://google.com',
      githubURL: 'https://naver.com',
      name: 'AISCStudents',
      description: '',
      lastUpdated: DateTime(2021, 9, 1, 17, 30),
      languages: ['Python', 'Java'],
    );

    Project dummy2 = Project(
      demoURL: 'https://map.kakao.com',
      githubURL: 'https://endic.naver.com',
      name: 'Hospital Management System',
      description:
          'Hospital Management Software developed as a personal project. Developed using Python, with PyQt for user-interface, and SQLite for data storage; ~ Dec. 2020Hospital Management Software developed as a personal project. Developed using Python, with PyQt for user-interface, and SQLite for data storage; ~ Dec. 2020',
      lastUpdated: DateTime(2022, 10, 25, 10, 20),
      languages: ['Javascript', 'SQL'],
    );

    return [dummy1, dummy2];
  }

  static Future<List<BlogArticle>> getBlogArticleData() async {
    String url = "";
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {}
    return [];
  }

  static Future<List<BlogArticle>> getDummyBlogArticleData() async {
    BlogArticle dummy1 = BlogArticle(
      title: "title1",
      description:
          "description1description1description1description1description1description1description1description1description1",
      url: 'https://map.kakao.com',
    );

    BlogArticle dummy2 = BlogArticle(
      title: "title2",
      description:
          "description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2description2",
      url: 'https://endic.naver.com',
    );

    return [dummy1, dummy2];
  }
}
