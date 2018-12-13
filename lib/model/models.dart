class News {
  String category;
  String headline;
  String readMinutes;
  List<NewsImages> images; 
}

class NewsImages {
  final String imagePath;
  final String type;

  NewsImages({this.imagePath, this.type});
}
