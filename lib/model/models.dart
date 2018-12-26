import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

class News {
  String category;
  String headline;
  int readMinutes;
  List<NewsImage> images;
  bool isFinancialNews;
  String detailsText;

  Color getTagColor() {
    Color response;
    switch (this.category.toLowerCase()) {
      case 'business':
        response = Color(0xFFb6da9f);
        break;
      case 'policy':
        response = Color(0xFFf9b279);
        break;
      case 'banking':
        response = Color(0xFF8dcfed);
        break;
      case 'ask':
        response = Color(0xFFe67683);
        break;
      case 'technology':
        response = Color(0XFF0E4A8F);
        break;
      default:
        response = Colors.black;
    }

    return response;
  }

  String getBackgroundImage() {
    return this.images.firstWhere((i) => i.type == 'portrait').imagePath;
  }

  News({@required this.category, @required this.headline, @required this.readMinutes, this.images, this.isFinancialNews : false, this.detailsText});
}

class NewsImage {
  final String imagePath;
  final String type;

  NewsImage({@required this.imagePath, @required this.type});
}
