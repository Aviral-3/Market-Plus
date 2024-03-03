import 'package:flutter/material.dart';
import 'package:marketplus/models/news.dart';
import 'package:marketplus/services/news_service.dart';
import 'package:marketplus/views/widgets/news_card.dart';


class NewsListScreen extends StatelessWidget {
  final NewsService newsService = NewsService();

  NewsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Finance News'),
      ),
      body: FutureBuilder<List<News>>(
        future: newsService.fetchNews(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return NewsCard(news: snapshot.data![index]);
              },
            );
          } else {
            return const Center(child: Text('No news found'));
          }
        },
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'widgets/news_card.dart';
// import '../services/news_service.dart';
// import '../models/news.dart';
// import 'package:marketplus/models/news.dart';
// class NewsListScreen extends StatelessWidget {
//   final NewsService newsService = NewsService();
//
//   NewsListScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Finance News'),
//       ),
//       body: FutureBuilder<List<News>>(
//         future: newsService.fetchNews(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text("Error: ${snapshot.error}"));
//           } else if (snapshot.hasData) {
//             return ListView.builder(
//               itemCount: snapshot.data!.length,
//               itemBuilder: (context, index) {
//                 return NewsCard(news: snapshot.data![index]);
//               },
//             );
//           } else {
//             return Center(child: Text('No news found'));
//           }
//         },
//       ),
//     );
//   }
// }
