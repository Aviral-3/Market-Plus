import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import '../models/news.dart';

class NewsService {
  Future<List<News>> fetchNews() async {
    final response = await http.get(
      Uri.parse('https://yahoo-finance15.p.rapidapi.com/api/v1/markets/search'), //  API URL
      headers: {
        'x-rapidapi-key': dotenv.get('15bc621938mshf3f04d07f80aba9p126baajsnab75feb5d16a'),
        'x-rapidapi-host': 'yahoo-finance15.p.rapidapi.com', //  API host
      },
    );

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => News.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }
}
