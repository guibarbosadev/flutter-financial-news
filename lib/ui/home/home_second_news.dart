import 'package:financial_news/model/models.dart';
import 'package:flutter/material.dart';

class HomeSecondNews extends StatelessWidget {
  final News news;

  HomeSecondNews({@required this.news});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(news.category,
            style: Theme.of(context).textTheme.body1.copyWith(
              color: news.getTagColor()
            ),),
            Text('${news.readMinutes} min read')
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.0, bottom: 8.0),
          child: Text(
            news.headline,
            style: Theme.of(context)
                .textTheme
                .headline
                .copyWith(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
        ),
        news.images.length > 0
            ? ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  news.images
                      .firstWhere((i) => i.type == 'landscape')
                      .imagePath,
                  height: 150.0,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              )
            : Container(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
          child: Container(
            height: 3.0,
            color: Color(0xFFEDEDED),
          ),
        )
      ],
    );
  }
}
