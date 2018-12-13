import 'package:financial_news/data/data.dart';
import 'package:financial_news/model/models.dart';
import 'package:financial_news/ui/home/home_header.dart';
import 'package:financial_news/ui/home/home_news.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<News> news = listNews;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30.0),
            HomeHeader(),
            Expanded(
                child: ListView.builder(
              itemCount: news.length,
              itemBuilder: (BuildContext context, int index) {
                return HomeNews(news: news[index]);
              },
            ))
          ],
        ),
      ),
    );
  }
}
