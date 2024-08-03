import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:profile_website/models/blog_article.dart';
import 'package:profile_website/models/project.dart';

class APIService {
  static const rootDomain = "https://kjaehyeok21.dev/api/v1";
  static const testRootDomain = "http://localhost:8080/api/v1";

  static Future<List<Project>> getProjectData() async {
    const url = "$rootDomain/repos";
    Response response = await get(Uri.parse(url));

    if (response.statusCode == 200) {
      List<Project> projectData = [];
      final body = jsonDecode(response.body);
      for (var project in body) {
        projectData.add(Project.fromJson(project));
      }
      projectData.sort((a, b) => b.lastUpdated.compareTo(a.lastUpdated));
      return projectData;
    }
    return [];
  }

  static Future<List<BlogArticle>> getBlogArticleData() async {
    String url = "$rootDomain/blogPost";
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      List<BlogArticle> blogArticleData = [];
      final body = jsonDecode(utf8.decode(response.bodyBytes));
      for (var blog in body) {
        blogArticleData.add(BlogArticle.fromJson(blog));
      }
      blogArticleData.sort((a, b) => b.published.compareTo(a.published));
      return blogArticleData;
    }
    return [];
  }

  static Future<String> getResumeURL() async {
    String url = "$rootDomain/resume";
    Response response = await get(Uri.parse(url));

    if (response.statusCode == 200) {
      return response.body.replaceAll('"', '');
    }
    return "";
  }

  static Future<bool> authenticateUser(String password) async {
    String url = "$rootDomain/auth";
    Response response = await post(Uri.parse(url), body: password);

    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }

  static Future<String> uploadResume(String? password, Uint8List? resume) async {
    String url = "$rootDomain/resume";
    MultipartRequest request = MultipartRequest(
      'POST',
      Uri.parse(url),
    );
    request.files.add(
      MultipartFile.fromBytes(
        'resume',
        resume!,
        filename: 'resume.pdf',
      ),
    );
    request.fields['password'] = password!;

    StreamedResponse streamedResponse = await request.send();
    Response response = await Response.fromStream(streamedResponse);

    if (response.statusCode == 200) {
      return response.body.replaceAll('"', '');
    } else if (response.statusCode == 401) {
      return "Failed authentication";
    }
    return "Resume Upload Failed";
  }
}
