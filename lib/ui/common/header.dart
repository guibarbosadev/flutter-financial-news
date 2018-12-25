import 'package:financial_news/ui/common/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Header extends StatelessWidget {
  final bool showTopicButton;

  Header({@required this.showTopicButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Monday, november 26'.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(fontSize: 12.0, color: Color(0XFFb8bfc9),
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(right: 40.0),
                child: AutoSizeText(
                  'Financial News',
                  maxLines: 1,
                  style: Theme.of(context).textTheme.display1.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontSize: 34.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              )
            ]),
          ),
          showTopicButton == true
              ? RoundedButton(
                  child: Text(
                    'Topics',
                    style: Theme.of(context).textTheme.body1.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
