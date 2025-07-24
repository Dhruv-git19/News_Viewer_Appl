import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/news_article.dart';


class NewsApiService {
  final String apiKey ='7601dc587a224b07a3d9c289bc9fd9e7'; 
  final String baseUrl = 'https://newsapi.org/v2';

  Future<List<NewsArticle>> getTopHeadlines({String category = 'general'}) async {
    final url = '$baseUrl/top-headlines?country=us&category=$category&apiKey=$apiKey';
    
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      
      final data = json.decode(response.body);
      final List<dynamic> articles = data['articles'];
        print('Status Code: ${response.statusCode}');
       print('Response Body: ${response.body}');
      
      return articles.map((json) => NewsArticle.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load top headlines: ${response.statusCode}');
    }
  }
}