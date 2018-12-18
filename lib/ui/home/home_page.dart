import 'package:financial_news/data/data.dart';
import 'package:financial_news/model/models.dart';
import 'package:financial_news/ui/home/home_header.dart';
import 'package:financial_news/ui/home/home_first_news.dart';
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
    print("${listNews.length}");
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 30.0),
              HomeHeader(),
              Expanded(
                child: ListView.builder(
                  itemCount: news.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      print("caindo aqui ${news.length}");
                      return HomeFirstNews(news: news[index]);
                    } else {
                      print("vindo pra ca");
                      return HomeNews(news: news[index]);
                    }
                  },
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.folder_open),
              title: Text('My news'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Financial News'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              title: Text('Saved'),
            )
          ],
        ));
  }
}
