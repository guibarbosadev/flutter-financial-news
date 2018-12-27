import 'package:financial_news/data/data.dart';
import 'package:financial_news/model/models.dart';
import 'package:financial_news/ui/common/rounded_button.dart';
import 'package:financial_news/ui/details/details_page.dart';
import 'package:flutter/material.dart';

class FinancialNewsScreen extends StatefulWidget {
  @override
  FinancialNewsScreenState createState() {
    return new FinancialNewsScreenState();
  }
}

class FinancialNewsScreenState extends State<FinancialNewsScreen> {
  List<News> news = [];

  @override
  void initState() {
    for (int i = 0; i < listNews.length; i++) {
      if (listNews[i].isFinancialNews) {
        news.add(listNews[i]);
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(news.length, (int index) {
          return Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width - 125.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                              news[index].getBackgroundImage()))),
                ),
              ),
              Positioned(
                right: 25.0,
                top: 25.0,
                child: Icon(
                  Icons.bookmark_border,
                  color: Colors.white,
                ),
              ),
              Positioned(
                bottom: 10.0,
                left: 18.0,
                right: 18.0,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              news[index].category.toUpperCase(),
                              style: Theme.of(context).textTheme.body1.copyWith(
                                    color: news[index].getTagColor(),
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              '${news[index].readMinutes} min read',
                              style: Theme.of(context).textTheme.body1.copyWith(
                                  color: Color(0XFFb8bfc9), fontSize: 11.0),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          news[index].headline,
                          style: Theme.of(context).textTheme.headline.copyWith(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w900,
                              ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: RoundedButton(
                          buttonColor: news[index].getTagColor(),
                          borderColor: news[index].getTagColor(),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) {
                              return DetailsPage(news: news[index],);
                            }));
                          },
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 3.0),
                          child: Text(
                            'Read',
                            style: Theme.of(context).textTheme.body1.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0,
                                ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
