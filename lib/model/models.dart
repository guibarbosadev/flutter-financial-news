import 'package:meta/meta.dart';

class News {
  String category;
  String headline;
  int readMinutes;
  List<NewsImage> images;

  News({this.category, this.headline, this.readMinutes, this.images});
}

class NewsImage {
  final String imagePath;
  final String type;

  NewsImage({@required this.imagePath, @required this.type});
}
