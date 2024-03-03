import 'package:flutter/material.dart';
import 'package:marketplus/models/news.dart';

class NewsCard extends StatelessWidget {
  final News news;

  const NewsCard({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              news.title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(news.source),
            const SizedBox(height: 10),
            Text(news.pubDate),
            const SizedBox(height: 10),
            news.imageUrl.isNotEmpty
                ? Image.network(news.imageUrl)
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
