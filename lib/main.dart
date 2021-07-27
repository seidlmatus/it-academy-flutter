import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled1/reusable_card.dart';

import 'icon_content.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BMICalculator();
  }
}

class _BMICalculator extends State<StatefulWidget> {
  int height = 100;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI Calculator'.toUpperCase())),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    contentChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    contentChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
            ReusableCard(
                contentChild: Column(
              children: [
                Text(
                  'HEIGHT',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'cm',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.red,
                      thumbColor: Colors.yellow,
                      thumbShape: RoundSliderThumbShape(),
                      overlayShape: RoundSliderOverlayShape()),
                  child: Slider(
                    value: height.toDouble(),
                    min: 100,
                    max: 220,
                    inactiveColor: Colors.pink,
                    onChanged: (value) =>
                        setState(() => height = value.round()),
                  ),
                ),
              ],
            )),
            Text('03'),
            Text('04'),
          ],
        ),
      ),
    );
  }
}
