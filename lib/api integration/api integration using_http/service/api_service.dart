import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/productModel.dart';

class NewsApiService {
  final String _apiKey = 'd0cb652bc3bd45808549aeb0653cc37f';
  final String _baseUrl = 'https://newsapi.org/v2';

  Future<NewsResponse> fetchNewsByKeywords(String keywords) async {
    final response = await http.get(
      Uri.parse('$_baseUrl/everything?q=$keywords&apiKey=$_apiKey'),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return NewsResponse.fromJson(data);
    } else {
      throw Exception('Failed to fetch news');
    }
  }
}
