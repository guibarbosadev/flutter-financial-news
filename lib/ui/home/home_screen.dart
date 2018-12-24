import 'package:financial_news/data/data.dart';
import 'package:financial_news/model/models.dart';
import 'package:financial_news/ui/home/home_second_news.dart';
import 'package:financial_news/ui/home/home_news.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<News> news = listNews;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: news.length,
      itemBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return HomeSecondNews(news: news[index]);
            break;
          case 1:
            return HomeSecondNews(news: news[index]);
            break;
          default:
            return HomeNews(news: news[index]);
            break;
        }
      },
    );
  }
}
