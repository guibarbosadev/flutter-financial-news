import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Monday, november 26'.toUpperCase(),
            style: Theme.of(context).textTheme.subtitle,),
            Text('Financial News',
                style: Theme.of(context)
                    .textTheme
                    .display1
                    .copyWith(color: Theme.of(context).primaryColor))
          ]),
        ),
        TopicButton(),
      ],
    );
  }
}

class TopicButton extends StatelessWidget {
  const TopicButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () {},
      borderSide: BorderSide(
        color: Theme.of(context).primaryColor,
      ),
      color: Colors.white,
      splashColor: Colors.white,
      highlightColor: Colors.white,
      highlightedBorderColor:
          Theme.of(context).primaryColor.withOpacity(0.5),
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Text(
        'Topics',
        style: Theme.of(context).textTheme.body1.copyWith(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
