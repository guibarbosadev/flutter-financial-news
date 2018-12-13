import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Monday, november 26'.toUpperCase()),
                  Text('Financial News')
                ]),
          ),
          OutlineButton(
            onPressed: () {},
            child: Text('Topics'),
          )
        ],
      ),
    );
  }
}
