import 'package:flutter/material.dart';

import 'inputPage.dart';

void main() => runApp(BMICalculator());

//0xFF1D1F33
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090D20),
        scaffoldBackgroundColor: Color(0xFF090D20),
      ),
      home: InputPage(),
    );
  }
}
