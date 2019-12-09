import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'appCard.dart';
import 'constants.dart';
import 'userGender.dart';

enum Genders { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInactiveCard;
  Color femaleCardColor = kInactiveCard;
  Genders selectedGender = Genders.male;

  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: AppCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Genders.male;
                        });
                      },
                      cardColor: selectedGender == Genders.male
                          ? kLightPurple
                          : kInactiveCard,
                      cardChild: UserGender(
                        gender: 'MALE',
                        genderIcon: MaterialCommunityIcons.human_male,
                      ),
                    ),
                  ),
                  Expanded(
                    child: AppCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Genders.female;
                        });
                      },
                      cardColor: selectedGender == Genders.female
                          ? kLightPurple
                          : kInactiveCard,
                      cardChild: UserGender(
                        gender: 'FEMALE',
                        genderIcon: MaterialCommunityIcons.human_female,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: AppCard(
                      cardColor: kLightPurple,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'HEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(height.toString(), style: kLargeTextStyle),
                              Text('cm', style: kLabelTextStyle),
                            ],
                          ),
                          Slider(
                            value: height.toDouble(),
                            min: 100,
                            max: 200,
                            inactiveColor: kDarkPurple,
                            activeColor: kRed,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: AppCard(
                      cardColor: kLightPurple,
                    ),
                  ),
                  Expanded(
                    child: AppCard(
                      cardColor: kLightPurple,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: kRed,
              width: double.infinity,
              height: kBottomConHeight,
              margin: EdgeInsets.only(top: 20.0),
            ),
          ],
        ));
  }
}
