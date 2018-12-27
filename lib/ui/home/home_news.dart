import 'package:financial_news/model/models.dart';
import 'package:flutter/material.dart';

class HomeNews extends StatelessWidget {
  final News news;

  HomeNews({@required this.news});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Flex(
          direction: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          news.images
                              .firstWhere((i) => i.type == 'landscape')
                              .imagePath,
                        ))),
              ),
            ),
            SizedBox(width: 15.0),
            Flexible(
                flex: 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          news.category.toUpperCase(),
                          style: Theme.of(context).textTheme.body1.copyWith(
                                    color: news.getTagColor(),
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.w900,
                                  )
                        ),
                        Text(
                          '${news.readMinutes} min read',
                          style: Theme.of(context).textTheme.body1.copyWith(
                              color: Color(0XFFb8bfc9), fontSize: 11.0),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      news.headline,
                      style: Theme.of(context).textTheme.headline.copyWith(
                          fontSize: 18.0, fontWeight: FontWeight.w900),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
