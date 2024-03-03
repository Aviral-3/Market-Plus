class News {
  final String title;
  final String source;
  final String pubDate;
  final String imageUrl; 

  News({
    required this.title,
    required this.source,
    required this.pubDate,
    required this.imageUrl,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      title: json['title'],
      source: json['source'],
      pubDate: json['pubDate'],
      imageUrl: json['imageUrl'] ?? '',
    );
  }
}
