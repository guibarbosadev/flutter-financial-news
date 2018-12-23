import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

class News {
  String category;
  String headline;
  int readMinutes;
  List<NewsImage> images;

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
      default:
        response = Colors.black;
    }

    return response;
  }

  News({this.category, this.headline, this.readMinutes, this.images});
}

class NewsImage {
  final String imagePath;
  final String type;

  NewsImage({@required this.imagePath, @required this.type});
}
