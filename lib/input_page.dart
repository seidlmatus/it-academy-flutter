import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:untitled1/calculator.dart';
import 'package:untitled1/icon_content.dart';
import 'package:untitled1/result_page.dart';
import 'package:untitled1/reusable_card.dart';
import 'package:untitled1/rounded_icon_btn.dart';

import 'bottom_widget.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InputPage();
  }
}

class _InputPage extends State<StatefulWidget> {
  int height = 180;
  int age = 35;
  int weight = 60;
  Gender? selectedGender;

  void increment() {
    setState(() {
      weight++;
    });
  }

  void decrement() {
    setState(() {
      weight--;
    });
  }

  void setAge(int value) {
    setState(() {
      age = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator'.toUpperCase())),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
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
          ),
          Expanded(
            child: ReusableCard(
              onPress: () => {},
              contentChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    contentChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Text(
                          weight.toString(),
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
                              onPress: decrement,
                            ),
                            SizedBox(width: 5),
                            RoundedIconButton(
                              icon: Icons.add,
                              onPress: increment,
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
                  flex: 2,
                  child: ReusableCard(
                    contentChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'age'.toUpperCase(),
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        Center(
                          child: NumberPicker(
                            minValue: 10,
                            maxValue: 80,
                            haptics: true,
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 20),
                            selectedTextStyle: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                            value: age,
                            axis: Axis.horizontal,
                            onChanged: setAge,
                          ),
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
          ),
          BottomWidget(
            text: 'calculate',
            onTap: () {
              Calculator calculator =
                  Calculator(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultPage(
                          calculator: calculator,
                        )),
              );
            },
          ),
        ],
      ),
    );
  }
}
