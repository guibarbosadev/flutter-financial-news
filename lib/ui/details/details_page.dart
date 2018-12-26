import 'package:financial_news/model/models.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final News news;

  DetailsPage({@required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                              child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(news.getBackgroundImage())
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: IconButton(
                  onPressed: () {Navigator.of(context).pop();},
                  icon: Icon(Icons.arrow_back),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
