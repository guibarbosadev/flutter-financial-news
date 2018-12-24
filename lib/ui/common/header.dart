import 'package:flutter/material.dart';

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
                    .copyWith(fontSize: 10.0, color: Color(0XFFb8bfc9)),
              ),
              Text(
                'Financial News',
                style: Theme.of(context).textTheme.display1.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              )
            ]),
          ),
          showTopicButton == true ? TopicButton() : Container()
        ],
      ),
    );
  }
}

class TopicButton extends StatelessWidget {
  const TopicButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      highlightColor: Colors.white,
      splashColor: Colors.white,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border(
              bottom:
                  BorderSide(color: Theme.of(context).primaryColor, width: 1.0),
              left:
                  BorderSide(color: Theme.of(context).primaryColor, width: 1.0),
              right:
                  BorderSide(color: Theme.of(context).primaryColor, width: 1.0),
              top:
                  BorderSide(color: Theme.of(context).primaryColor, width: 1.0),
            )),
        child: Text(
          'Topics',
          style: Theme.of(context).textTheme.body1.copyWith(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
