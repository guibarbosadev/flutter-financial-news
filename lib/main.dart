import 'package:financial_news/ui/navigation_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: NavigationPage()
    ),
    theme: ThemeData.fallback().copyWith(
      primaryColor: Color(0XFF0E4A8F)
    ),
  ));
}