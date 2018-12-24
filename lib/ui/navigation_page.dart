import 'package:financial_news/ui/common/header.dart';
import 'package:financial_news/ui/financial_news/financial_news_screen.dart';
import 'package:financial_news/ui/home/home_screen.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  @override
  State createState() {
    return _NavigationPageState();
  }
}

class _NavigationPageState extends State<NavigationPage> {
  int _activePageIndex;

  @override
  void initState() {
    _activePageIndex = 0;
    super.initState();
  }

  Widget getCurrentPage() {
    Widget pageToReturn;

    switch (_activePageIndex) {
      case 0:
        pageToReturn = HomeScreen();
        break;
      case 1:
        pageToReturn = FinancialNewsScreen();
        break;
      default:
        pageToReturn = HomeScreen();
        break;
    }

    return pageToReturn;
  }

  updateCurrentPageIndex(int index) {
    setState(() {
      _activePageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(children: <Widget>[
          SizedBox(height: 30.0),
          Header(showTopicButton: _activePageIndex == 0 ? true : false),
          Expanded(
            child: getCurrentPage(),
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _activePageIndex,
        onTap: updateCurrentPageIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.folder_open),
              title: Text(
                'My news',
                style: Theme.of(context).textTheme.body1.copyWith(
                      fontSize: 10.0,
                      color: _activePageIndex == 0
                          ? Theme.of(context).primaryColor
                          : Colors.grey[500],
                    ),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text(
                'Financial News',
                style: Theme.of(context).textTheme.body1.copyWith(
                      fontSize: 10.0,
                      color: _activePageIndex == 1
                          ? Theme.of(context).primaryColor
                          : Colors.grey[500],
                    ),
              )),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search',
                style: Theme.of(context).textTheme.body1.copyWith(
                      fontSize: 10.0,
                      color: _activePageIndex == 2
                          ? Theme.of(context).primaryColor
                          : Colors.grey[500],
                    )),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              title: Text(
                'Saved',
                style: Theme.of(context).textTheme.body1.copyWith(
                    fontSize: 10.0,
                    color: _activePageIndex == 3
                        ? Theme.of(context).primaryColor
                        : Colors.grey[500]),
              ))
        ],
      ),
    );
  }
}
