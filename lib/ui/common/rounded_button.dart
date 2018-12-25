import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  
  final Color buttonColor;
  final Color highlightColor;
  final Color splashColor;
  final Widget child;
  final EdgeInsets padding;
  final Color borderColor;

  RoundedButton({
    this.buttonColor,
    this.highlightColor,
    this.splashColor,
    this.borderColor,
    this.padding,
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      highlightColor: this.highlightColor ?? Colors.white,
      splashColor: this.splashColor ?? Colors.white,
      child: Container(
        padding: this.padding ?? EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
        decoration: BoxDecoration(
            color: this.buttonColor ?? Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            border: Border(
              bottom:
                  BorderSide(color: this.borderColor ?? Theme.of(context).primaryColor, width: 1.0),
              left:
                  BorderSide(color: this.borderColor ?? Theme.of(context).primaryColor, width: 1.0),
              right:
                  BorderSide(color: this.borderColor ?? Theme.of(context).primaryColor, width: 1.0),
              top:
                  BorderSide(color: this.borderColor ?? Theme.of(context).primaryColor, width: 1.0),
            )),
        child: this.child,
      ),
    );
  }
}
