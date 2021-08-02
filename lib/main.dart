import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:untitled1/bottom_widget.dart';
import 'package:untitled1/input_page.dart';
import 'package:untitled1/result_page.dart';
import 'package:untitled1/reusable_card.dart';
import 'package:untitled1/rounded_icon_btn.dart';

import 'icon_content.dart';

void main() {
  runApp(BMICalculator());
}


class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
        ),
        home: InputPage(), );
  }
}

