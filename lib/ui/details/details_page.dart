import 'package:financial_news/model/models.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final News news;

  DetailsPage({@required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(news.getBackgroundImage()))),
                ),
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          news.subCategory.toUpperCase(),
                          style: Theme.of(context).textTheme.body1.copyWith(
                                color: news.getTagColor(),
                                fontSize: 11.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        Text(
                          '${news.readMinutes} min read',
                          style: Theme.of(context).textTheme.body1.copyWith(
                              color: Color(0XFFb8bfc9), fontSize: 11.0),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        news.headline,
                        style: Theme.of(context).textTheme.headline.copyWith(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w900,
                            ),
                      ),
                    ),
                    Text(news.detailsText,
                    style: Theme.of(context).textTheme.body1.copyWith(
                      color: Colors.grey[700]
                    ),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
