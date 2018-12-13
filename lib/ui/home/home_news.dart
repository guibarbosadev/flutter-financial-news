import 'package:financial_news/model/models.dart';
import 'package:flutter/material.dart';

class HomeNews extends StatelessWidget {
  final News news;

  HomeNews({@required this.news});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 40.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(news.category),
              Text('${news.readMinutes} min read')
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5.0, bottom: 8.0),
          child: Text(news.headline),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            news.images.firstWhere((i) => i.type == 'landscape').imagePath,
            height: 150.0,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
        )
      ],
    );
  }
}
