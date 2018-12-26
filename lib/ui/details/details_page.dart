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
                  height: MediaQuery.of(context).size.height * 0.7,
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
                          'Ask a banner',
                          style: Theme.of(context).textTheme.body1.copyWith(
                                color: news.getTagColor(),
                                fontSize: 11.0,
                                fontWeight: FontWeight.w900,
                              ),
                        ),
                        Text(
                          '7 min read',
                          style: Theme.of(context).textTheme.body1.copyWith(
                              color: Color(0XFFb8bfc9), fontSize: 11.0),
                        )
                      ],
                    ),
                    Text(
                      'How not to fail at and improve the customer experience',
                      style: Theme.of(context).textTheme.headline.copyWith(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w900,
                          ),
                    ),
                    Text(news.detailsText)
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
