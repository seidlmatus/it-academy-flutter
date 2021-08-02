import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:untitled1/reusable_card.dart';

import 'icon_content.dart';

void main() {
  runApp(BMICalculator());
}

enum Gender { male, female }

class BMICalculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BMICalculator();
  }
}

class _BMICalculator extends State<StatefulWidget> {
  int height = 180;
  int age = 35;
  Gender? selectedGender;

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
                    onPress: () => setState(() => selectedGender = Gender.male),
                    color: selectedGender == Gender.male
                        ? Colors.blue.shade800
                        : Colors.blue,
                    contentChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () =>
                        setState(() => selectedGender = Gender.female),
                    color: selectedGender == Gender.female
                        ? Colors.blue.shade800
                        : Colors.blue,
                    contentChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
            ReusableCard(
              onPress: () => {},
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
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    contentChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Text(
                          '68',
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                              icon: Icons.remove,
                              onPress: () => {},
                            ),
                            SizedBox(width: 10),
                            RoundedIconButton(
                              icon: Icons.add,
                              onPress: () => {},
                            )
                          ],
                        )
                      ],
                    ),
                    onPress: () {
                      print("click");
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    contentChild: Column(
                      children: [
                        Text(
                          'age'.toUpperCase(),
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        NumberPicker(
                          minValue: 10,
                          maxValue: 80,
                          value: age,
                          onChanged: (value) =>
                              setState(() => age = value),
                        )
                      ],
                    ),
                    onPress: () {
                      print("click");
                    },
                  ),
                ),
              ],
            ),
            Text('04'),
          ],
        ),
      ),
    );
  }
}

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPress;

  const RoundedIconButton({
    Key? key,
    required this.icon,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: Icon(icon),
      fillColor: Colors.red,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
    );
  }
}
