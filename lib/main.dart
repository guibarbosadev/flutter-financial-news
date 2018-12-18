import 'package:financial_news/ui/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData.fallback().copyWith(
      primaryColor: Color(0XFF0E4A8F)
    ),
  ));
}