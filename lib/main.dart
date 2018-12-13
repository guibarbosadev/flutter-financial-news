import 'package:financial_news/ui/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData.fallback().copyWith(
      accentColor: Color(0XFF2f5093),
    ),
  ));
}