import 'dart:convert';


import 'package:apinwes_demo/categories_new_model.dart';
import 'package:apinwes_demo/news_channel_headlines_model.dart';
import 'package:http/http.dart' as http;


class NewsRepository {


  Future<CategoriesNewsModel> fetchNewsCategoires(String category) async {
    String newsUrl =
        'https://newsapi.org/v2/everything?q=$category&apiKey=8a5ec37e26f845dcb4c2b78463734448';
    final response = await http.get(Uri.parse(newsUrl));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      return CategoriesNewsModel.fromJson(body);
    } else {
      throw Exception('Error');
    }
  }

  Future<NewsChannelsHeadlinesModel> fetchNewsChannelHeadlinesApi(String newsChannel) async {
    String newsUrl = 'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=5328cbafc2954fa0a9612bd9d266c39e';
    print(newsUrl);
    final response = await http.get(Uri.parse(newsUrl));
    print(response.statusCode.toString());
    print(response);
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return NewsChannelsHeadlinesModel.fromJson(body);
    } else {
      throw Exception('Error');
    }
  }
}