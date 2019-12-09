import 'package:flutter/material.dart';

import 'constants.dart';

class UserGender extends StatelessWidget {
  UserGender({@required this.gender, @required this.genderIcon});

  final String gender;
  final IconData genderIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 70.0,
        ),
        Text(
          gender,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
