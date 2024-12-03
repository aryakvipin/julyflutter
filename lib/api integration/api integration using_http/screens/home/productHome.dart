import 'package:flutter/material.dart';

import '../../model/productModel.dart';
import '../../service/api_service.dart';
void main(){
  runApp(MaterialApp(home:NewsListScreen() ,));
}

class NewsListScreen extends StatefulWidget {
  @override
  _NewsListScreenState createState() => _NewsListScreenState();
}

class _NewsListScreenState extends State<NewsListScreen> {
  late Future<NewsResponse> _newsFuture;

  @override
  void initState() {
    super.initState();
    final apiService = NewsApiService();
    _newsFuture = apiService.fetchNewsByKeywords('technology');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('News Articles')),
      body: FutureBuilder<NewsResponse>(
        future: _newsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.articles.isEmpty) {
            return Center(child: Text('No articles found.'));
          }

          final articles = snapshot.data!.articles;
          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              final article = articles[index];
              return Card(
                margin: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: article.urlToImage != null
                      ? Image.network(article.urlToImage!, width: 100, fit: BoxFit.cover)
                      : null,
                  title: Text(article.title),
                  subtitle: Text(article.description ?? 'No description'),
                  onTap: () {
                    // Handle tap (e.g., navigate to detail page)
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
