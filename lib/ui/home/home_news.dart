import 'package:flutter/material.dart';

class HomeNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 40.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Business'),
              Text('4 min read')
            ],
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 20.0, bottom: 20.0),)
      ],
    );
  }
}
