import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  AppCard({@required this.cardColor, this.cardChild, this.onPress});

  final Color cardColor;
  final Function onPress;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
